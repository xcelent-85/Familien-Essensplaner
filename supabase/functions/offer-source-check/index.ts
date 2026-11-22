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
    try { visit(JSON.parse(match[1])); } catch { /* Ungültige strukturierte Daten überspringen. */ }
  }
  return found.slice(0, 100);
}

function getOfferCandidates(text: string, storeAliases: string[]) {
  const offers: Array<Record<string, unknown>> = [];
  const seen = new Set<string>();

  for (const alias of storeAliases) {
    const escapedAlias = alias.replace(/[.*+?\x24{}()|[\]\\]/g, "\\$&");
    const pattern = new RegExp("([^€]{2,180}?)\\s+" + escapedAlias + "\\s+(?:ab\\s*)?(\\d{1,4}(?:[.,]\\d{2})?)\\s*€", "gi");
    for (const match of text.matchAll(pattern)) {
      const rawPrefix = match[1] ?? "";
      const previousPrice = rawPrefix.match(/(?:€\s*\d{1,4}(?:[.,]\d{2})?|\d{1,4}(?:[.,]\d{2})?\s*€)[^€]*$/);
      let name = previousPrice ? rawPrefix.slice(previousPrice.index! + previousPrice[0].length) : rawPrefix;
      name = name
        .replace(/^.*?Angebote aus dem [\s\S]*?Prospekt in [^ ]+\s+/i, "")
        .replace(/\s*\([^)]*(?:\/\s*(?:kg|g|l|ml)|\d+(?:[.,]\d+)?\s*(?:kg|g|l|ml)\s*=)[^)]*\)\s*$/i, " ")
        .replace(/\b\d+(?:[.,]\d+)?\s*(?:kg|g|l|ml)\s*=\s*[\d.,]+/gi, " ")
        .replace(/\b(?:UVP|statt|bisher|App:)\b/gi, " ")
        .replace(/\s+/g, " ")
        .replace(/^[^A-Za-zÄÖÜäöüß0-9]+/, "")
        .replace(/[^A-Za-zÄÖÜäöüß0-9)]+$/, "")
        .trim();
      if (name.length < 3) continue;
      name = name.slice(-100).trim();

      const amount = match[2];
      const key = (name + "|" + amount).toLowerCase();
      if (seen.has(key)) continue;
      seen.add(key);

      const nonFood = /(?:smartphone|samsung|matratze|rollo|leuchte|werkzeug|spielzeug|weihnachtsfigur|elektronik|haushaltsgerät|kleidung|schuhe)/i.test(name);
      const likelyFood = /(?:milch|käse|quark|joghurt|fleisch|rind|hähnchen|huhn|schwein|wurst|fisch|frutti|meeresfrüchte|obst|gemüse|mandarine|clementine|grapefruit|tomate|kartoffel|süßkartoffel|rote.?bete|rosenkohl|nudel|reis|mehl|brot|brötchen|margarine|butter|sauce|soße|eistee|getränk|cola|schokolade|pudding|erdnuss|mandel|cashew|nuss|cevapcici|rouladen|suppe|pizza|tiefkühl|tortellini|eier|öl|sahne|frischkäse|sultaninen|fuet|glühwein|müsli|protein.?bar|knuspertaler|sanella|torrone|gruyère|maronen)/i.test(name);

      offers.push({
        productName: name,
        price: amount.replace(",", "."),
        currency: "EUR",
        storeLabel: alias,
        productType: nonFood ? "non_food" : likelyFood ? "food" : "unknown",
        extractionMethod: "store_price_pattern",
        confidence: likelyFood && !nonFood ? "medium" : "review_required",
      });
      if (offers.length >= 100) return offers;
    }
  }
  return offers;
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
  if (req.method === "OPTIONS") return new Response("ok", { headers: corsHeaders });
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
      const pageText = htmlToText(html);
      const structuredOffers = response.ok ? getStructuredOffers(html) : [];
      const priceCandidates = response.ok ? getPriceCandidates(pageText) : [];
      const aliases = source.id === "lidl" ? ["Lidl"] : source.id === "rewe-neuruppin" ? ["REWE"] : source.id === "netto-marken-discount" ? ["Netto Marken-Discount"] : [];
      const offerCandidates = response.ok ? getOfferCandidates(pageText, aliases) : [];

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
        offerCandidates,
        offerCandidateCount: offerCandidates.length,
        foodOfferCount: offerCandidates.filter((offer) => offer.productType === "food").length,
        structuredOfferCount: structuredOffers.length,
        priceCandidateCount: priceCandidates.length,
        preview: pageText.slice(0, 1200),
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
        offerCandidates: [],
        offerCandidateCount: 0,
        foodOfferCount: 0,
        structuredOfferCount: 0,
        priceCandidateCount: 0,
        error: error instanceof Error ? error.message : "Abruf fehlgeschlagen",
        checkedAt: new Date().toISOString(),
      };
    }
  }));

  return new Response(JSON.stringify({
    ok: true,
    purpose: "Erste Angebotsdatenerkennung mit Produkt-/Preis-Kandidaten. Automatisch erkannte Lebensmittel sind vor der Einkaufsplanung stichprobenartig zu pruefen; dies ist noch keine vollstaendige Prospektauswertung.",
    results,
  }), {
    headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" },
  });
});
