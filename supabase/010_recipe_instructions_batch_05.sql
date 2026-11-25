-- Alpha 0.3: individuell ausgearbeitete Zubereitungen, Rezepte 81–100 von 115
begin;
update public.recipe_catalog set instructions = 'Kartoffeln und Möhren schälen und würfeln. Gemüsebrühe in einem großen Topf aufkochen.
Kartoffeln und Möhren in die Brühe geben und etwa 15 Minuten köcheln lassen, bis sie fast weich sind.
Weiße Bohnen abgießen, abspülen und in den Topf geben. Weitere 5 Minuten erwärmen. Einen Teil der Kartoffeln im Topf leicht zerdrücken, damit der Eintopf sämiger wird.
Mit Salz, Pfeffer, Majoran und nach Wunsch etwas Essig abschmecken.', updated_at = now() where slug = 'bohneneintopf-mit-kartoffeln';

update public.recipe_catalog set instructions = 'Tellerlinsen abspülen. Kartoffeln und Möhren schälen und würfeln.
Linsen mit Brühe in einem Topf aufkochen und etwa 15 Minuten köcheln lassen. Kartoffeln und Möhren zugeben und weitere 15–20 Minuten garen, bis alles weich ist.
Würstchen in Scheiben schneiden und in den letzten 5 Minuten im Eintopf erwärmen.
Mit Salz, Pfeffer und Essig abschmecken. Bei Bedarf etwas Wasser oder Brühe ergänzen.', updated_at = now() where slug = 'linseneintopf-mit-wurstchen';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Rote Linsen in einem Sieb gründlich abspülen.
Linsen mit Kokosmilch, gehackten Tomaten und etwa 200 ml Wasser in einen Topf geben. Currypulver einrühren und aufkochen.
Bei kleiner bis mittlerer Hitze 15–18 Minuten köcheln lassen und regelmäßig umrühren, bis die Linsen weich und cremig sind. Bei Bedarf Wasser ergänzen.
Mit Salz und etwas Zitronensaft abschmecken. Dal mit Reis servieren.', updated_at = now() where slug = 'rote-linsen-dal-mit-reis';

update public.recipe_catalog set instructions = 'Backofen auf 180 °C Ober-/Unterhitze vorheizen. Zucchini und Paprika klein würfeln.
Gemüse in einer ofenfesten Pfanne mit etwas Öl 5–6 Minuten anbraten, bis es leicht weich wird.
Eier mit Salz und Pfeffer verquirlen und über das Gemüse gießen. Feta darüberbröseln.
Pfanne in den Ofen stellen und etwa 10–15 Minuten stocken lassen, bis die Mitte fest ist. Kurz abkühlen lassen und in Stücke schneiden.', updated_at = now() where slug = 'bunte-gemuse-frittata';

update public.recipe_catalog set instructions = 'Mais gut abtropfen lassen. Eier mit Mehl, Salz und Pfeffer verrühren und Mais unterheben.
Joghurt mit fein geschnittenem Schnittlauch, Salz und Pfeffer zu einem Kräuterdip verrühren.
Etwas Öl in einer Pfanne erhitzen. Jeweils einen Esslöffel Maismasse hineingeben, flach drücken und bei mittlerer Hitze von beiden Seiten goldbraun braten.
Puffer kurz auf Küchenpapier abtropfen lassen und warm mit dem Kräuterdip servieren.', updated_at = now() where slug = 'mais-puffer-mit-krauterdip';

update public.recipe_catalog set instructions = 'Paprika in Streifen schneiden und Gurke in dünne Stifte schneiden. Joghurt mit Salz, Pfeffer und etwas Zitronensaft verrühren.
Halloumi in Scheiben schneiden und in einer beschichteten Pfanne ohne oder mit wenig Öl von beiden Seiten goldbraun braten.
Wraps kurz erwärmen. Mit Joghurtsauce bestreichen und Paprika, Gurke sowie Halloumi darauf verteilen.
Seiten einschlagen, aufrollen und nach Wunsch in der Pfanne kurz anrösten.', updated_at = now() where slug = 'halloumi-gemuse-wraps';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Baguette längs aufschneiden und auf ein Backblech legen.
Tomaten in Scheiben schneiden und auf den Baguettehälften verteilen. Mozzarella in Scheiben zupfen und darüberlegen.
Im Ofen etwa 8–10 Minuten backen, bis der Käse geschmolzen und das Brot knusprig ist.
Mit frischem Basilikum bestreuen, kurz abkühlen lassen und in Stücke schneiden.', updated_at = now() where slug = 'caprese-baguette-aus-dem-ofen';

update public.recipe_catalog set instructions = 'Eier in kochendem Wasser etwa 8–9 Minuten hart kochen, kalt abschrecken und pellen. Tomaten würfeln.
Brotscheiben in einer Pfanne, im Toaster oder im Ofen rösten. Knoblauchzehe halbieren und die warmen Brote damit leicht einreiben.
Tomaten mit Salz, Pfeffer und etwas Öl vermengen. Eier in Scheiben schneiden.
Tomaten auf dem Brot verteilen und Eierscheiben darauflegen. Sofort servieren, damit das Brot knusprig bleibt.', updated_at = now() where slug = 'bruschetta-mit-tomaten-und-ei';

update public.recipe_catalog set instructions = 'Gurke, Tomaten und Paprika waschen und in mundgerechte Stücke schneiden. Feta würfeln oder zerbröseln.
Gemüse in einer großen Schüssel vermengen. Mit Olivenöl, etwas Essig oder Zitronensaft, Salz und Pfeffer anmachen.
Feta über den Salat geben und vorsichtig unterheben. Einige Minuten durchziehen lassen.
Fladenbrot kurz im Ofen oder Toaster erwärmen und zum Salat reichen.', updated_at = now() where slug = 'bunter-bauernsalat-mit-fladenbrot';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser garen. Erbsen in den letzten 2–3 Minuten zugeben und mitgaren. Abgießen und abkühlen lassen.
Eier in kochendem Wasser etwa 9 Minuten hart kochen, kalt abschrecken, pellen und würfeln.
Joghurt mit Salz, Pfeffer und etwas Senf oder Zitronensaft verrühren. Nudeln, Erbsen und Eier vorsichtig mit dem Dressing vermengen.
Nudelsalat mindestens 10 Minuten durchziehen lassen und vor dem Servieren nochmals abschmecken.', updated_at = now() where slug = 'nudelsalat-mit-erbsen-und-ei';

update public.recipe_catalog set instructions = 'Kartoffeln mit Schale in Salzwasser je nach Größe 20–25 Minuten gar kochen. Abgießen, kurz ausdampfen lassen, pellen und in Scheiben schneiden.
Zwiebel fein würfeln. Gemüsebrühe erhitzen und über die noch warmen Kartoffeln geben. Vorsichtig vermengen und einige Minuten ziehen lassen.
Würstchen in heißem Wasser erwärmen, nicht sprudelnd kochen.
Kartoffelsalat mit Salz, Pfeffer und nach Wunsch Essig oder Senf abschmecken. Mit den Würstchen servieren.', updated_at = now() where slug = 'kartoffelsalat-mit-wurstchen';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen und etwas Nudelwasser auffangen. Möhren schälen und fein raspeln.
Möhren in einer Pfanne mit etwas Öl 5–6 Minuten weich dünsten. Sahne zugießen und kurz köcheln lassen.
Parmesan einrühren und die Sauce mit Salz und Pfeffer würzen. Bei Bedarf mit Nudelwasser cremig verdünnen.
Nudeln unterheben und sofort servieren.', updated_at = now() where slug = 'cremige-mohren-pasta';

update public.recipe_catalog set instructions = 'Couscous in eine Schüssel geben, mit kochender Brühe übergießen und abgedeckt nach Packungsangabe quellen lassen. Anschließend mit einer Gabel auflockern.
Hähnchenbrust in Streifen schneiden und in einer heißen Pfanne mit etwas Öl rundherum goldbraun braten, bis sie vollständig durchgegart ist.
Zitronenschale fein abreiben und Saft auspressen. Joghurt mit etwas Zitronensaft, Salz und Pfeffer verrühren.
Hähnchen mit Zitronensaft abschmecken und mit Couscous sowie Zitronenjoghurt servieren.', updated_at = now() where slug = 'zitronen-hahnchen-mit-couscous';

update public.recipe_catalog set instructions = 'Kartoffeln schälen, würfeln und in Salzwasser 18–20 Minuten weich kochen. Gurke in dünne Scheiben schneiden.
Schnitzel trocken tupfen. Ei verquirlen und Paniermehl auf einen Teller geben. Schnitzel zuerst im Ei, dann im Paniermehl wenden und die Panade leicht andrücken.
Schnitzel in einer Pfanne mit ausreichend Öl bei mittlerer Hitze von beiden Seiten goldbraun braten und vollständig durchgaren. Auf Küchenpapier abtropfen lassen.
Gurke mit Salz, Pfeffer und nach Wunsch Essig sowie etwas Öl anmachen. Kartoffeln abgießen und mit Schnitzel und Gurkensalat servieren.', updated_at = now() where slug = 'schnitzel-mit-gurkensalat';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hähnchenbrust in Streifen schneiden und Zwiebel fein würfeln.
Hähnchen in einer Pfanne mit etwas Öl rundherum anbraten und vollständig durchgaren. Herausnehmen.
Zwiebel im Bratensatz glasig dünsten. Senf und Sahne einrühren und 3–4 Minuten sanft köcheln lassen.
Hähnchen zurück in die Sauce geben, kurz erwärmen und mit Salz sowie Pfeffer abschmecken. Mit Reis servieren.', updated_at = now() where slug = 'cremiges-senf-hahnchen';

update public.recipe_catalog set instructions = 'Lauch gründlich waschen und in Ringe schneiden. Hackfleisch in einem großen Topf mit etwas Öl krümelig und kräftig anbraten.
Lauch zugeben und 4–5 Minuten mitbraten, bis er zusammenfällt. Gemüsebrühe zugießen und aufkochen.
Etwa 10 Minuten köcheln lassen. Schmelzkäse portionsweise einrühren und bei kleiner Hitze schmelzen lassen.
Mit Pfeffer und nach Bedarf Salz abschmecken. Nicht mehr stark kochen und heiß servieren.', updated_at = now() where slug = 'hack-lauch-kase-suppe';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Pizzateig ausrollen und dünn mit passierten Tomaten bestreichen.
Salami klein schneiden und zusammen mit dem geriebenen Käse gleichmäßig auf dem Teig verteilen.
Teig von der langen Seite her fest aufrollen und in etwa 2 cm breite Scheiben schneiden. Schnecken mit etwas Abstand auf ein Backblech legen.
Etwa 12–15 Minuten backen, bis der Teig aufgegangen und der Käse goldbraun ist.', updated_at = now() where slug = 'pizzaschnecken';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hackfleisch in einer Pfanne mit etwas Öl krümelig anbraten.
Kidneybohnen abgießen und abspülen, Mais abtropfen lassen. Bohnen und Mais zum Hackfleisch geben und einige Minuten erhitzen. Mit Paprika, Kreuzkümmel, Salz und Pfeffer würzen.
Joghurt mit etwas Salz und nach Wunsch Limettensaft zu einem schnellen Dressing verrühren.
Reis in Schalen verteilen, Hack-Bohnen-Mischung daraufgeben und mit Joghurtdressing servieren.', updated_at = now() where slug = 'taco-bowl-mit-hack-und-bohnen';

update public.recipe_catalog set instructions = 'Bohnen abgießen und abspülen. Paprika klein würfeln und in einer Pfanne mit etwas Öl 3–4 Minuten anbraten.
Bohnen zugeben und mit einer Gabel grob zerdrücken. Mit Salz, Pfeffer und Paprikapulver würzen.
Tortillas auf einer Hälfte mit Bohnen-Paprika-Mischung und geriebenem Käse belegen, zuklappen.
In einer trockenen Pfanne bei mittlerer Hitze von beiden Seiten goldbraun braten, bis der Käse geschmolzen ist. In Dreiecke schneiden und servieren.', updated_at = now() where slug = 'quesadillas-mit-kase-und-bohnen';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hackfleisch in einer großen Pfanne mit etwas Öl krümelig anbraten.
Mais und Kidneybohnen abgießen. Tomaten sowie Mais und Bohnen zum Hackfleisch geben und 5–7 Minuten köcheln lassen.
Gegarten Reis unterheben und alles gründlich erhitzen. Bei Bedarf einen kleinen Schluck Wasser ergänzen.
Mit Salz, Pfeffer, Paprikapulver und Kreuzkümmel abschmecken und heiß servieren.', updated_at = now() where slug = 'mexikanische-reispfanne';
commit;
