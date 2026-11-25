-- Alpha 0.3: individuell ausgearbeitete Zubereitungen, Rezepte 41–60 von 115
begin;
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
commit;
