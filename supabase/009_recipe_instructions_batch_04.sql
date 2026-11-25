-- Alpha 0.3: individuell ausgearbeitete Zubereitungen, Rezepte 61–80 von 115
begin;
update public.recipe_catalog set instructions = 'Spaghetti in Salzwasser al dente kochen und etwas Nudelwasser auffangen. Knoblauch fein hacken.
Garnelen trocken tupfen. In einer heißen Pfanne mit etwas Öl 1–2 Minuten je Seite anbraten, bis sie rosa und gerade durch sind. Herausnehmen.
Knoblauch kurz im Bratensatz anschwitzen, Sahne zugießen und 2–3 Minuten sanft köcheln lassen. Mit Salz und Pfeffer würzen.
Spaghetti und Garnelen in die Sauce geben, mit etwas Nudelwasser geschmeidig machen und sofort servieren.', updated_at = now() where slug = 'garnelen-knoblauch-pasta';

update public.recipe_catalog set instructions = 'Spinat nach Packungsangabe vorbereiten, gut ausdrücken und fein hacken. Knödel nach Packungsangabe in siedendem Salzwasser gar ziehen lassen.
Sahne in einem kleinen Topf erhitzen. Geriebenen Käse nach und nach einrühren und bei kleiner Hitze schmelzen lassen; nicht stark kochen.
Käsesauce mit Pfeffer und etwas Muskat abschmecken. Falls sie zu dick ist, mit einem Schluck Milch oder Wasser verdünnen.
Knödel abtropfen lassen, mit der Käsesauce anrichten und mit dem Spinat servieren.', updated_at = now() where slug = 'spinatknodel-mit-kasesosse';

update public.recipe_catalog set instructions = 'Zwiebeln in feine Ringe schneiden. Butter in einer Pfanne erhitzen und Zwiebeln bei mittlerer bis kleiner Hitze langsam goldbraun und weich braten.
Spätzle nach Packungsangabe garen oder in einer Pfanne mit etwas Wasser erwärmen. Überschüssige Flüssigkeit abgießen.
Spätzle in eine Pfanne geben, Käse portionsweise darüberstreuen und bei kleiner Hitze unter Rühren schmelzen lassen.
Mit Pfeffer würzen und die Röstzwiebeln darauf verteilen. Sofort servieren.', updated_at = now() where slug = 'kasespatzle-mit-rostzwiebeln';

update public.recipe_catalog set instructions = 'Möhren schälen und in dünne Scheiben schneiden. Lauch gründlich waschen und in Ringe schneiden.
Gemüsebrühe in einem Topf aufkochen. Möhren hineingeben und etwa 5 Minuten köcheln lassen, anschließend Lauch zugeben.
Maultaschen in die leicht siedende Brühe legen und nach Packungsangabe etwa 5–8 Minuten ziehen lassen. Nicht sprudelnd kochen, damit sie nicht aufplatzen.
Suppe abschmecken und Maultaschen mit Gemüse und Brühe in tiefen Tellern servieren.', updated_at = now() where slug = 'maultaschen-in-gemusebruhe';

update public.recipe_catalog set instructions = 'Maultaschen in Streifen schneiden. Paprika und Zucchini würfeln, Zwiebel fein schneiden.
Zwiebel in einer großen Pfanne mit etwas Öl glasig dünsten. Paprika und Zucchini zugeben und 5–6 Minuten braten.
Maultaschenstreifen ergänzen und bei mittlerer Hitze rundherum anbraten, bis sie leicht gebräunt und heiß sind.
Mit Salz, Pfeffer und nach Wunsch Paprikapulver abschmecken und direkt servieren.', updated_at = now() where slug = 'maultaschen-gemuse-pfanne';

update public.recipe_catalog set instructions = 'Schupfnudeln in einer großen Pfanne mit etwas Öl rundherum goldbraun anbraten und kurz herausnehmen.
Gemüse und Erbsen in derselben Pfanne 4–5 Minuten braten, bis sie gar, aber noch bissfest sind.
Schupfnudeln zurück in die Pfanne geben, Sahne zugießen und alles 3–4 Minuten sanft köcheln lassen.
Mit Salz, Pfeffer und Muskat abschmecken. Bei Bedarf mit einem Schluck Wasser verdünnen und heiß servieren.', updated_at = now() where slug = 'schupfnudelpfanne-mit-gemuse';

update public.recipe_catalog set instructions = 'Zwiebel fein würfeln. Speckwürfel in einer großen Pfanne anbraten, bis sie leicht gebräunt sind; Zwiebel zugeben und glasig dünsten.
Sauerkraut hinzufügen und 5–7 Minuten unter gelegentlichem Rühren erwärmen. Falls es sehr sauer ist, eine Prise Zucker zugeben.
Schupfnudeln in einer zweiten Pfanne mit etwas Öl goldbraun braten.
Schupfnudeln unter das Sauerkraut heben, kurz zusammen erhitzen und abschmecken.', updated_at = now() where slug = 'schupfnudeln-mit-sauerkraut';

update public.recipe_catalog set instructions = 'Ravioli nach Packungsangabe in leicht siedendem Salzwasser garen und vorsichtig abgießen.
Spinat in einer Pfanne mit etwas Öl zusammenfallen lassen. Sahne zugießen und 3–4 Minuten sanft köcheln lassen.
Parmesan einrühren und die Sauce mit Pfeffer sowie bei Bedarf Salz abschmecken.
Ravioli vorsichtig unterheben, kurz erwärmen und sofort servieren.', updated_at = now() where slug = 'ravioli-mit-spinat-sahne-sosse';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Tortellini nach Packungsangabe knapp bissfest garen und abgießen.
Tortellini mit passierten Tomaten in einer Auflaufform vermengen. Mit Salz, Pfeffer und italienischen Kräutern würzen.
Mozzarella zupfen und zusammen mit dem geriebenen Käse über dem Auflauf verteilen.
Etwa 15–20 Minuten backen, bis die Sauce blubbert und der Käse goldbraun ist. Kurz ruhen lassen.', updated_at = now() where slug = 'tortellini-tomaten-auflauf';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Aubergine in etwa 1 cm dicke Scheiben schneiden und auf einem Blech mit etwas Öl bepinseln.
Auberginenscheiben 10 Minuten vorbacken, damit sie weich werden. Gehackte Tomaten mit Salz, Pfeffer und Oregano würzen.
Aubergine und Tomatensauce in einer Auflaufform schichten. Mozzarella in Stücke zupfen und Parmesan darüberstreuen.
Weitere 15–20 Minuten backen, bis die Aubergine weich und der Käse goldbraun ist.', updated_at = now() where slug = 'auberginen-tomaten-auflauf';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Reis nach Packungsangabe etwa halb gar kochen und abgießen. Paprika längs halbieren oder Deckel abschneiden und Kerne entfernen.
Hackfleisch mit dem vorgegarten Reis, Salz, Pfeffer und Paprikapulver vermengen. Paprikahälften damit füllen.
Passierte Tomaten mit etwas Wasser und Gewürzen in eine Auflaufform geben. Gefüllte Paprika hineinsetzen.
Abgedeckt etwa 25 Minuten backen, dann Abdeckung entfernen und weitere 10–15 Minuten garen, bis die Füllung vollständig durchgegart ist.', updated_at = now() where slug = 'gefullte-paprika-mit-reis';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Zucchini längs halbieren und das Innere mit einem Löffel etwas aushöhlen; Fruchtfleisch klein hacken.
Hackfleisch in einer Pfanne krümelig anbraten. Gehacktes Zucchinifleisch und passierte Tomaten zugeben und 5 Minuten köcheln lassen. Mit Salz und Pfeffer würzen.
Zucchinihälften in eine Auflaufform legen und mit der Hackmischung füllen. Käse darüberstreuen.
Etwa 20–25 Minuten backen, bis die Zucchini weich und der Käse goldbraun ist.', updated_at = now() where slug = 'zucchini-boote-mit-hack';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Nudeln 2 Minuten kürzer als auf der Packung angegeben kochen. Brokkoli in kleine Röschen teilen und die letzten 3 Minuten mit den Nudeln garen.
Nudeln und Brokkoli abgießen und in einer Auflaufform verteilen.
Sahne mit Salz, Pfeffer und Muskat würzen, darübergießen und mit geriebenem Käse bestreuen.
Etwa 20–25 Minuten backen, bis die Nudeln gar und die Oberfläche goldbraun ist.', updated_at = now() where slug = 'brokkoli-nudel-auflauf';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Blumenkohl in Röschen teilen. Kartoffeln schälen und in kleine Würfel schneiden.
Blumenkohl und Kartoffeln in Salzwasser 8–10 Minuten vorgaren und gut abgießen.
Gemüse in einer Auflaufform verteilen, Sahne mit Salz, Pfeffer und Muskat würzen und darübergeben. Käse aufstreuen.
Etwa 20 Minuten backen, bis das Gemüse weich und der Käse goldbraun ist.', updated_at = now() where slug = 'blumenkohl-kase-auflauf';

update public.recipe_catalog set instructions = 'Makkaroni in Salzwasser bissfest kochen und abgießen. Etwas Kochwasser aufbewahren.
Mehl in einem Topf mit etwas Butter kurz anschwitzen. Milch nach und nach unter Rühren zugießen, damit keine Klümpchen entstehen.
Sauce einige Minuten köcheln lassen, bis sie leicht bindet. Cheddar einrühren und bei kleiner Hitze schmelzen lassen. Mit Pfeffer und Muskat würzen.
Makkaroni unterheben und bei Bedarf mit etwas Nudelwasser cremig rühren. Sofort servieren.', updated_at = now() where slug = 'makkaroni-mit-kase';

update public.recipe_catalog set instructions = 'Nudeln, passierte Tomaten und Wasser in einen breiten Topf geben. Alles gut vermengen und aufkochen.
Bei mittlerer Hitze offen 10–14 Minuten köcheln lassen, regelmäßig umrühren und prüfen, dass die Nudeln nicht am Topfboden ansetzen. Bei Bedarf etwas Wasser ergänzen.
Wenn die Nudeln gar und die Sauce sämig ist, Topf vom Herd ziehen. Mozzarella in Stücke zupfen.
Mozzarella und Basilikum unterheben, kurz anschmelzen lassen und mit Salz und Pfeffer abschmecken.', updated_at = now() where slug = 'one-pot-tomaten-mozzarella-pasta';

update public.recipe_catalog set instructions = 'Zucchini und Paprika klein schneiden. Nudeln, Gemüse und Gemüsebrühe in einen ausreichend großen Topf geben.
Aufkochen und bei mittlerer Hitze offen köcheln lassen. Regelmäßig umrühren, damit die Nudeln nicht ansetzen; bei Bedarf etwas Wasser nachgießen.
Wenn die Nudeln fast gar sind und nur noch wenig Flüssigkeit im Topf ist, Sahne einrühren.
Noch 2–3 Minuten köcheln lassen, bis eine cremige Sauce entsteht. Mit Salz, Pfeffer und Kräutern abschmecken.', updated_at = now() where slug = 'one-pot-gemusenudeln';

update public.recipe_catalog set instructions = 'Hähnchenbrust in kleine Würfel schneiden und Paprika würfeln. Hähnchen in einem breiten Topf mit etwas Öl rundherum anbraten.
Paprika und Reis zugeben und 1 Minute mitrösten. Brühe zugießen und einmal aufkochen.
Bei kleiner Hitze zugedeckt etwa 15–18 Minuten garen, bis der Reis weich und die Flüssigkeit aufgenommen ist. Zwischendurch umrühren und bei Bedarf etwas Brühe ergänzen.
Prüfen, dass das Hähnchen vollständig durchgegart ist. Mit Salz und Pfeffer abschmecken und kurz ruhen lassen.', updated_at = now() where slug = 'one-pot-hahnchen-reis';
commit;
