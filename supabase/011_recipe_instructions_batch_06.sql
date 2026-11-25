-- Alpha 0.3: individuell ausgearbeitete Zubereitungen, restliche 17 Rezepte von 115
begin;
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
