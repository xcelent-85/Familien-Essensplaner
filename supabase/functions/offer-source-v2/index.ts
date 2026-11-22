const corsHeaders = {
  "Access-Control-Allow-Origin": "https://xcelent-85.github.io",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
};

type StoreSource = {
  id: string;
  name: string;
  url: string;
  scope: "national" | "local_store" | "regional_prospect";
  priceMode: "first" | "last";
  priceWithoutCurrency?: boolean;
  retailerId?: string;
  priority?: number;
};

const SOURCES: StoreSource[] = [
  {
    id: "aldi-nord",
    name: "ALDI Nord",
    url: "https://www.aldi-nord.de/angebote.html",
    scope: "national",
    priceMode: "first",
  },
  {
    id: "lidl",
    name: "Lidl Neuruppin",
    url: "https://www.kaufda.de/Neuruppin/Lidl/p-r74",
    scope: "regional_prospect",
    priceMode: "first",
  },
  {
    id: "kaufland-neuruppin",
    name: "Kaufland Neuruppin",
    url: "https://filiale.kaufland.de/service/filiale/neuruppin-5580.html",
    scope: "local_store",
    priceMode: "first",
  },
  {
    id: "rewe-neuruppin",
    name: "REWE Neuruppin",
    url: "https://www.rewe.de/marktseite/neuruppin/1765976/rewe-markt-neustaedter-str-29",
    scope: "local_store",
    priceMode: "last",
  },
  {
    id: "netto-marken-discount",
    name: "Netto Marken-Discount Neuruppin",
    url: "https://www.netto-online.de/filialen/neuruppin/zur-mesche-23/7613/?stores_id=7613",
    scope: "local_store",
    priceMode: "last",
  },
  {
    id: "netto-scottie",
    name: "Netto mit Scottie",
    url: "https://netto.de/prospekte/",
    scope: "national",
    priceMode: "first",
    priceWithoutCurrency: true,
  },

  {
    id: "aldi-nord-meinprospekt",
    name: "ALDI Nord Neuruppin (MeinProspekt)",
    url: "https://www.meinprospekt.de/neuruppin/aldinord-de",
    scope: "regional_prospect",
    priceMode: "first",
    retailerId: "aldi-nord",
    priority: 1,
  },
  {
    id: "lidl-meinprospekt",
    name: "Lidl Neuruppin (MeinProspekt)",
    url: "https://www.meinprospekt.de/neuruppin/lidl",
    scope: "regional_prospect",
    priceMode: "first",
    retailerId: "lidl",
    priority: 1,
  },
  {
    id: "kaufland-meinprospekt",
    name: "Kaufland Neuruppin (MeinProspekt)",
    url: "https://www.meinprospekt.de/neuruppin/kaufland",
    scope: "regional_prospect",
    priceMode: "first",
    retailerId: "kaufland",
    priority: 1,
  },
  {
    id: "rewe-meinprospekt",
    name: "REWE Neuruppin (MeinProspekt)",
    url: "https://www.meinprospekt.de/neuruppin/rewe-de",
    scope: "regional_prospect",
    priceMode: "first",
    retailerId: "rewe",
    priority: 1,
  },
  {
    id: "netto-marken-discount-meinprospekt",
    name: "Netto Marken-Discount Neuruppin (MeinProspekt)",
    url: "https://www.meinprospekt.de/neuruppin/netto-marken-discount-de",
    scope: "regional_prospect",
    priceMode: "first",
    retailerId: "netto-marken-discount",
    priority: 1,
  },
  {
    id: "netto-scottie-meinprospekt",
    name: "Netto mit Scottie Neuruppin (MeinProspekt)",
    url: "https://www.meinprospekt.de/neuruppin/netto1-de",
    scope: "regional_prospect",
    priceMode: "first",
    retailerId: "netto-scottie",
    priority: 1,
  },

  {
    id: "aldi-nord-aktionspreis",
    name: "ALDI Nord (Aktionspreis, regional nicht bestätigt)",
    url: "https://www.aktionspreis.de/prospekt/aldi-nord-angebote",
    scope: "national",
    priceMode: "first",
    retailerId: "aldi-nord",
    priority: 2,
  },
  {
    id: "lidl-aktionspreis",
    name: "Lidl (Aktionspreis, regional nicht bestätigt)",
    url: "https://www.aktionspreis.de/prospekt/lidl-angebote",
    scope: "national",
    priceMode: "first",
    retailerId: "lidl",
    priority: 2,
  },
  {
    id: "kaufland-aktionspreis",
    name: "Kaufland (Aktionspreis, regional nicht bestätigt)",
    url: "https://www.aktionspreis.de/prospekt/kaufland-angebote",
    scope: "national",
    priceMode: "first",
    retailerId: "kaufland",
    priority: 2,
  },
  {
    id: "rewe-aktionspreis",
    name: "REWE (Aktionspreis, regional nicht bestätigt)",
    url: "https://www.aktionspreis.de/prospekt/rewe-angebote",
    scope: "national",
    priceMode: "first",
    retailerId: "rewe",
    priority: 2,
  },
  {
    id: "netto-marken-discount-aktionspreis",
    name: "Netto Marken-Discount (Aktionspreis, regional nicht bestätigt)",
    url: "https://www.aktionspreis.de/prospekt/netto-marken-discount-angebote",
    scope: "national",
    priceMode: "first",
    retailerId: "netto-marken-discount",
    priority: 2,
  },
  {
    id: "netto-scottie-aktionspreis",
    name: "Netto mit Scottie (Aktionspreis, regional nicht bestätigt)",
    url: "https://www.aktionspreis.de/prospekt/netto-angebote",
    scope: "national",
    priceMode: "first",
    retailerId: "netto-scottie",
    priority: 2,
  },
];

function decodeEntities(value: string): string {
  return value
    .replace(/&nbsp;|&#160;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/&euro;/gi, "€")
    .replace(/&auml;/gi, "ä")
    .replace(/&ouml;/gi, "ö")
    .replace(/&uuml;/gi, "ü")
    .replace(/&Auml;/g, "Ä")
    .replace(/&Ouml;/g, "Ö")
    .replace(/&Uuml;/g, "Ü")
    .replace(/&szlig;/gi, "ß")
    .replace(/&quot;/gi, '"')
    .replace(/&#39;|&apos;/gi, "'")
    .replace(/&#(\d+);/g, (_match, code) => String.fromCodePoint(Number(code)));
}

function cleanText(value: string): string {
  return decodeEntities(value.replace(/<[^>]+>/g, " "))
    .replace(/\s+/g, " ")
    .trim();
}

function pageText(html: string): string {
  return cleanText(
    html
      .replace(/<script[\s\S]*?<\/script>/gi, " ")
      .replace(/<style[\s\S]*?<\/style>/gi, " ")
      .replace(/<noscript[\s\S]*?<\/noscript>/gi, " "),
  );
}

function getValidity(text: string): string | null {
  const patterns = [
    /gültig\s+bis\s+(\d{1,2}\.\d{1,2}\.\d{4})/i,
    /gültig\s+(?:vom\s+)?([^.;]{5,90}?\s+bis\s+[^.;]{5,90})/i,
    /gültig\s+ab\s+([^.;]{5,70})/i,
    /(Mo\.?\s*\d{1,2}\.\d{1,2}\.\s*-\s*Sa\.?\s*\d{1,2}\.\d{1,2}\.\d{4})/i,
  ];
  for (const pattern of patterns) {
    const match = text.match(pattern);
    if (match) return match[1].replace(/\s+/g, " ").trim();
  }
  return null;
}

function roundPrice(value: number): number {
  return Math.round((value + Number.EPSILON) * 100) / 100;
}

function extractQuantityCondition(text: string): string | undefined {
  const patterns = [
    /(\d{1,3})\s*(?:stück|stk\.?)\s+entspr\.?\s+pro\s+(?:beutel|packung)/i,
    /(?:ab|bei\s+(?:einem?\s+)?kauf\s+von|beim\s+kauf\s+von|mindestens|nur\s+bei\s+abnahme\s+von)\s+(\d{1,3})\s*(?:stück|stk\.?|packungen|packungen?)/i,
    /(?:kauf|abnahme)\s+von\s+(\d{1,3})\s*(?:stück|stk\.?|packungen?)/i,
  ];
  for (const pattern of patterns) {
    const match = text.match(pattern);
    if (match) return match[0].replace(/\s+/g, " ").trim();
  }
  return undefined;
}

function parsePriceTokens(block: string, allowNoCurrency: boolean): number[] {
  const values: number[] = [];
  const currencyPattern = /(?:€\s*)?(\d{1,4})[.,](\d{2}|[–-])(?!\s*-?\s*(?:kg|g|ml|l)\b)\s*€?/g;
  for (const match of block.matchAll(currencyPattern)) {
    const value = Number(match[1]) + (match[2] === "–" || match[2] === "-" ? 0 : Number(match[2]) / 100);
    if (Number.isFinite(value) && value > 0 && value < 1000) values.push(value);
  }
  if (allowNoCurrency) {
    for (const match of block.matchAll(/\b(\d{1,3})\s+(\d{2})\b/g)) {
      const value = Number(match[1]) + Number(match[2]) / 100;
      if (Number.isFinite(value) && value > 0 && value < 1000) values.push(value);
    }
  }
  return values;
}

function isRelevantFoodCandidate(name: string, source: StoreSource): boolean {
  // Alkoholfreie Getränke bleiben erlaubt. Alkohol sowie Drogerie-, Haushalts-,
  // Tier- und Non-Food-Artikel werden ausgeschlossen.
  if (!/alkoholfrei/i.test(name) && /\b(?:bier|pils|helles|radler|veltins|büble|light live|sekt|prosecco|wein|glühwein|gluehwein|blanchet|likör|whisky|whiskey|schnaps|vodka|wodka|rum|gin|sarti|aperitif|spirituose)\b/i.test(name)) return false;
  if (/\b(?:somat|waschmittel|weichspüler|klarspüler|spülmaschinen(?:pfleger|tiefenreiniger|caps|tabs)?|geschirrspül(?:mittel|tabs)|wc[- ]?spüler|wc[- ]?reiniger|wc[- ]?steine|reiniger|klebestift(?:e)?|kleber|tesa|kugelschreiber|druckerpapier|heft(?:e)?|ordner|marker|deo(?:spray)?|deodorant|kosmetik|shampoo|duschgel|zahnpasta|katzenfutter|hundefutter|tierfutter|plüschtier|geschenk(?:artikel)?|pflanze|hebe|hyazinthe|amaryllis|zuckerhutfichte|bepflanztes rentier|rentier|christrose|weihnachtsstern(?:busch)?|rc[- ]?(?:fahrzeug|auto|modell)|frischhaltedosen?|schnellkochtopf|kochtopf|pfanne|geschirr|haushaltswaren|küchenhelfer|spielzeug|modellbau)\b/i.test(name)) return false;
  if (source.retailerId === "aldi-nord" || source.id === "aldi-nord") {
    return !/\b(?:pflanzen|hebe|hyazinthe|amaryllis|zuckerhutfichte|bepflanztes rentier|rentier|christrose|weihnachtsstern(?:busch)?)\b/i.test(name);
  }
  return true;
}
function extractHeadingCandidates(html: string, source: StoreSource) {
  const headings = [...html.matchAll(/<(h[2-6])\b[^>]*>([\s\S]*?)<\/\1>/gi)];
  const candidates: Array<Record<string, unknown>> = [];
  const seen = new Set<string>();

  for (let index = 0; index < headings.length; index++) {
    const heading = headings[index];
    const name = cleanText(heading[2]);
    if (name.length < 3 || name.length > 110) continue;
    if (/^(angebote|prospekt|unsere angebote|aktuelle angebote|angebote im markt|filial-angebote|gültig|diese woche|nächste woche)$/i.test(name)) continue;
    if (!isRelevantFoodCandidate(name, source)) continue;

    const start = (heading.index ?? 0) + heading[0].length;
    const end = index + 1 < headings.length ? (headings[index + 1].index ?? html.length) : Math.min(html.length, start + 1800);
    const rawBlock = html.slice(start, Math.min(end, start + 1800));
    const block = cleanText(rawBlock);
    const prices = parsePriceTokens(block, Boolean(source.priceWithoutCurrency));
    if (!prices.length) continue;

    const price = source.priceMode === "last" ? prices[prices.length - 1] : prices[0];
    if (!Number.isFinite(price) || price <= 0 || price > 500) continue;
    const key = (name + "|" + price).toLocaleLowerCase("de-DE");
    if (seen.has(key)) continue;
    seen.add(key);

    candidates.push({
      productName: name,
      price: roundPrice(price),
      currency: "EUR",
      context: block.slice(0, 240),
      sourceId: source.id,
      sourceUrl: source.url,
      extractionMethod: source.id.endsWith("-meinprospekt") ? "meinprospekt_heading_card_candidate" : "heading_card_candidate",
      retailerId: source.retailerId ?? source.id,
      sourcePriority: source.priority ?? 2,
      confidence: "review_required",
    });
  }
  return candidates;
}

function extractKauflandLinkCandidates(html: string, source: StoreSource) {
  if (source.id !== "kaufland-neuruppin") return [];
  const candidates: Array<Record<string, unknown>> = [];
  const seen = new Set<string>();
  for (const match of html.matchAll(/<a\b[^>]*>([\s\S]*?)<\/a>/gi)) {
    const text = cleanText(match[1]);
    if (text.length < 8 || text.length > 260) continue;
    if (/\b(?:gültig\s+vom|jetzt\s+blättern|leckere\s+rezepte|rezepte\s+jeden\s+tag|rezeptidee\s+finden)\b/i.test(text)) continue;

    // Grundpreise und Preise pro Anwendung sind keine Angebotspreise.
    const withoutUnitPrice = text
      .replace(/\(\s*1\s*(?:kg|l)\s*=[^)]*\)/gi, " ")
      .replace(/\(\s*pro\s+Anwendung\s*=[^)]*\)/gi, " ");
    const cardMarker = /mit\s+kaufland\s+card(?:\s+xtra)?/i.exec(withoutUnitPrice);
    const cardIndex = cardMarker?.index ?? -1;
    const beforeCard = cardIndex >= 0 ? withoutUnitPrice.slice(0, cardIndex) : withoutUnitPrice;
    const afterCard = cardIndex >= 0 ? withoutUnitPrice.slice(cardIndex + cardMarker![0].length) : "";
    const regularPrices = parsePriceTokens(beforeCard, false);
    const cardPrices = cardIndex >= 0 ? parsePriceTokens(afterCard, false) : [];

    // Bei Card-Angeboten: erster Preis vor dem Card-Hinweis = regulärer Aktionspreis;
    // erster Preis danach = zusätzlicher Kaufland-Card-Preis.
    let price = regularPrices[0] ?? 0;
    // Bei Kiloware wie "je kg" darf ein Beispiel-Packungspreis
    // (z. B. 750 g = 11,25 €) nicht den tatsächlichen kg-Angebotspreis ersetzen.
    if (/\bje\s*kg\b/i.test(withoutUnitPrice)) {
      const onlyIndex = withoutUnitPrice.search(/\bnur\b/i);
      if (onlyIndex >= 0) {
        const offerPrices = parsePriceTokens(withoutUnitPrice.slice(onlyIndex), false);
        if (offerPrices.length) price = offerPrices[0];
      }
    }
    let cardPrice: number | undefined;
    if (cardIndex >= 0 && cardPrices.length) {
      cardPrice = cardPrices[0];
    } else if (!price) {
      const allPrices = parsePriceTokens(withoutUnitPrice, false);
      price = allPrices[0] ?? 0;
      const discountIndex = withoutUnitPrice.search(/-\s*\d{1,2}\s*%/);
      const onlyIndex = withoutUnitPrice.search(/\bnur\b/i);
      const markerIndex = discountIndex >= 0 ? discountIndex : onlyIndex;
      if (markerIndex >= 0) {
        const markedPrices = parsePriceTokens(withoutUnitPrice.slice(markerIndex), false);
        if (markedPrices.length) price = markedPrices[0];
      }
    }
    if (price <= 0 || price > 500 || (cardPrice !== undefined && (cardPrice <= 0 || cardPrice > 500))) continue;

    const name = text
      .replace(/\(\s*1\s*(?:kg|l)\s*=[^)]*\)/gi, " ")
      .replace(/\(\s*pro\s+Anwendung\s*=[^)]*\)/gi, " ")
      .replace(/mit\s+kaufland\s+card(?:\s+xtra)?/gi, " ")
      .replace(/-\s*\d{1,2}\s*%/g, " ")
      .replace(/\b(?:nur\s*)?\d{1,4}[.,]\d{2}(?!\s*-?\s*(?:kg|g|ml|l)\b)\s*€?/gi, " ")
      .replace(/\*+/g, " ")
      .replace(/\s*\/\s*/g, " / ")
      .replace(/(?:\s*\/\s*)+$/g, "")
      .replace(/\s+/g, " ")
      .trim()
      .slice(0, 110);
    if (name.length < 3 || /newsletter|kaufland services|fragen und antworten|filiale|prospekt/i.test(name)) continue;

    const key = name.toLocaleLowerCase("de-DE") + "|" + price + "|" + (cardPrice ?? "");
    if (seen.has(key)) continue;
    seen.add(key);
    const quantityCondition = extractQuantityCondition(text);
    candidates.push({
      productName: name,
      price: roundPrice(price),
      ...(cardPrice !== undefined ? { cardPrice: roundPrice(cardPrice), cardRequired: true } : {}),
      ...(quantityCondition ? { quantityCondition, requiresMultiplePurchase: true } : {}),
      currency: "EUR",
      context: text,
      sourceId: source.id,
      sourceUrl: source.url,
      extractionMethod: "kaufland_offer_link",
      retailerId: source.retailerId ?? source.id,
      sourcePriority: source.priority ?? 2,
      confidence: "review_required",
    });
  }
  return candidates;
}

function extractAktionspreisLinkCandidates(html: string, source: StoreSource) {
  // MeinProspekt verwendet eigene Angebotskarten. Der allgemeine Link-Parser
  // erfasst dort auch Navigation und Seitenelemente und bleibt bis zum
  // speziellen OfferGrid-Parser deaktiviert.
  if (!source.id.endsWith("-aktionspreis")) return [];
  const candidates: Array<Record<string, unknown>> = [];
  const seen = new Set<string>();
  for (const match of html.matchAll(/<a\b[^>]*>([\s\S]*?)<\/a>/gi)) {
    const block = cleanText(match[1]);
    if (block.length < 8 || block.length > 300) continue;
    const prices = parsePriceTokens(block, false);
    if (!prices.length) continue;
    const name = block
      .replace(/\b\d{1,3}\s*%\s*/g, " ")
      .replace(/\b(?:tiefstpreis|uvp)\b/gi, " ")
      // Grundpreis-Spannen vor einzelnen Europreisen entfernen, damit deren Endpreis nicht vorab verschwindet.
      .replace(/\b\d+(?:[.,]\d+)?\s*[-–]\s*\d+(?:[.,]\d+)?\s*€?\s*je\s*(?:kg|l|liter|100\s*g|stück)\b/gi, " ")
      .replace(/(?:ab\s*)?\d{1,4}[.,]\d{2}\s*€/gi, " ")
      // Verbliebene Grundpreis-Einheiten entfernen, wenn der Preis davor bereits entfernt wurde.
      .replace(/\bje\s*(?:kg|l|liter|100\s*g|stück)\b/gi, " ")
      .replace(/\bpro\s*(?:kg|l|liter|100\s*g|stück)\b/gi, " ")
      // Mengenbereiche mit Einheit vollständig entfernen (z. B. 26 - 92g oder 750 - 1000ml).
      .replace(/\b\d+(?:[.,]\d+)?\s*[-–]\s*\d+(?:[.,]\d+)?\s*(?:g|kg|ml|l)\b/gi, " ")
      // Mengenbereiche in Klammern entfernen (z. B. (750 - 1000ml) oder (69 - 140g)).
      .replace(/\(\s*\d+(?:[.,]\d+)?\s*[-–]\s*\d+(?:[.,]\d+)?\s*(?:g|kg|ml|l)\s*\)/gi, " ")
      // Dezimalmengen vollständig entfernen (z. B. 102,5g).
      .replace(/\b\d+(?:[.,]\d+)?\s*(?:g|kg|ml|l)\b/gi, " ")
      // Grundpreis je Stück inklusive Zahlenwert entfernen.
      .replace(/\b\d{1,3}[.,]\d{2}\s*€?\s*je\s*(?:stück|stk\.?)\b/gi, " ")
      .replace(/\b\d+(?:[.,]\d+)?\s*(?:g|kg|ml|l)\b/gi, " ")
      // Stückzahl-Spannen und einzelne Stückzahlen entfernen.
      .replace(/\b\d+\s*[-–]\s*\d+\s*(?:stück|stk\.?)\b/gi, " ")
      .replace(/\b\d+\s*(?:stück|stk\.?)\b/gi, " ")
      // Multiplikationsangaben wie „3 x“ entfernen.
      .replace(/\b\d+\s*[x×]\b/gi, " ")
      .replace(/\(\s*\)/g, " ")
      .replace(/\s*[-–]\s*(?=\s|$)/g, " ")
      .replace(/\s+/g, " ")
      .trim()
      .slice(0, 110);
    if (name.length < 3 || !isRelevantFoodCandidate(name, source) || !isRelevantFoodCandidate(`${name} ${cardText}`, source)) continue;
    const key = name.toLocaleLowerCase("de-DE") + "|" + prices[0];
    if (seen.has(key)) continue;
    seen.add(key);
    candidates.push({
      productName: name,
      price: prices[0],
      currency: "EUR",
      context: block.slice(0, 240),
      sourceId: source.id,
      sourceUrl: source.url,
      extractionMethod: source.id.endsWith("-meinprospekt") ? "meinprospekt_offer_link_candidate" : "aktionspreis_offer_link_candidate",
      retailerId: source.retailerId ?? source.id,
      sourcePriority: source.priority ?? 2,
      regionality: source.id.endsWith("-meinprospekt") ? "regional_page_neuruppin_not_independently_verified" : "not_confirmed_for_neuruppin",
      confidence: "review_required",
    });
  }
  return candidates;
}

function extractNettoMeinProspektOfferGridCandidates(html: string, source: StoreSource) {
  if (source.id !== "netto-marken-discount-meinprospekt") return [];

  const gridIndex = html.search(/data-testid=["']OfferGrid["']|id=["']OfferGrid["']/i);
  if (gridIndex < 0) return [];

  const gridHtml = html.slice(gridIndex, gridIndex + 250000);
  const cardStarts = [...gridHtml.matchAll(/<div\b(?=[^>]*class=["'][^"']*\bborder-gray\b[^"']*\bgroup\b[^"']*["'])(?=[^>]*role=["']listitem["'])[^>]*>/gi)];
  const candidates: Array<Record<string, unknown>> = [];
  const seen = new Set<string>();

  for (let index = 0; index < cardStarts.length; index++) {
    const start = cardStarts[index].index ?? 0;
    const end = index + 1 < cardStarts.length
      ? (cardStarts[index + 1].index ?? gridHtml.length)
      : Math.min(gridHtml.length, start + 5000);
    const card = gridHtml.slice(start, end);
    const cardText = cleanText(card);
    // Der letzte Kartenbereich kann in den Seitenfuß hineinreichen; solche Treffer verwerfen.
    if (/\b(?:gültig bis|weitere angebote|discounter prospekte|top angebote|gültig vom)\b/i.test(cardText)) continue;

    const paragraphs = [...card.matchAll(/<p\b[^>]*>([\s\S]*?)<\/p>/gi)]
      .map((match) => cleanText(match[1]))
      .filter((value) => value.length > 0 && !/^netto marken-discount$/i.test(value) && !/[€]|\b(?:kg|100\s*g|ml|liter)\b/i.test(value));
    if (!paragraphs.length) continue;

    // MeinProspekt-Karten zeigen Marke und Produktname in getrennten p-Elementen.
    const name = paragraphs.slice(-2).join(" ").replace(/\s+/g, " ").trim().slice(0, 110);
    // Datums- und Gültigkeitstexte aus dem Prospekt-Footer sind keine Produktnamen.
    if (/\b(?:mo|di|mi|do|fr|sa|so)\.\s*\d{1,2}\.\d{1,2}|\b(?:gültig bis|gültig vom|weitere angebote|top angebote|dein markt)\b/i.test(name)) continue;
    if (name.length < 3 || !isRelevantFoodCandidate(name, source)) continue;
    // Zusätzliche Absicherung gegen typische Schreibwaren-/Büroartikel in Prospektkarten.
    if (/\b(?:klebestift(?:e)?|kleber|tesa|kugelschreiber|druckerpapier|heft(?:e)?|ordner|marker)\b/i.test(name)) continue;

    const priceParagraph = card.match(/<p\b[^>]*class=["'][^"']*text-primary[^"']*["'][^>]*>([\s\S]*?)<\/p>/i);
    const prices = priceParagraph ? parsePriceTokens(cleanText(priceParagraph[1]), false) : [];
    const price = prices[0] ?? 0;
    if (price <= 0 || price > 500) continue;

    const key = name.toLocaleLowerCase("de-DE") + "|" + price;
    if (seen.has(key)) continue;
    seen.add(key);

    candidates.push({
      productName: name,
      price: roundPrice(price),
      currency: "EUR",
      context: cleanText(card).slice(0, 240),
      sourceId: source.id,
      sourceUrl: source.url,
      extractionMethod: "meinprospekt_offergrid_card",
      retailerId: source.retailerId ?? source.id,
      sourcePriority: source.priority ?? 1,
      regionality: "regional_page_neuruppin_not_independently_verified",
      confidence: "review_required",
    });
  }
  return candidates;
}

function extractCandidates(html: string, source: StoreSource) {
  // Kaufland-Filialseiten enthalten Service-Überschriften mit fremden Preisen.
  // Netto-Marken-Discount-Filialseiten enthalten Navigations-, Filial- und Bewertungsdaten,
  // aber keine zuverlässig erkennbaren Angebotskarten. Dort keine Überschriften auswerten.
  // Für Netto bleiben die getrennten Prospektquellen (MeinProspekt/Aktionspreis) aktiv.
  const primary = source.id === "kaufland-neuruppin"
    || source.id === "netto-marken-discount"
    || source.id.endsWith("-meinprospekt")
    || source.id.endsWith("-aktionspreis")
    ? []
    : extractHeadingCandidates(html, source);
  const secondary = extractKauflandLinkCandidates(html, source);
  const tertiary = extractAktionspreisLinkCandidates(html, source);
  const meinProspektCards = extractNettoMeinProspektOfferGridCandidates(html, source);
  const merged = [...primary, ...secondary, ...tertiary, ...meinProspektCards];
  const seen = new Set<string>();
  return merged.filter((item) => {
    const key = String(item.productName).toLocaleLowerCase("de-DE") + "|" + String(item.price);
    if (seen.has(key)) return false;
    seen.add(key);
    return true;
  }).slice(0, 200);
}



type KaufdaLocation = { zip: string; city: string; lat: number; lng: number };

async function resolveKaufdaLocation(zipInput: string): Promise<KaufdaLocation> {
  const zip = /^\d{5}$/.test(zipInput) ? zipInput : "16816";
  if (zip === "16816") return { zip, city: "Neuruppin", lat: 52.9211097, lng: 12.8002556 };
  const url = new URL("https://nominatim.openstreetmap.org/search");
  url.searchParams.set("postalcode", zip);
  url.searchParams.set("country", "Germany");
  url.searchParams.set("format", "jsonv2");
  url.searchParams.set("limit", "1");
  const response = await fetch(url, {
    headers: {
      "User-Agent": "Familien-Essensplaner/1.0 (regional grocery offer lookup)",
      "Accept": "application/json",
      "Accept-Language": "de",
    },
    signal: AbortSignal.timeout(10000),
  });
  if (!response.ok) throw new Error("PLZ-Ort konnte nicht ermittelt werden (Geocoding HTTP " + response.status + ").");
  const rows = await response.json();
  if (!Array.isArray(rows) || !rows.length) throw new Error("Für die Postleitzahl " + zip + " wurde kein Ort gefunden.");
  const row = rows[0];
  const address = row.address ?? {};
  const city = address.city ?? address.town ?? address.village ?? address.municipality ?? address.suburb ?? address.county ?? "";
  const lat = Number(row.lat);
  const lng = Number(row.lon);
  if (!city || !Number.isFinite(lat) || !Number.isFinite(lng)) throw new Error("Für die Postleitzahl " + zip + " konnten Ort und Koordinaten nicht vollständig ermittelt werden.");
  return { zip, city: String(city), lat, lng };
}

function extractBalancedJson(source: string, openingIndex: number): string | null {
  const start = source.indexOf("{", openingIndex);
  if (start < 0) return null;
  let depth = 0;
  let inString = false;
  let escaped = false;
  for (let i = start; i < source.length; i++) {
    const ch = source[i];
    if (inString) {
      if (escaped) escaped = false;
      else if (ch === "\\") escaped = true;
      else if (ch === '"') inString = false;
    } else {
      if (ch === '"') inString = true;
      else if (ch === "{") depth++;
      else if (ch === "}") {
        depth--;
        if (depth === 0) return source.slice(start, i + 1);
      }
    }
  }
  return null;
}

function parseKaufdaPage(html: string) {
  const pagePos = html.indexOf('"pageInformation":{');
  if (pagePos < 0) throw new Error("KaufDA pageInformation wurde nicht gefunden.");
  const json = extractBalancedJson(html, pagePos);
  if (!json) throw new Error("KaufDA pageInformation ist unvollständig.");
  const page = JSON.parse(json);
  const contents = page?.searchResults?.contents;
  if (!contents || !Array.isArray(contents.offers)) throw new Error("KaufDA-Angebotsdaten fehlen in pageInformation.");
  const brochures = Array.isArray(contents.brochures) ? contents.brochures : [];
  const brochureById = new Map<string, any>();
  for (const item of brochures) {
    const content = item?.content;
    if (content?.id) brochureById.set(String(content.id), content);
  }
  return { offers: contents.offers, brochures };
}

async function fetchKaufdaCandidates(query: string, location: KaufdaLocation) {
  const url = new URL("https://www.kaufda.de/search");
  url.searchParams.set("query", query);
  url.searchParams.set("lat", String(location.lat));
  url.searchParams.set("lng", String(location.lng));
  url.searchParams.set("city", location.city);
  url.searchParams.set("zip", location.zip);
  const response = await fetch(url, {
    headers: {
      "User-Agent": "Mozilla/5.0 (compatible; Familien-Essensplaner/2.0)",
      "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
    },
    signal: AbortSignal.timeout(18000),
  });
  if (!response.ok) throw new Error("KaufDA HTTP " + response.status);
  const html = await response.text();
  const parsed = parseKaufdaPage(html);
  const brochureById = new Map<string, any>();
  for (const item of parsed.brochures) {
    const content = item?.content;
    if (content?.id) brochureById.set(String(content.id), content);
  }
  const candidates = parsed.offers.flatMap((offer: any) => {
    const price = Number(offer?.prices?.mainPrice);
    const productName = String(offer?.title ?? "").trim();
    const publisherName = String(offer?.publisherName ?? "").trim();
    if (!productName || !publisherName || !Number.isFinite(price) || price <= 0 || price > 1000) return [];
    if (!isRelevantFoodCandidate(productName, { id: "kaufda", name: "KaufDA", url: url.toString(), scope: "regional_prospect", priceMode: "first" })) return [];
    const parentId = String(offer?.parentContent?.id ?? "");
    const brochure = brochureById.get(parentId);
    return [{
      productName,
      brand: offer?.brand ? String(offer.brand) : null,
      price: roundPrice(price),
      currency: String(offer?.prices?.currencyCode ?? "EUR"),
      priceByBaseUnit: offer?.prices?.priceByBaseUnit ? String(offer.prices.priceByBaseUnit) : null,
      sourceId: "kaufda",
      sourceUrl: url.toString(),
      sourceName: "KaufDA · " + publisherName,
      retailerId: String(offer?.publisherId ?? publisherName),
      publisherName,
      offerId: String(offer?.id ?? ""),
      imageUrl: offer?.offerImages?.url?.normal ?? offer?.offerImages?.url?.thumbnail ?? null,
      brochureId: parentId || null,
      brochureTitle: brochure?.title ?? null,
      brochurePage: offer?.parentContent?.page?.number ?? null,
      brochurePageCount: brochure?.pageCount ?? null,
      publishedFrom: brochure?.publishedFrom ?? null,
      publishedUntil: brochure?.publishedUntil ?? null,
      validFrom: brochure?.validFrom ?? null,
      validUntil: brochure?.validUntil ?? null,
      regionality: "regional_search_result_not_independently_verified",
      confidence: "review_required",
      extractionMethod: "kaufda_pageinformation_json",
      matchedQuery: query,
    }];
  });
  return { candidates, offerCount: parsed.offers.length, brochureCount: parsed.brochures.length, url: url.toString() };
}

Deno.serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }
  if (req.method !== "GET" && req.method !== "POST") {
    return new Response(JSON.stringify({ error: "Nur GET ist erlaubt." }), {
      status: 405,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  const requestUrl = new URL(req.url);
  const requestBody = req.method === "POST" ? await req.json().catch(() => ({})) : {};
  const zipInput = typeof requestBody.zip === "string" ? requestBody.zip : requestUrl.searchParams.get("zip");
  const zip = zipInput ?? "16816";
  const bodyQueries = Array.isArray(requestBody.queries) ? requestBody.queries : [];
  const queries = [...new Set([
    ...requestUrl.searchParams.getAll("q"),
    ...bodyQueries.filter((value: unknown): value is string => typeof value === "string"),
  ].map((value) => value.trim()).filter(Boolean))].slice(0, 8);
  let kaufdaResult: Record<string, unknown>;
  try {
    const location = await resolveKaufdaLocation(zip);
    const kaufdaQueries = queries.length ? queries : [];
    const kaufdaBatches = await Promise.all(kaufdaQueries.map(async (query) => {
      try {
        return { query, ...(await fetchKaufdaCandidates(query, location)), reachable: true, error: null };
      } catch (error) {
        return { query, candidates: [], offerCount: 0, brochureCount: 0, url: null, reachable: false, error: error instanceof Error ? error.message : "KaufDA-Abruf fehlgeschlagen" };
      }
    }));
    kaufdaResult = {
      id: "kaufda",
      name: "KaufDA · PLZ " + location.zip + " (" + location.city + ")",
      scope: "regional_prospect",
      retailerId: "kaufda",
      priority: 1,
      sourceUrl: "https://www.kaufda.de/search",
      reachable: kaufdaBatches.some((item) => item.reachable),
      status: null,
      candidateCount: kaufdaBatches.reduce((sum, item) => sum + item.candidates.length, 0),
      rawOfferCount: kaufdaBatches.reduce((sum, item) => sum + item.offerCount, 0),
      brochureCount: kaufdaBatches.reduce((sum, item) => sum + item.brochureCount, 0),
      queries: kaufdaBatches,
      candidates: kaufdaBatches.flatMap((item) => item.candidates),
      location,
      checkedAt: new Date().toISOString(),
      note: "KaufDA-Suchergebnisse zur eingegebenen PLZ. Regionale Filialverfügbarkeit bitte vor Verwendung prüfen; Kandidaten bleiben Vorschläge.",
    };
  } catch (error) {
    kaufdaResult = {
      id: "kaufda",
      name: "KaufDA · PLZ " + zip,
      scope: "regional_prospect",
      retailerId: "kaufda",
      priority: 1,
      sourceUrl: "https://www.kaufda.de/search",
      reachable: false,
      candidateCount: 0,
      candidates: [],
      error: error instanceof Error ? error.message : "PLZ konnte nicht aufgelöst werden.",
      checkedAt: new Date().toISOString(),
    };
  }

  const results = await Promise.all(SOURCES.map(async (source) => {
    try {
      const response = await fetch(source.url, {
        headers: {
          "User-Agent": "Mozilla/5.0 (compatible; Familien-Essensplaner/2.0)",
          "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
        },
        signal: AbortSignal.timeout(18000),
      });
      const html = await response.text();
      const text = pageText(html);
      const candidates = response.ok ? extractCandidates(html, source) : [];
      return {
        id: source.id,
        name: source.name,
        scope: source.scope,
        retailerId: source.retailerId ?? source.id,
        priority: source.priority ?? 2,
        sourceUrl: source.url,
        reachable: response.ok,
        status: response.status,
        title: cleanText(html.match(/<title\b[^>]*>([\s\S]*?)<\/title>/i)?.[1] ?? "") || null,
        validityText: getValidity(text),
        candidateCount: candidates.length,
        candidates,
        pageTextLength: text.length,
        preview: text.slice(0, 900),
        checkedAt: new Date().toISOString(),
        note: "Vorschau-Kandidaten, noch nicht für die Essensplanung freigegeben.",
      };
    } catch (error) {
      return {
        id: source.id,
        name: source.name,
        scope: source.scope,
        retailerId: source.retailerId ?? source.id,
        priority: source.priority ?? 2,
        sourceUrl: source.url,
        reachable: false,
        status: null,
        validityText: null,
        candidateCount: 0,
        candidates: [],
        error: error instanceof Error ? error.message : "Abruf fehlgeschlagen",
        checkedAt: new Date().toISOString(),
      };
    }
  }));

  return new Response(JSON.stringify({
    ok: true,
    version: 2,
    purpose: "Vergleich regionaler MeinProspekt-Angebotsseiten mit bisherigen Händlerquellen. Kandidaten bleiben ungeprüft und werden nicht automatisch für die Essensplanung freigegeben.",
    results: [...results, kaufdaResult],
    request: { zip, queries },
  }), {
    headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" },
  });
});
