-- Alpha 0.3: individuell ausgearbeitete Zubereitungen, Rezepte 1–20 von 115
-- Nur instructions werden aktualisiert; Zutaten, Zeiten und Portionen bleiben unverändert.
begin;
update public.recipe_catalog set instructions = 'Die Spaghetti in reichlich Salzwasser al dente kochen. Etwas Nudelwasser auffangen.
Die Zwiebel und Möhre fein würfeln. Hackfleisch in einer heißen Pfanne krümelig und kräftig anbraten, Zwiebel und Möhre zugeben und 3–4 Minuten mitbraten.
Tomatenmark einrühren, kurz rösten und die gehackten Tomaten zugeben. Die Sauce 12–15 Minuten sanft köcheln lassen; bei Bedarf mit etwas Nudelwasser verdünnen.
Mit Salz und Pfeffer abschmecken. Spaghetti mit der Bolognese anrichten.', updated_at = now() where slug = 'spaghetti-bolognese';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hähnchenbrust trocken tupfen und in mundgerechte Streifen schneiden; Paprika, Zucchini und Zwiebel klein schneiden.
Hähnchen in einer großen Pfanne mit etwas Öl rundherum goldbraun anbraten und vollständig durchgaren. Kurz aus der Pfanne nehmen.
Zwiebel, Paprika und Zucchini im Bratensatz 5–7 Minuten braten. Hähnchen wieder zugeben und alles vermengen.
Mit Salz, Pfeffer und nach Geschmack Paprikapulver würzen. Mit dem Reis servieren.', updated_at = now() where slug = 'hahnchen-gemuse-pfanne';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Kartoffeln schälen und in dünne Scheiben schneiden. Eine Auflaufform einfetten und die Kartoffeln hineinschichten.
Sahne mit Salz, Pfeffer und etwas Muskat verrühren und über die Kartoffeln gießen. Käse gleichmäßig darüberstreuen.
Das Gratin etwa 40–50 Minuten backen, bis die Kartoffeln weich und die Oberfläche goldbraun ist. Falls es zu dunkel wird, locker abdecken.
Salat waschen, trocken schleudern und nach Belieben mit einem einfachen Essig-Öl-Dressing anmachen. Zum Gratin servieren.', updated_at = now() where slug = 'kartoffelgratin-mit-salat';

update public.recipe_catalog set instructions = 'Hähnchenbrust in dünne Streifen schneiden und Paprika würfeln. Mais abgießen. Joghurt mit Salz, Pfeffer und etwas Zitronensaft oder Paprikapulver verrühren.
Hähnchen in einer heißen Pfanne mit etwas Öl rundherum anbraten und vollständig durchgaren. Paprika kurz mitbraten, Mais zum Schluss unterheben.
Tortillas nach Packungsangabe oder kurz in einer trockenen Pfanne erwärmen.
Joghurtsoße auf den Tortillas verstreichen, Hähnchen-Gemüse-Füllung daraufgeben, Seiten einschlagen und fest aufrollen.', updated_at = now() where slug = 'wraps-mit-hahnchen';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Nudeln in Salzwasser 2 Minuten kürzer als auf der Packung angegeben kochen und abgießen. Kochschinken würfeln.
Nudeln und Schinken in einer Auflaufform verteilen. Sahne mit Salz, Pfeffer und etwas Muskat würzen und darübergießen.
Geriebene Käse gleichmäßig aufstreuen.
Den Auflauf 20–25 Minuten backen, bis die Nudeln gar sind und der Käse goldbraun blubbert. Vor dem Servieren kurz ruhen lassen.', updated_at = now() where slug = 'nudel-schinken-auflauf';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Kichererbsen in ein Sieb geben, abspülen und abtropfen lassen. Gemüse in mundgerechte Stücke schneiden.
Gemüse in einer großen Pfanne oder einem Topf mit etwas Öl 4–5 Minuten anbraten.
Currypaste einrühren, kurz anschwitzen und Kokosmilch sowie Kichererbsen zugeben. 8–10 Minuten sanft köcheln lassen, bis das Gemüse gar, aber noch bissfest ist.
Mit Salz und nach Geschmack etwas Limettensaft abschmecken. Curry mit Reis servieren.', updated_at = now() where slug = 'kichererbsen-curry-mit-reis';

update public.recipe_catalog set instructions = 'Kartoffeln schälen, in gleich große Stücke schneiden und in Salzwasser 20–25 Minuten weich kochen.
Zwiebel fein würfeln. Mit Hackfleisch, Ei und Paniermehl verkneten; mit Salz und Pfeffer würzen. Daraus gleichmäßige Frikadellen formen.
Frikadellen in einer Pfanne mit etwas Öl bei mittlerer Hitze rundherum braun braten und je nach Dicke etwa 10–12 Minuten fertig garen, dabei gelegentlich wenden.
Kartoffeln abgießen und mit etwas Butter oder Milch nach Wunsch stampfen oder als Salzkartoffeln servieren. Frikadellen dazu reichen.', updated_at = now() where slug = 'frikadellen-mit-kartoffeln';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Kartoffeln in kleine Spalten oder Würfel schneiden; Paprika und Zucchini ebenfalls mundgerecht schneiden.
Gemüse auf einem Blech verteilen, mit Öl, Salz, Pfeffer und etwas Oregano vermengen. Kartoffeln möglichst nicht übereinanderlegen.
Etwa 25–30 Minuten rösten und zwischendurch einmal wenden, bis die Kartoffeln weich und die Gemüseränder gebräunt sind.
Feta grob zerbröseln, über das Gemüse geben und weitere 5 Minuten backen. Heiß servieren.', updated_at = now() where slug = 'ofengemuse-mit-feta';

update public.recipe_catalog set instructions = 'Zwiebel fein würfeln. In einem Topf mit etwas Öl glasig dünsten.
Gehackte Tomaten und Gemüsebrühe zugeben, aufkochen und 10–12 Minuten leise köcheln lassen.
Suppe nach Wunsch fein pürieren. Sahne einrühren und nochmals kurz erhitzen; mit Salz, Pfeffer und einer Prise Zucker abschmecken.
Baguette in Scheiben schneiden und frisch dazu reichen, nach Wunsch kurz aufbacken oder toasten.', updated_at = now() where slug = 'tomatensuppe-mit-brot';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Kartoffeln waschen, in Spalten schneiden, mit etwas Öl, Salz und Pfeffer mischen und auf einem Blech verteilen. 25–30 Minuten backen.
Lachs trocken tupfen und mit Salz, Pfeffer sowie etwas Zitronensaft würzen. Joghurt mit Zitronenabrieb, etwas Saft und einer Prise Salz zu einem Dip verrühren.
Lachs zu den Kartoffeln auf das Blech legen und je nach Dicke etwa 10–15 Minuten garen, bis er gerade eben durch und noch saftig ist.
Mit Zitronenjoghurt und den restlichen Zitronenspalten servieren.', updated_at = now() where slug = 'lachs-mit-ofenkartoffeln';

update public.recipe_catalog set instructions = 'Penne in reichlich Salzwasser al dente kochen und etwas Nudelwasser auffangen.
Zwiebel fein würfeln und in einer Pfanne mit etwas Öl glasig dünsten. Tomatenmark einrühren und kurz anrösten.
Gehackte Tomaten zugeben und die Sauce 10 Minuten köcheln lassen. Mit Salz, Pfeffer und nach Wunsch Oregano würzen.
Penne unter die Sauce mischen, bei Bedarf mit Nudelwasser geschmeidig machen und mit geriebenem Parmesan servieren.', updated_at = now() where slug = 'penne-in-tomatensosse';

update public.recipe_catalog set instructions = 'Kartoffeln in kleine Würfel schneiden und in Salzwasser 8–10 Minuten vorgaren; abgießen. Paprika und Zwiebel würfeln.
Zwiebel und Kartoffeln in einer großen beschichteten Pfanne mit Öl goldbraun braten. Paprika zugeben und 3–4 Minuten mitbraten.
Eier mit Milch, Salz und Pfeffer verquirlen und gleichmäßig über das Gemüse gießen. Bei kleiner bis mittlerer Hitze stocken lassen.
Wenn die Oberfläche fast fest ist, das Omelett vorsichtig wenden oder mit Deckel fertig stocken lassen. In Stücke schneiden und servieren.', updated_at = now() where slug = 'bauernomelett';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Blattspinat auftauen beziehungsweise waschen und in einer Pfanne zusammenfallen lassen; überschüssige Flüssigkeit ausdrücken.
Spinat mit Ricotta, Salz, Pfeffer und etwas Muskat verrühren. Eine dünne Schicht passierte Tomaten in eine Auflaufform geben.
Lasagneplatten, Spinat-Ricotta-Mischung und Tomatensauce abwechselnd einschichten. Mit Tomatensauce abschließen und Käse darüberstreuen.
Etwa 30–35 Minuten backen, bis die Platten weich und die Oberfläche goldbraun ist. Vor dem Anschneiden 5 Minuten ruhen lassen.', updated_at = now() where slug = 'spinat-ricotta-lasagne';

update public.recipe_catalog set instructions = 'Gnocchi nach Packungsangabe vorbereiten. Cherrytomaten halbieren und Mozzarella in Stücke zupfen.
Gnocchi in einer großen Pfanne mit etwas Öl rundherum goldbraun anbraten.
Tomaten zugeben und 3–4 Minuten mitbraten, bis sie leicht aufplatzen. Mit Salz und Pfeffer würzen.
Pfanne vom Herd ziehen, Mozzarella und Basilikum unterheben und kurz anschmelzen lassen. Sofort servieren.', updated_at = now() where slug = 'gnocchi-mit-tomate-und-mozzarella';

update public.recipe_catalog set instructions = 'Tortellini nach Packungsangabe in Salzwasser garen und abgießen. Erbsen kurz in den letzten 2–3 Minuten mitgaren oder separat blanchieren.
Kochschinken in Streifen schneiden und in einer Pfanne kurz anbraten.
Sahne zugießen, Erbsen ergänzen und die Sauce 3–4 Minuten sanft köcheln lassen. Mit Pfeffer und wenig Salz abschmecken.
Tortellini unterheben, vorsichtig erwärmen und sofort servieren.', updated_at = now() where slug = 'tortellini-in-schinken-sahne-sosse';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen und eine kleine Tasse Nudelwasser auffangen. Zucchini und Paprika in mundgerechte Stücke schneiden.
Gemüse in einer großen Pfanne mit etwas Öl 5–6 Minuten anbraten, bis es weich, aber noch bissfest ist.
Pesto mit 2–3 Esslöffeln Nudelwasser verrühren und zum Gemüse geben. Nudeln abgießen und direkt untermischen.
Mit Parmesan bestreuen und nach Bedarf mit weiterem Nudelwasser cremig rühren. Sofort servieren.', updated_at = now() where slug = 'pesto-nudeln-mit-gemuse';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Tomaten in Scheiben oder Hälften schneiden und auf einem kleinen Blech verteilen.
Mit Olivenöl, Salz und Pfeffer würzen und etwa 10 Minuten backen, bis die Tomaten weich werden.
Mozzarella in Scheiben zupfen oder schneiden, auf den Tomaten verteilen und weitere 5–7 Minuten backen, bis er schmilzt.
Mit Basilikum bestreuen und mit frisch aufgebackenem oder geröstetem Baguette servieren.', updated_at = now() where slug = 'tomaten-mozzarella-blech';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Brötchen halbieren und mit passierten Tomaten dünn bestreichen.
Kochschinken klein schneiden und mit dem abgetropften Mais auf den Brötchen verteilen.
Geriebenen Käse darüberstreuen und die belegten Brötchen auf ein Backblech legen.
Etwa 10–15 Minuten backen, bis der Käse geschmolzen und leicht gebräunt ist. Warm servieren.', updated_at = now() where slug = 'pizzabrotchen';

update public.recipe_catalog set instructions = 'Backofen samt Blech auf 220 °C Ober-/Unterhitze vorheizen. Zwiebel in feine Ringe schneiden.
Flammkuchenteig auf Backpapier ausrollen und dünn mit Schmand bestreichen. Mit Pfeffer würzen.
Zwiebelringe und Speckwürfel gleichmäßig darauf verteilen.
Auf dem heißen Blech etwa 10–15 Minuten backen, bis der Rand knusprig und der Belag leicht gebräunt ist.', updated_at = now() where slug = 'flammkuchen-mit-speck';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen und gut abtropfen lassen. TK-Gemüse nach Bedarf kurz antauen lassen.
Gemüse in einer großen Pfanne mit etwas Öl 5–7 Minuten braten. Reis zugeben und unter Rühren erhitzen.
Sojasoße einrühren. Reis-Gemüse-Mischung an den Pfannenrand schieben, Eier in die freie Mitte geben und stocken lassen.
Eier in Stücke teilen und unter den Reis heben. Abschmecken und heiß servieren.', updated_at = now() where slug = 'gemuse-reispfanne';
commit;
