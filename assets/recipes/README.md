# Rezeptbilder

Einheitliche KI-Food-Bilder für die Rezeptsammlung. Pro Gericht ist eine eigene WebP-Datei vorgesehen:

`<rezept-slug>.webp` – zum Beispiel `spaghetti-bolognese.webp`.

## Aktueller Stand

- 115 individuelle Bildmotive und Dateinamen sind in `docs/ki-foodbild-prompts.md` vorbereitet.
- Im Repository liegt aktuell nur `spaghetti-bolognese.webp`.
- Die übrigen 114 Bilddateien müssen noch einzeln generiert und in diesen Ordner übernommen werden.
- Erst nach dem Hinzufügen der Bilddateien werden die entsprechenden `image_url`-Felder in Supabase gesetzt.

## Bildstil

Fotorealistisch, warmes natürliches Fensterlicht, gemütliche Familienatmosphäre, cremefarbene Keramik und warmer Holztisch, Querformat 16:9, ohne Schrift, Logos oder Wasserzeichen.
