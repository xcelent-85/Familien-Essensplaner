-- Alpha 0.3: individuell ausgearbeitete Zubereitungen, Rezepte 21–40 von 115
begin;
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
commit;
