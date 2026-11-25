-- Alpha 0.3: vollständige, individuelle Zubereitungsschritte für den gesamten Rezeptkatalog
-- Enthält 115 eindeutige Rezepte. Zutaten, Mengen, Zeiten und Portionen bleiben unverändert.
-- In Supabase SQL Editor vollständig ausführen.
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

update public.recipe_catalog set instructions = 'Gekochten Reis möglichst kalt verwenden und Klümpchen mit einer Gabel lösen. Frühlingszwiebeln in Ringe schneiden; Erbsen bereitstellen.
Eier in einer Schüssel verquirlen. In einer großen heißen Pfanne mit etwas Öl kurz zu Rührei stocken lassen und herausnehmen.
Erbsen und Frühlingszwiebeln in derselben Pfanne anbraten. Reis zugeben und unter Rühren kräftig erhitzen, bis er heiß und locker ist.
Sojasoße und Rührei unterheben, abschmecken und sofort servieren.', updated_at = now() where slug = 'gebratener-reis-mit-ei';

update public.recipe_catalog set instructions = 'Paprika würfeln. Hackfleisch in einem großen Topf mit etwas Öl krümelig und kräftig anbraten.
Zwiebel und Paprika zugeben und einige Minuten mitbraten. Gehackte Tomaten einrühren und aufkochen.
Abgespülte Kidneybohnen und abgetropften Mais zugeben. Das Chili 15–20 Minuten offen sanft köcheln lassen, gelegentlich umrühren.
Mit Salz, Pfeffer, Paprikapulver und nach Wunsch Chili abschmecken. Dazu passen Brot oder Reis.', updated_at = now() where slug = 'chili-con-carne';

update public.recipe_catalog set instructions = 'Paprika würfeln. Rote Linsen in einem Sieb abspülen.
Paprika in einem Topf mit etwas Öl 3–4 Minuten anbraten. Tomaten und etwa 150 ml Wasser zugeben, dann die Linsen einrühren.
Abgespülte Kidneybohnen und abgetropften Mais ergänzen. 15–20 Minuten köcheln lassen, bis die Linsen weich sind; bei Bedarf Wasser nachgießen.
Mit Salz, Pfeffer, Kreuzkümmel und Paprikapulver abschmecken. Vor dem Servieren kurz durchziehen lassen.', updated_at = now() where slug = 'chili-sin-carne';

update public.recipe_catalog set instructions = 'Zwiebel und Möhre fein würfeln. Spaghetti in reichlich Salzwasser al dente kochen.
Zwiebel und Möhre in einem Topf mit etwas Öl anschwitzen. Rote Linsen zugeben und kurz mitrühren.
Gehackte Tomaten sowie etwa 200 ml Wasser einrühren. 12–15 Minuten köcheln lassen, bis die Linsen weich und die Sauce sämig sind; bei Bedarf Flüssigkeit ergänzen.
Mit Salz, Pfeffer und Oregano abschmecken. Spaghetti mit der Linsen-Bolognese servieren.', updated_at = now() where slug = 'linsen-bolognese';

update public.recipe_catalog set instructions = 'Zucchini und Paprika würfeln. Kichererbsen abgießen und abspülen.
Gemüse in einer großen Pfanne mit etwas Öl 5–6 Minuten anbraten. Kichererbsen zugeben und kurz mitbraten.
Couscous in eine Schüssel geben, mit heißer Gemüsebrühe übergießen und abgedeckt 5 Minuten quellen lassen. Anschließend mit einer Gabel auflockern.
Couscous unter das Gemüse heben, mit Salz, Pfeffer und etwas Zitronensaft abschmecken und servieren.', updated_at = now() where slug = 'couscous-gemuse-pfanne';

update public.recipe_catalog set instructions = 'Gurke und Tomaten klein schneiden. Joghurt mit Salz, Pfeffer und nach Wunsch Zitronensaft zu einem Dip verrühren.
Falafel nach Packungsangabe in Pfanne, Ofen oder Airfryer knusprig erwärmen.
Wraps kurz erwärmen, damit sie geschmeidig werden. Mit Joghurt-Dip bestreichen.
Gurke, Tomaten und Falafel darauf verteilen, Seiten einschlagen und aufrollen.', updated_at = now() where slug = 'falafel-wraps';

update public.recipe_catalog set instructions = 'Paprika und Zwiebel würfeln. Zwiebel in einer großen Pfanne mit etwas Öl glasig dünsten, Paprika zugeben und 5 Minuten braten.
Gehackte Tomaten einrühren und 8–10 Minuten köcheln lassen, bis die Paprika weich und die Sauce etwas eingedickt ist. Mit Salz, Pfeffer und Paprikapulver würzen.
Mit einem Löffel fünf Mulden in die Sauce drücken und die Eier hineinschlagen. Zugedeckt bei kleiner Hitze stocken lassen, bis das Eiweiß fest ist.
Baguette in Scheiben schneiden und zum Auftunken der Tomatensauce dazu servieren.', updated_at = now() where slug = 'shakshuka-mit-brot';

update public.recipe_catalog set instructions = 'Kartoffeln und Möhren schälen und würfeln. Lauch gründlich waschen und in Ringe schneiden.
Das Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Gemüsebrühe zugießen und aufkochen.
Etwa 18–20 Minuten köcheln lassen, bis Kartoffeln und Möhren weich sind. Einen Teil der Suppe grob zerstampfen oder kurz pürieren, damit sie sämig wird.
Sahne einrühren, mit Salz, Pfeffer und Muskat abschmecken und nochmals erhitzen, nicht stark kochen.', updated_at = now() where slug = 'kartoffel-gemuse-suppe';

update public.recipe_catalog set instructions = 'Möhren schälen und in Scheiben schneiden. Zwiebel würfeln und Ingwer fein reiben.
Zwiebel in einem Topf mit etwas Öl glasig dünsten. Möhren und Ingwer zugeben und 2 Minuten mit anschwitzen.
Gemüsebrühe zugießen und 15–18 Minuten köcheln lassen, bis die Möhren weich sind. Suppe fein pürieren.
Kokosmilch einrühren, nochmals erhitzen und mit Salz, Pfeffer sowie etwas Zitronen- oder Limettensaft abschmecken.', updated_at = now() where slug = 'mohren-ingwer-suppe';

update public.recipe_catalog set instructions = 'Brokkoli in Röschen teilen, den Strunk schälen und würfeln. Kartoffel schälen und klein schneiden.
Brokkoli und Kartoffel in einen Topf geben, Gemüsebrühe zugießen und aufkochen.
Etwa 12–15 Minuten köcheln lassen, bis alles weich ist. Einige Brokkoliröschen für die Einlage herausnehmen, den Rest fein pürieren.
Sahne einrühren, die zurückgelegten Röschen zugeben und mit Salz, Pfeffer und Muskat abschmecken.', updated_at = now() where slug = 'brokkoli-cremesuppe';

update public.recipe_catalog set instructions = 'Kartoffeln schälen und würfeln. Gemüsebrühe in einem Topf aufkochen und Kartoffeln sowie Erbsen hineingeben.
Etwa 15 Minuten köcheln lassen, bis die Kartoffeln weich sind. Einen Teil der Suppe grob pürieren oder mit dem Kartoffelstampfer zerdrücken.
Würstchen in Scheiben schneiden und in der Suppe 4–5 Minuten erwärmen, nicht sprudelnd kochen.
Mit Pfeffer und nach Bedarf Salz abschmecken und heiß servieren.', updated_at = now() where slug = 'erbsensuppe-mit-wurstchen';

update public.recipe_catalog set instructions = 'Zwiebel fein würfeln und in einem Topf mit etwas Öl glasig dünsten. Reis zugeben und kurz mitrösten.
Gehackte Tomaten und etwa 250 ml Wasser oder Brühe einrühren. Aufkochen, dann zugedeckt bei kleiner Hitze nach Packungsangabe garen; gelegentlich umrühren und bei Bedarf Flüssigkeit ergänzen.
Wenn der Reis weich ist, mit Salz, Pfeffer und Oregano abschmecken.
Feta zerbröseln und kurz vor dem Servieren unterheben oder darüberstreuen.', updated_at = now() where slug = 'tomatenreis-mit-feta';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Paprika würfeln.
Hackfleisch in einer großen Pfanne mit etwas Öl krümelig anbraten. Paprika zugeben und 4–5 Minuten mitbraten.
Brühe zugießen und einige Minuten köcheln lassen, bis die Paprika weich, aber noch bissfest ist. Gegarten Reis unterheben und alles gründlich erhitzen.
Mit Salz, Pfeffer und Paprikapulver abschmecken und direkt aus der Pfanne servieren.', updated_at = now() where slug = 'paprika-reis-pfanne-mit-hack';

update public.recipe_catalog set instructions = 'Zucchini in Halbmonde schneiden und Zwiebel fein würfeln.
Hackfleisch in einer großen Pfanne mit etwas Öl krümelig anbraten. Zwiebel zugeben und glasig dünsten.
Zucchini ergänzen und 5–7 Minuten braten, bis sie leicht gebräunt und noch bissfest sind.
Schmand einrühren, bei kleiner Hitze erwärmen und mit Salz, Pfeffer sowie Paprikapulver abschmecken. Nicht mehr stark kochen.', updated_at = now() where slug = 'zucchini-hack-pfanne';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen. Hähnchenbrust in Streifen schneiden, Champignons putzen und in Scheiben schneiden; Zwiebel würfeln.
Hähnchen in einer Pfanne mit Öl rundherum goldbraun anbraten und vollständig durchgaren. Herausnehmen.
Zwiebel und Champignons im Bratensatz braten, bis die Flüssigkeit der Pilze weitgehend verdampft ist. Sahne zugießen und einige Minuten sämig einkochen.
Hähnchen wieder zugeben, mit Salz und Pfeffer abschmecken und mit den Nudeln servieren.', updated_at = now() where slug = 'hahnchen-in-sahnesosse';

update public.recipe_catalog set instructions = 'Champignons putzen und in Scheiben schneiden. Gemüsebrühe in einem separaten Topf erhitzen und warm halten.
Pilze in einem breiten Topf mit etwas Öl kräftig anbraten, bis sie Farbe bekommen. Herausnehmen.
Risottoreis im selben Topf kurz anschwitzen. Eine Kelle heiße Brühe zugeben und unter Rühren einkochen lassen. Nach und nach weitere Brühe zugießen, bis der Reis nach etwa 18–20 Minuten cremig und bissfest ist.
Pilze und Parmesan unterheben. Mit Pfeffer und bei Bedarf Salz abschmecken und sofort servieren.', updated_at = now() where slug = 'cremiges-pilzrisotto';

update public.recipe_catalog set instructions = 'Milch in einem Topf langsam erhitzen. Milchreis einrühren und einmal aufkochen lassen.
Bei sehr kleiner Hitze zugedeckt etwa 30 Minuten quellen lassen. Regelmäßig umrühren und bei Bedarf einen Schluck Milch ergänzen, damit nichts ansetzt.
Äpfel entkernen und würfeln. In einer kleinen Pfanne mit etwas Zucker und Zimt 5–7 Minuten weich dünsten.
Milchreis mit Zucker nach Geschmack abschmecken und mit den warmen Zimtäpfeln servieren.', updated_at = now() where slug = 'milchreis-mit-apfel-zimt';

update public.recipe_catalog set instructions = 'Eier und Milch in einer flachen Schale verquirlen. Toastscheiben von beiden Seiten kurz in der Mischung wenden, damit sie sich vollsaugen, aber nicht zerfallen.
Etwas Butter in einer Pfanne erhitzen. Toastscheiben portionsweise bei mittlerer Hitze von beiden Seiten goldbraun braten.
Äpfel entkernen und in Spalten schneiden. Nach Wunsch roh dazu reichen oder kurz in der Pfanne erwärmen.
Arme Ritter mit Zimt bestäuben und zusammen mit dem Obst servieren.', updated_at = now() where slug = 'arme-ritter-mit-obst';

update public.recipe_catalog set instructions = 'Mehl in eine Schüssel geben. Eier und Milch nach und nach einrühren, bis ein glatter, dünnflüssiger Teig entsteht. 5 Minuten ruhen lassen.
Eine beschichtete Pfanne leicht einfetten und eine kleine Kelle Teig hineingeben. Durch Schwenken dünn verteilen.
Bei mittlerer Hitze backen, bis die Oberfläche nicht mehr flüssig ist, dann wenden und die zweite Seite goldgelb backen. Mit dem restlichen Teig wiederholen.
Pfannkuchen warm halten und mit Apfelmus servieren.', updated_at = now() where slug = 'pfannkuchen-mit-apfelmus';

update public.recipe_catalog set instructions = 'Mehl, Eier und Milch zu einem glatten Teig verrühren. Zucker und Rosinen unterheben.
Etwas Butter in einer großen beschichteten Pfanne erhitzen und den Teig hineingießen. Bei mittlerer bis kleiner Hitze stocken lassen, bis die Unterseite goldbraun und die Oberseite weitgehend fest ist.
Teig vierteln, wenden und kurz weiterbacken. Anschließend mit zwei Pfannenwendern in mundgerechte Stücke zerteilen.
Die Stücke unter gelegentlichem Wenden goldbraun fertig braten und warm servieren.', updated_at = now() where slug = 'kaiserschmarrn';

update public.recipe_catalog set instructions = 'Kartoffeln schälen und fein raspeln. In einem sauberen Küchentuch portionsweise kräftig ausdrücken, damit die Puffer knusprig werden.
Kartoffelraspel mit Ei, Mehl, Salz und Pfeffer vermengen. Quark mit fein geschnittenem Schnittlauch, Salz und etwas Pfeffer glatt rühren.
Öl in einer Pfanne erhitzen. Jeweils einen Esslöffel Kartoffelmasse hineingeben, flach drücken und bei mittlerer Hitze von beiden Seiten goldbraun braten.
Puffer auf Küchenpapier kurz abtropfen lassen und heiß mit Kräuterquark servieren.', updated_at = now() where slug = 'kartoffelpuffer-mit-krauterquark';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Kartoffeln gründlich waschen, trocken tupfen und mehrfach mit einer Gabel einstechen.
Kartoffeln auf ein Blech legen und je nach Größe etwa 40–55 Minuten backen, bis sie innen weich sind.
Quark mit Joghurt cremig rühren. Schnittlauch fein schneiden und unterheben; mit Salz und Pfeffer abschmecken.
Kartoffeln längs aufschneiden, leicht auseinanderdrücken und mit dem Kräuterquark servieren.', updated_at = now() where slug = 'ofenkartoffeln-mit-krauterquark';

update public.recipe_catalog set instructions = 'Kartoffeln in Scheiben oder Würfel schneiden. Zwiebel fein würfeln.
Öl in einer großen Pfanne erhitzen und Kartoffeln möglichst in einer Lage hineingeben. Bei mittlerer bis hoher Hitze zunächst einige Minuten braten, dann wenden und rundherum goldbraun braten.
Zwiebel zugeben und weitere 4–5 Minuten mitbraten. Mit Salz und Pfeffer würzen.
In einer zweiten Pfanne Spiegeleier braten und auf den Bratkartoffeln anrichten.', updated_at = now() where slug = 'bratkartoffeln-mit-spiegelei';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser nach Packungsangabe garen. Würstchen in Scheiben schneiden, Paprika und Zwiebel würfeln.
Zwiebel in einem Topf mit etwas Öl glasig dünsten. Paprika zugeben und 4 Minuten mitbraten.
Gehackte Tomaten einrühren und 8–10 Minuten köcheln lassen, bis die Paprika weich ist. Würstchenscheiben in den letzten Minuten darin erwärmen.
Mit Paprikapulver, Salz und Pfeffer abschmecken und mit den Nudeln servieren.', updated_at = now() where slug = 'wurstchengulasch';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hackfleisch mit Ei, Paniermehl, Salz und Pfeffer verkneten und kleine Bällchen formen.
Hackbällchen in einer großen Pfanne mit etwas Öl rundherum anbraten, bis sie Farbe bekommen. Sie müssen innen noch nicht ganz gar sein.
Passierte Tomaten zugießen, vorsichtig wenden und zugedeckt 10–12 Minuten sanft köcheln lassen, bis die Bällchen vollständig durchgegart sind.
Sauce abschmecken und Hackbällchen mit Reis servieren.', updated_at = now() where slug = 'schnelle-hackballchen-in-tomatensosse';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Putenbrust in feine Streifen schneiden und Champignons in Scheiben schneiden.
Putenstreifen portionsweise in einer heißen Pfanne mit Öl scharf anbraten, bis sie rundherum Farbe haben und durchgegart sind. Herausnehmen.
Champignons im Bratensatz kräftig braten, bis ihre Flüssigkeit verdampft ist. Sahne zugießen und kurz sämig einkochen.
Pute wieder in die Pfanne geben, mit Salz und Pfeffer abschmecken und mit Reis servieren.', updated_at = now() where slug = 'putengeschnetzeltes-mit-reis';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hähnchenbrust würfeln und Paprika in Streifen schneiden.
Hähnchen in einem Topf oder einer tiefen Pfanne mit etwas Öl rundherum anbraten und vollständig durchgaren. Paprika zugeben und 3 Minuten mitbraten.
Currypaste einrühren und kurz anschwitzen. Kokosmilch zugießen und 8–10 Minuten sanft köcheln lassen.
Mit Salz und nach Wunsch Limettensaft abschmecken. Curry mit Reis servieren.', updated_at = now() where slug = 'hahnchen-curry-mit-kokosmilch';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Brokkoli in kleine Röschen teilen und Hähnchenbrust in mundgerechte Stücke schneiden.
Hähnchen in einer großen Pfanne mit etwas Öl rundherum goldbraun anbraten und vollständig durchgaren. Herausnehmen.
Brokkoli mit einem kleinen Schluck Wasser in die Pfanne geben und zugedeckt 4–5 Minuten bissfest dünsten. Hähnchen zurückgeben.
Teriyakisoße zugeben und alles 1–2 Minuten glasieren lassen. Mit Reis servieren.', updated_at = now() where slug = 'teriyaki-hahnchen-mit-reis';

update public.recipe_catalog set instructions = 'Mie-Nudeln nach Packungsangabe garen, abgießen und kurz abtropfen lassen. Wokgemüse bereitstellen.
Gemüse in einer sehr heißen großen Pfanne oder im Wok mit etwas Öl 4–5 Minuten unter Rühren braten.
Gemüse an den Rand schieben. Eier in die freie Fläche geben, stocken lassen und grob zerteilen.
Nudeln zugeben, Sojasoße darübergeben und alles kräftig durchschwenken. Heiß servieren.', updated_at = now() where slug = 'asia-nudeln-mit-gemuse';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen und etwas Kochwasser auffangen. Paprika und Möhre in feine Streifen schneiden.
Gemüse in einer großen Pfanne mit etwas Öl 4–5 Minuten bissfest braten.
Erdnussmus mit Sojasoße und 3–4 Esslöffeln heißem Nudelwasser glatt rühren, bis eine cremige Sauce entsteht.
Nudeln zum Gemüse geben, Erdnusssauce unterheben und bei Bedarf mit weiterem Nudelwasser verdünnen. Sofort servieren.', updated_at = now() where slug = 'erdnussnudeln-mit-gemuse';

update public.recipe_catalog set instructions = 'Süßkartoffel schälen und in kleine Würfel schneiden. Kichererbsen abgießen und abspülen.
Süßkartoffelwürfel in einer großen Pfanne mit etwas Öl 8–10 Minuten braten; bei Bedarf einen kleinen Schluck Wasser zugeben und kurz zugedeckt garen.
Kichererbsen und Kokosmilch einrühren und weitere 4–5 Minuten köcheln lassen, bis die Süßkartoffel weich ist.
Spinat unterheben und zusammenfallen lassen. Mit Salz, Pfeffer und Currypulver abschmecken.', updated_at = now() where slug = 'susskartoffel-kichererbsen-pfanne';

update public.recipe_catalog set instructions = 'Bulgur nach Packungsangabe in Brühe garen oder mit kochender Brühe übergießen und quellen lassen. Zucchini, Paprika und Möhre würfeln.
Möhre in einer großen Pfanne mit etwas Öl 3 Minuten anbraten. Zucchini und Paprika zugeben und weitere 5 Minuten braten.
Gegarten Bulgur unterheben und alles mit Salz, Pfeffer sowie etwas Zitronensaft abschmecken.
Bei Bedarf einen Schluck Brühe zugeben, kurz erhitzen und servieren.', updated_at = now() where slug = 'bulgur-gemuse-pfanne';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hackfleisch mit Ei, Oregano, Salz und Pfeffer vermengen und kleine Bällchen formen.
Hackbällchen in einer Pfanne mit etwas Öl rundherum kräftig anbraten. Hitze reduzieren und weitere 6–8 Minuten garen, bis sie innen durch sind.
Tzatziki nach Packungsangabe bereitstellen oder mit Gurke, Joghurt und Knoblauch anrühren, falls diese Zutaten vorhanden sind.
Hackbällchen mit Reis und Tzatziki servieren.', updated_at = now() where slug = 'griechische-hackballchen-mit-reis';

update public.recipe_catalog set instructions = 'Gyrosfleisch in einer heißen Pfanne ohne zusätzliches Fett oder mit wenig Öl kräftig anbraten und vollständig durchgaren.
Pitabrote nach Packungsangabe im Ofen, Toaster oder in einer trockenen Pfanne erwärmen.
Krautsalat abtropfen lassen und Tzatziki glatt rühren.
Pitabrote aufschneiden, mit Gyrosfleisch und Krautsalat füllen und Tzatziki dazugeben oder separat servieren.', updated_at = now() where slug = 'gyros-pita-mit-krautsalat';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hähnchenbrust in dünne Streifen schneiden und Gurke sowie Tomaten würfeln.
Hähnchen mit etwas Öl in einer heißen Pfanne rundherum kräftig anbraten und vollständig durchgaren. Mit Salz, Pfeffer und Paprikapulver würzen.
Joghurt mit Salz, Pfeffer und nach Wunsch Knoblauch oder Zitronensaft zu einer schnellen Sauce verrühren.
Reis, Hähnchen, Gurke und Tomaten auf Tellern anrichten und mit Joghurtsauce servieren.', updated_at = now() where slug = 'hahnchen-doner-teller';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen. Erbsen in den letzten 2 Minuten mit ins Kochwasser geben und anschließend alles abgießen.
Thunfisch abtropfen lassen und mit Joghurt in einer großen Schüssel verrühren. Mit Salz, Pfeffer und etwas Zitronensaft würzen.
Warme Nudeln und Erbsen unterheben. Bei Bedarf einen Löffel Nudelwasser zugeben, damit der Salat saftig bleibt.
Mit Pfeffer abschmecken und lauwarm servieren.', updated_at = now() where slug = 'thunfisch-nudelsalat-warm';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen und etwas Nudelwasser auffangen. Lachs in mundgerechte Würfel schneiden.
Lachs in einer beschichteten Pfanne mit etwas Öl vorsichtig rundherum anbraten, bis er gerade eben durch ist. Herausnehmen.
Spinat in der Pfanne zusammenfallen lassen, Sahne zugießen und 3–4 Minuten sanft köcheln lassen. Mit Salz und Pfeffer würzen.
Nudeln und Lachs vorsichtig unterheben. Bei Bedarf mit Nudelwasser cremig machen und sofort servieren.', updated_at = now() where slug = 'lachs-spinat-pasta';

update public.recipe_catalog set instructions = 'Kartoffeln schälen, würfeln und in Salzwasser 18–20 Minuten weich kochen. Erbsen in den letzten 3–4 Minuten mitgaren.
Fischstäbchen nach Packungsangabe in Pfanne oder Backofen goldbraun und knusprig zubereiten.
Kartoffeln abgießen und mit Milch stampfen, bis ein cremiger Kartoffelstampf entsteht. Mit Salz und Muskat abschmecken.
Fischstäbchen mit Kartoffelstampf und Erbsen anrichten.', updated_at = now() where slug = 'fischstabchen-mit-kartoffelstampf';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Zwiebel fein würfeln und in einer tiefen Pfanne mit etwas Öl glasig dünsten.
Gehackte Tomaten zugeben, mit Salz und Pfeffer würzen und 8–10 Minuten sanft köcheln lassen.
Kabeljau trocken tupfen, in Portionsstücke teilen und in die Tomatensauce legen. Zugedeckt bei kleiner Hitze etwa 6–10 Minuten gar ziehen lassen, bis der Fisch undurchsichtig ist und leicht zerfällt.
Fisch vorsichtig mit der Sauce und dem Reis anrichten.', updated_at = now() where slug = 'kabeljau-in-tomatensosse';

update public.recipe_catalog set instructions = 'Nudeln in Salzwasser al dente kochen. Zwiebel fein würfeln und in einer Pfanne mit etwas Öl glasig dünsten.
Gehackte Tomaten zugeben und 8–10 Minuten köcheln lassen. Thunfisch abtropfen lassen und grob zerteilen.
Thunfisch unter die Tomatensauce heben und 2 Minuten erwärmen. Mit Salz, Pfeffer und Oregano abschmecken.
Nudeln abgießen, mit der Sauce vermengen und heiß servieren.', updated_at = now() where slug = 'thunfisch-tomaten-pasta';

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

update public.recipe_catalog set instructions = 'Backofen auf 220 °C Ober-/Unterhitze vorheizen oder Airfryer auf 200 °C vorheizen. Süßkartoffeln schälen und in gleichmäßige Stifte schneiden.
Stifte mit Öl, Salz und Paprikapulver vermengen. Für knusprigere Pommes nicht zu dicht auf dem Blech beziehungsweise im Korb verteilen.
Im Ofen etwa 25–30 Minuten oder im Airfryer etwa 15–20 Minuten backen, zwischendurch wenden beziehungsweise Korb schütteln.
Quark mit Schnittlauch, Salz und Pfeffer verrühren. Pommes direkt heiß mit dem Dip servieren.', updated_at = now() where slug = 'susskartoffel-pommes-mit-dip';

update public.recipe_catalog set instructions = 'Airfryer auf 190 °C vorheizen. Kartoffeln in kleine Spalten schneiden und mit etwas Öl, Salz und Paprikapulver vermengen.
Kartoffeln zunächst 10 Minuten im Airfryer garen. Hähnchenbrust in gleichmäßige Stücke schneiden, Paprika würfeln und mit wenig Öl sowie Gewürzen mischen.
Hähnchen und Paprika zu den Kartoffeln geben und weitere 10–15 Minuten garen. Zwischendurch den Korb schütteln; Hähnchen muss vollständig durchgegart sein.
Alles kurz ruhen lassen und heiß servieren.', updated_at = now() where slug = 'airfryer-hahnchen-mit-gemuse';

update public.recipe_catalog set instructions = 'Airfryer auf 180 °C vorheizen. Kartoffeln in kleine Würfel oder Spalten schneiden, leicht ölen und salzen. Je nach Größe 12–15 Minuten vorgaren.
Brokkoli in kleine Röschen teilen. Lachs trocken tupfen und mit Salz, Pfeffer sowie etwas Zitronensaft würzen.
Brokkoli zu den Kartoffeln geben und 4–5 Minuten vorgaren. Lachsfilets dazulegen und weitere 7–10 Minuten garen, bis der Fisch gerade eben durch ist.
Mit frischer Zitrone servieren. Garzeit je nach Dicke des Lachses und Gerät prüfen.', updated_at = now() where slug = 'airfryer-lachs-mit-brokkoli';

update public.recipe_catalog set instructions = 'Möhren raspeln und Zucchini grob raspeln. Zucchini in einem sauberen Tuch kräftig ausdrücken, damit die Masse nicht zu feucht wird.
Gemüse mit Eiern, Haferflocken, Quark, Salz und Pfeffer vermengen. 5 Minuten quellen lassen und anschließend kleine flache Frikadellen formen.
Airfryer auf 180 °C vorheizen. Frikadellen leicht mit Öl bepinseln und mit etwas Abstand in den Korb legen.
Etwa 12–16 Minuten backen, nach der Hälfte vorsichtig wenden, bis sie außen goldbraun und innen fest sind.', updated_at = now() where slug = 'airfryer-gemusefrikadellen';

update public.recipe_catalog set instructions = 'Airfryer auf 200 °C vorheizen. Kartoffeln gründlich waschen und in gleichmäßige Spalten schneiden; gut trocken tupfen.
Kartoffelspalten mit Öl, Paprikapulver, Salz und Pfeffer vermengen. Möglichst in einer lockeren Lage in den Korb geben.
Etwa 18–22 Minuten backen und den Korb zwischendurch zwei- bis dreimal schütteln, bis die Wedges außen knusprig und innen weich sind.
Joghurt mit Salz und Pfeffer verrühren. Wedges heiß mit dem Dip servieren.', updated_at = now() where slug = 'knusprige-kartoffel-wedges-mit-dip';

update public.recipe_catalog set instructions = 'Airfryer auf 190 °C vorheizen. Hähnchenbrust in mundgerechte Stücke schneiden. Ei in einem tiefen Teller verquirlen, Paniermehl in einen zweiten Teller geben.
Hähnchenstücke erst im Ei, dann im Paniermehl wenden und die Panade leicht andrücken. Möhren schälen und in Sticks schneiden.
Nuggets leicht mit Öl besprühen und mit etwas Abstand in den Airfryer legen. Etwa 10–14 Minuten garen, nach der Hälfte wenden; Hähnchen muss innen vollständig durch sein.
Möhrensticks roh dazu reichen oder für die letzten 8–10 Minuten mit in den Airfryer geben.', updated_at = now() where slug = 'hahnchen-nuggets-mit-mohrensticks';

update public.recipe_catalog set instructions = 'Paprika und Champignons klein schneiden. Eier in einer Schüssel mit Salz und Pfeffer verquirlen.
Champignons in einer beschichteten Pfanne mit etwas Öl anbraten, bis ihre Flüssigkeit verdampft ist. Paprika zugeben und 3 Minuten mitbraten.
Eier über das Gemüse gießen und bei kleiner bis mittlerer Hitze stocken lassen. Käse gleichmäßig darüberstreuen.
Mit Deckel fertig garen, bis die Oberfläche fest und der Käse geschmolzen ist. Omelett halbieren und servieren.', updated_at = now() where slug = 'gemuseomelett-mit-kase';

update public.recipe_catalog set instructions = 'Spaghetti in reichlich Salzwasser al dente kochen und eine Tasse Nudelwasser auffangen. Eier mit fein geriebenem Parmesan und reichlich schwarzem Pfeffer verrühren.
Speckwürfel in einer großen Pfanne ohne zusätzliches Fett knusprig auslassen. Pfanne anschließend vom Herd ziehen.
Abgegossene Spaghetti zum Speck geben und kurz vermengen. Eine kleine Kelle Nudelwasser einrühren und die Pfanne etwas abkühlen lassen.
Eimischung unter ständigem Schwenken einarbeiten, sodass eine cremige Sauce entsteht und das Ei nicht stockt. Sofort servieren.', updated_at = now() where slug = 'spaghetti-carbonara';

update public.recipe_catalog set instructions = 'Spaghetti in Salzwasser al dente kochen und etwas Nudelwasser auffangen. Knoblauch fein hacken und Oliven grob schneiden.
Knoblauch in einer Pfanne mit etwas Olivenöl kurz anschwitzen, nicht braun werden lassen. Kapern und Oliven zugeben und kurz mitbraten.
Gehackte Tomaten einrühren und 8–10 Minuten köcheln lassen. Mit Pfeffer abschmecken; Salz vorsichtig dosieren, da Oliven und Kapern salzig sind.
Spaghetti unter die Sauce heben und mit etwas Nudelwasser binden. Heiß servieren.', updated_at = now() where slug = 'pasta-alla-puttanesca';

update public.recipe_catalog set instructions = 'Gnocchi in einer großen Pfanne mit etwas Öl rundherum goldbraun anbraten und kurz herausnehmen.
Spinat in derselben Pfanne zusammenfallen lassen. Sahne zugießen und 2–3 Minuten sanft köcheln lassen.
Parmesan einrühren und mit Pfeffer sowie bei Bedarf Salz abschmecken. Gnocchi zurück in die Pfanne geben.
Alles vorsichtig vermengen und kurz erhitzen, bis die Sauce an den Gnocchi haftet. Sofort servieren.', updated_at = now() where slug = 'gnocchi-pfanne-mit-spinat';

update public.recipe_catalog set instructions = 'Möhren schälen und klein würfeln. Rote Linsen in einem Sieb gründlich abspülen.
Möhren in einem Topf mit etwas Öl 3 Minuten anschwitzen. Linsen, gehackte Tomaten und Gemüsebrühe zugeben und aufkochen.
Bei kleiner bis mittlerer Hitze 15–18 Minuten köcheln lassen und regelmäßig umrühren, bis die Linsen weich sind. Bei Bedarf etwas Wasser nachgießen.
Mit Salz, Pfeffer, Paprikapulver und einem Spritzer Essig oder Zitronensaft abschmecken.', updated_at = now() where slug = 'tomaten-linsen-eintopf';

update public.recipe_catalog set instructions = 'Reis nach Packungsangabe garen. Hähnchenbrust in mundgerechte Würfel schneiden.
Hähnchen in einem Topf oder einer tiefen Pfanne mit etwas Öl rundherum anbraten und vollständig durchgaren. Erbsen-Möhren-Gemüse zugeben und erhitzen.
Sahne einrühren und 5–7 Minuten sanft köcheln lassen, bis das Gemüse gar und die Sauce leicht sämig ist.
Mit Salz, Pfeffer und etwas Zitronensaft abschmecken. Frikassee mit Reis servieren.', updated_at = now() where slug = 'gemusefrikassee-mit-reis';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Brokkoli in kleine Röschen teilen und 3 Minuten in kochendem Salzwasser blanchieren, anschließend abgießen.
Hähnchenbrust in mundgerechte Stücke schneiden und in einer Pfanne mit etwas Öl rundherum anbraten, bis sie außen Farbe bekommen.
Brokkoli und Hähnchen in einer Auflaufform verteilen. Sahne mit Salz und Pfeffer würzen, darübergießen und Käse darüberstreuen.
Etwa 20 Minuten backen, bis das Hähnchen vollständig durchgegart und der Käse goldbraun ist.', updated_at = now() where slug = 'hahnchen-brokkoli-auflauf';

update public.recipe_catalog set instructions = 'Kartoffeln und Möhren schälen und würfeln. Lauch gründlich waschen und in Ringe schneiden.
Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Gemüsebrühe zugießen und aufkochen.
Etwa 20 Minuten köcheln lassen, bis Kartoffeln und Möhren weich sind. Einen Teil der Kartoffeln im Topf zerdrücken, damit die Brühe sämiger wird.
Mit Salz, Pfeffer, Majoran und Muskat abschmecken. Bei Bedarf mit etwas Brühe oder Wasser verdünnen.', updated_at = now() where slug = 'bunter-kartoffel-eintopf';

update public.recipe_catalog set instructions = 'Hokkaido-Kürbis waschen, halbieren, Kerne entfernen und das Fruchtfleisch würfeln; die Schale kann mitverwendet werden. Zwiebel würfeln.
Zwiebel in einem Topf mit etwas Öl glasig dünsten. Kürbiswürfel zugeben und kurz mit anschwitzen.
Kokosmilch und Gemüsebrühe zugießen, aufkochen und 15–20 Minuten köcheln lassen, bis der Kürbis weich ist.
Suppe fein pürieren und mit Salz, Pfeffer sowie etwas Zitronen- oder Limettensaft abschmecken.', updated_at = now() where slug = 'kurbis-kokos-suppe';

update public.recipe_catalog set instructions = 'Backofen auf 190 °C Ober-/Unterhitze vorheizen. Zucchini und Möhre klein würfeln oder grob raspeln und in einer Pfanne mit etwas Öl 5–6 Minuten anbraten.
Passierte Tomaten zugeben, mit Salz, Pfeffer und italienischen Kräutern würzen und 5 Minuten köcheln lassen.
Eine dünne Schicht Gemüsesauce in eine Auflaufform geben. Lasagneplatten und Sauce abwechselnd einschichten; mit Sauce abschließen und Käse darüberstreuen.
Etwa 30–35 Minuten backen, bis die Platten weich und die Oberfläche goldbraun ist. Vor dem Anschneiden 5 Minuten ruhen lassen.', updated_at = now() where slug = 'gemuse-lasagne';

update public.recipe_catalog set instructions = 'Backofen auf 200 °C Ober-/Unterhitze vorheizen. Paprika und Zucchini in mundgerechte Stücke schneiden, Cherrytomaten halbieren.
Gnocchi mit dem Gemüse auf einem Backblech verteilen. Mit Öl, Salz, Pfeffer und italienischen Kräutern vermengen.
Auf mittlerer Schiene etwa 20–25 Minuten backen und nach der Hälfte wenden, bis Gnocchi und Gemüse goldbraune Stellen bekommen.
Noch einmal abschmecken und direkt vom Blech servieren.', updated_at = now() where slug = 'blech-gnocchi-mit-gemuse';
commit;

select count(*) filter (where is_published) as published_recipes,
       count(*) filter (where is_published and (instructions is null or length(trim(instructions)) = 0)) as missing_instructions
from public.recipe_catalog;
