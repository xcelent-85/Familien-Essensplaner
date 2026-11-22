const corsHeaders = {
  "Access-Control-Allow-Origin": "https://xcelent-85.github.io",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "GET, OPTIONS",
};

const SOURCES = [
  { id: "aldi-nord", name: "ALDI Nord", url: "https://www.aldi-nord.de/angebote.html", scope: "national" },
  { id: "lidl", name: "Lidl", url: "https://www.kaufda.de/Neuruppin/Lidl/p-r74", scope: "prospekt" },
  { id: "kaufland-neuruppin", name: "Kaufland Neuruppin", url: "https://filiale.kaufland.de/service/filiale/neuruppin-5580.html", scope: "filiale" },
  { id: "rewe-neuruppin", name: "REWE Neuruppin", url: "https://www.kaufda.de/Neuruppin/REWE/p-r101", scope: "regional" },
  { id: "netto-marken-discount", name: "Netto Marken-Discount Neuruppin", url: "https://www.kaufda.de/Neuruppin/Netto-Marken-Discount/p-r9", scope: "regional" },
  { id: "netto-scottie", name: "Netto mit Scottie", url: "https://netto.de/prospekte/", scope: "prospekt" },
];

function htmlToText(html: string): string {
  return html
    .replace(/<script[\s\S]*?<\/script>/gi, " ")
    .replace(/<style[\s\S]*?<\/style>/gi, " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/&nbsp;|&#160;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/&euro;/gi, "€")
    .replace(/&#39;|&apos;/gi, "'")
    .replace(/&quot;/gi, '"')
    .replace(/&#(\d+);/g, (_match, code) => String.fromCodePoint(Number(code)))
    .replace(/\s+/g, " ")
    .trim();
}

function getStructuredOffers(html: string) {
  const found: Array<Record<string, unknown>> = [];
  const scripts = html.matchAll(/<script[^>]*type=["']application\/ld\+json["'][^>]*>([\s\S]*?)<\/script>/gi);

  function visit(value: unknown) {
    if (Array.isArray(value)) {
      value.forEach(visit);
      return;
    }
    if (!value || typeof value !== "object") return;

    const item = value as Record<string, unknown>;
    const rawType = item["@type"];
    const types = Array.isArray(rawType) ? rawType : [rawType];
    if (types.includes("Product")) {
      const rawOffers = item.offers;
      const offers = Array.isArray(rawOffers) ? rawOffers : rawOffers ? [rawOffers] : [];
      for (const rawOffer of offers) {
        if (!rawOffer || typeof rawOffer !== "object") continue;
        const offer = rawOffer as Record<string, unknown>;
        const price = offer.price ?? (offer.priceSpecification as Record<string, unknown> | undefined)?.price;
        if (price === undefined || price === null || String(price).trim() === "") continue;
        found.push({
          productName: typeof item.name === "string" ? item.name.trim() : null,
          price: String(price),
          currency: typeof offer.priceCurrency === "string" ? offer.priceCurrency : "EUR",
          availability: typeof offer.availability === "string" ? offer.availability : null,
          productUrl: typeof offer.url === "string" ? offer.url : typeof item.url === "string" ? item.url : null,
          extractionMethod: "json_ld",
          confidence: "high",
        });
      }
    }
    Object.values(item).forEach(visit);
  }

  for (const match of scripts) {
    try {
      visit(JSON.parse(match[1]));
    } catch {
      // Ungültige oder unvollständige strukturierte Daten überspringen.
    }
  }
  return found.slice(0, 100);
}

function getPriceCandidates(text: string) {
  const candidates: Array<Record<string, unknown>> = [];
  const seen = new Set<string>();
  const pricePattern = /(?:€\s*\d{1,4}(?:[.,]\d{2})?|\d{1,4}(?:[.,]\d{2})?\s*€)/g;
  for (const match of text.matchAll(pricePattern)) {
    const index = match.index ?? 0;
    const start = Math.max(0, index - 95);
    const end = Math.min(text.length, index + match[0].length + 75);
    const snippet = text.slice(start, end).replace(/\s+/g, " ").trim();
    const key = match[0].replace(/\s/g, "") + "|" + snippet;
    if (seen.has(key)) continue;
    seen.add(key);
    candidates.push({
      priceText: match[0].trim(),
      context: snippet,
      extractionMethod: "price_context",
      confidence: "review_required",
    });
    if (candidates.length >= 100) break;
  }
  return candidates;
}

Deno.serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }

  if (req.method !== "GET") {
    return new Response(JSON.stringify({ error: "Nur GET ist erlaubt." }), {
      status: 405,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  const results = await Promise.all(SOURCES.map(async (source) => {
    try {
      const response = await fetch(source.url, {
        headers: {
          "User-Agent": "Mozilla/5.0 (compatible; Familien-Essensplaner/1.0; Angebotspruefung)",
          "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
        },
        signal: AbortSignal.timeout(15000),
      });
      const html = await response.text();
      const text = htmlToText(html);
      const structuredOffers = response.ok ? getStructuredOffers(html) : [];
      const priceCandidates = response.ok ? getPriceCandidates(text) : [];

      return {
        id: source.id,
        name: source.name,
        scope: source.scope,
        sourceUrl: source.url,
        reachable: response.ok,
        status: response.status,
        title: html.match(/<title[^>]*>([\s\S]*?)<\/title>/i)?.[1]?.replace(/<[^>]+>/g, "").trim() ?? null,
        structuredOffers,
        priceCandidates,
        structuredOfferCount: structuredOffers.length,
        priceCandidateCount: priceCandidates.length,
        preview: text.slice(0, 1200),
        checkedAt: new Date().toISOString(),
      };
    } catch (error) {
      return {
        id: source.id,
        name: source.name,
        scope: source.scope,
        sourceUrl: source.url,
        reachable: false,
        status: null,
        structuredOffers: [],
        priceCandidates: [],
        structuredOfferCount: 0,
        priceCandidateCount: 0,
        error: error instanceof Error ? error.message : "Abruf fehlgeschlagen",
        checkedAt: new Date().toISOString(),
      };
    }
  }));

  return new Response(JSON.stringify({
    ok: true,
    purpose: "Erste Angebotsdatenerkennung: strukturierte Produktangebote und Preis-Kontexttreffer. Preis-Kontexttreffer muessen vor Verwendung geprueft werden; dies ist noch keine vollstaendige Prospektauswertung.",
    results,
  }), {
    headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" },
  });
});