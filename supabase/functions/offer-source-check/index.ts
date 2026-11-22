const corsHeaders = {
  "Access-Control-Allow-Origin": "https://xcelent-85.github.io",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "GET, OPTIONS",
};

const SOURCES = [
  { id: "aldi-nord", name: "ALDI Nord", url: "https://www.aldi-nord.de/angebote.html", scope: "national" },
  { id: "lidl", name: "Lidl", url: "https://www.lidl.de/c/online-prospekte/s10005610", scope: "prospekt" },
  { id: "kaufland-neuruppin", name: "Kaufland Neuruppin", url: "https://filiale.kaufland.de/service/filiale/neuruppin-5580.html", scope: "filiale" },
  { id: "rewe-neuruppin", name: "REWE Neuruppin", url: "https://www.kaufda.de/Neuruppin/REWE/p-r4", scope: "regional" },
  { id: "netto-marken-discount", name: "Netto Marken-Discount", url: "https://www.netto-online.de/ueber-netto/Online-Prospekte.chtm/", scope: "filialauswahl-erforderlich" },
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
    .replace(/\s+/g, " ")
    .trim();
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
      return {
        id: source.id,
        name: source.name,
        scope: source.scope,
        sourceUrl: source.url,
        reachable: response.ok,
        status: response.status,
        title: html.match(/<title[^>]*>([\s\S]*?)<\/title>/i)?.[1]?.replace(/<[^>]+>/g, "").trim() ?? null,
        preview: text.slice(0, 1800),
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
        error: error instanceof Error ? error.message : "Abruf fehlgeschlagen",
        checkedAt: new Date().toISOString(),
      };
    }
  }));

  return new Response(JSON.stringify({
    ok: true,
    purpose: "Technische Erreichbarkeitspruefung; noch keine vollstaendige Angebotsauswertung.",
    results,
  }), {
    headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" },
  });
});
