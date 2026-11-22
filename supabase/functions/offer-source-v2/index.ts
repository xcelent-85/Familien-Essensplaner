const corsHeaders = {
  "Access-Control-Allow-Origin": "https://xcelent-85.github.io",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "GET, OPTIONS",
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
    results,
  }), {
    headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" },
  });
});
