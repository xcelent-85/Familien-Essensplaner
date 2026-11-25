-- Alpha 0.3: Rezeptkatalog vervollständigen (115 Rezepte)
-- Ergänzt individuelle Beschreibungen und strukturierte, verständliche Zubereitungsschritte.
-- Zutaten, Mengen, Portionen, Kategorien und Zeiten werden bewusst nicht verändert.
-- Sicher erneut ausführbar; bestehende Bilder bleiben unberührt.
begin;

update public.recipe_catalog
set description = 'Spaghetti Bolognese – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Spaghetti, 300 g Hackfleisch, 1 Zwiebel.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'spaghetti-bolognese';

update public.recipe_catalog
set description = 'Hähnchen-Gemüse-Pfanne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 400 g Hähnchenbrust, 1 Paprika, 1 Zucchini.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'hahnchen-gemuse-pfanne';

update public.recipe_catalog
set description = 'Kartoffelgratin mit Salat – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 800 g Kartoffeln, 200 ml Sahne, 150 g geriebener Käse.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'kartoffelgratin-mit-salat';

update public.recipe_catalog
set description = 'Wraps mit Hähnchen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 3 Weizentortillas, 300 g Hähnchenbrust, 1 Paprika.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'wraps-mit-hahnchen';

update public.recipe_catalog
set description = 'Nudel-Schinken-Auflauf – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 300 g Nudeln, 150 g Kochschinken, 200 ml Sahne.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'nudel-schinken-auflauf';

update public.recipe_catalog
set description = 'Kichererbsen-Curry mit Reis – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 1 Dose Kichererbsen, 1 Dose Kokosmilch, 300 g Gemüse.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'kichererbsen-curry-mit-reis';

update public.recipe_catalog
set description = 'Frikadellen mit Kartoffeln – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 400 g Hackfleisch, 1 Ei, 1 Zwiebel.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'frikadellen-mit-kartoffeln';

update public.recipe_catalog
set description = 'Ofengemüse mit Feta – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 2 Paprika, 1 Zucchini, 500 g Kartoffeln.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'ofengemuse-mit-feta';

update public.recipe_catalog
set description = 'Tomatensuppe mit Brot – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 800 g gehackte Tomaten, 1 Zwiebel, 500 ml Gemüsebrühe.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'tomatensuppe-mit-brot';

update public.recipe_catalog
set description = 'Lachs mit Ofenkartoffeln – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 3 Lachsfilets, 700 g Kartoffeln, 1 Zitrone.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'lachs-mit-ofenkartoffeln';

update public.recipe_catalog
set description = 'Penne in Tomatensoße – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Penne, 400 g gehackte Tomaten, 1 Zwiebel.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'penne-in-tomatensosse';

update public.recipe_catalog
set description = 'Bauernomelett – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 6 Eier, 400 g Kartoffeln, 1 Paprika.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'bauernomelett';

update public.recipe_catalog
set description = 'Spinat-Ricotta-Lasagne – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 9 Lasagneplatten, 300 g Blattspinat, 250 g Ricotta.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'spinat-ricotta-lasagne';

update public.recipe_catalog
set description = 'Gnocchi mit Tomate und Mozzarella – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g Gnocchi, 250 g Cherrytomaten, 1 Mozzarella.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'gnocchi-mit-tomate-und-mozzarella';

update public.recipe_catalog
set description = 'Tortellini in Schinken-Sahne-Soße – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g Tortellini, 150 g Kochschinken, 200 ml Sahne.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'tortellini-in-schinken-sahne-sosse';

update public.recipe_catalog
set description = 'Pesto-Nudeln mit Gemüse – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 3 EL grünes Pesto, 1 Zucchini.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'pesto-nudeln-mit-gemuse';

update public.recipe_catalog
set description = 'Tomaten-Mozzarella-Blech – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 500 g Tomaten, 2 Mozzarella, 1 Baguette.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'tomaten-mozzarella-blech';

update public.recipe_catalog
set description = 'Pizzabrötchen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 3 Brötchen, 150 g geriebener Käse, 100 g Kochschinken.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'pizzabrotchen';

update public.recipe_catalog
set description = 'Flammkuchen mit Speck – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 1 Flammkuchenteig, 150 g Schmand, 100 g Speckwürfel.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'flammkuchen-mit-speck';

update public.recipe_catalog
set description = 'Gemüse-Reispfanne – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 200 g Reis, 300 g TK-Gemüse, 2 Eier.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'gemuse-reispfanne';

update public.recipe_catalog
set description = 'Gebratener Reis mit Ei – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 250 g gekochter Reis, 3 Eier, 150 g Erbsen.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'gebratener-reis-mit-ei';

update public.recipe_catalog
set description = 'Chili con Carne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 300 g Hackfleisch, 1 Dose Kidneybohnen, 1 Dose Mais.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'chili-con-carne';

update public.recipe_catalog
set description = 'Chili sin Carne – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 1 Dose Kidneybohnen, 1 Dose Mais, 1 Dose gehackte Tomaten.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'chili-sin-carne';

update public.recipe_catalog
set description = 'Linsen-Bolognese – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 200 g rote Linsen, 300 g Spaghetti, 400 g gehackte Tomaten.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'linsen-bolognese';

update public.recipe_catalog
set description = 'Couscous-Gemüse-Pfanne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 200 g Couscous, 1 Zucchini, 1 Paprika.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'couscous-gemuse-pfanne';

update public.recipe_catalog
set description = 'Falafel-Wraps – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 300 g Falafel, 3 Wraps, 1 Gurke.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'falafel-wraps';

update public.recipe_catalog
set description = 'Shakshuka mit Brot – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 5 Eier, 400 g gehackte Tomaten, 1 Paprika.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'shakshuka-mit-brot';

update public.recipe_catalog
set description = 'Kartoffel-Gemüse-Suppe – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 600 g Kartoffeln, 2 Möhren, 1 Stange Lauch.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'kartoffel-gemuse-suppe';

update public.recipe_catalog
set description = 'Möhren-Ingwer-Suppe – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 600 g Möhren, 1 Stück Ingwer, 1 Zwiebel.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'mohren-ingwer-suppe';

update public.recipe_catalog
set description = 'Brokkoli-Cremesuppe – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 500 g Brokkoli, 1 Kartoffel, 700 ml Gemüsebrühe.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'brokkoli-cremesuppe';

update public.recipe_catalog
set description = 'Erbsensuppe mit Würstchen – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 400 g Erbsen, 3 Kartoffeln, 700 ml Gemüsebrühe.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'erbsensuppe-mit-wurstchen';

update public.recipe_catalog
set description = 'Tomatenreis mit Feta – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 200 g Reis, 400 g gehackte Tomaten, 150 g Feta.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'tomatenreis-mit-feta';

update public.recipe_catalog
set description = 'Paprika-Reis-Pfanne mit Hack – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 300 g Hackfleisch, 200 g Reis, 2 Paprika.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'paprika-reis-pfanne-mit-hack';

update public.recipe_catalog
set description = 'Zucchini-Hack-Pfanne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 300 g Hackfleisch, 2 Zucchini, 1 Zwiebel.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'zucchini-hack-pfanne';

update public.recipe_catalog
set description = 'Hähnchen in Sahnesoße – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 400 g Hähnchenbrust, 200 ml Sahne, 200 g Champignons.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'hahnchen-in-sahnesosse';

update public.recipe_catalog
set description = 'Cremiges Pilzrisotto – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 200 g Risottoreis, 250 g Champignons, 700 ml Gemüsebrühe.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'cremiges-pilzrisotto';

update public.recipe_catalog
set description = 'Milchreis mit Apfel-Zimt – ein süßes Hauptgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Teig bzw. Masse anrühren: Mehl, Eier und Milch glatt verrühren; Kartoffeln oder Obst je nach Rezept vorbereiten. Verwendete Zutaten: 200 g Milchreis, 1 l Milch, 2 Äpfel.
2. Eine beschichtete Pfanne mit wenig Butter oder Öl erhitzen. Teig portionsweise hineingeben bzw. die vorbereitete Masse gleichmäßig verteilen.
3. Bei mittlerer Hitze goldbraun ausbacken und wenden. Milchreis unter regelmäßigem Rühren sanft köcheln lassen, bis er cremig und gar ist.
4. Mit Obst, Apfelmus, Zimt oder dem vorgesehenen Dip anrichten und warm servieren.',
    updated_at = now()
where slug = 'milchreis-mit-apfel-zimt';

update public.recipe_catalog
set description = 'Arme Ritter mit Obst – ein süßes Hauptgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Teig bzw. Masse anrühren: Mehl, Eier und Milch glatt verrühren; Kartoffeln oder Obst je nach Rezept vorbereiten. Verwendete Zutaten: 6 Scheiben Toast, 2 Eier, 150 ml Milch.
2. Eine beschichtete Pfanne mit wenig Butter oder Öl erhitzen. Teig portionsweise hineingeben bzw. die vorbereitete Masse gleichmäßig verteilen.
3. Bei mittlerer Hitze goldbraun ausbacken und wenden. Milchreis unter regelmäßigem Rühren sanft köcheln lassen, bis er cremig und gar ist.
4. Mit Obst, Apfelmus, Zimt oder dem vorgesehenen Dip anrichten und warm servieren.',
    updated_at = now()
where slug = 'arme-ritter-mit-obst';

update public.recipe_catalog
set description = 'Pfannkuchen mit Apfelmus – ein süßes Hauptgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Teig bzw. Masse anrühren: Mehl, Eier und Milch glatt verrühren; Kartoffeln oder Obst je nach Rezept vorbereiten. Verwendete Zutaten: 200 g Mehl, 3 Eier, 300 ml Milch.
2. Eine beschichtete Pfanne mit wenig Butter oder Öl erhitzen. Teig portionsweise hineingeben bzw. die vorbereitete Masse gleichmäßig verteilen.
3. Bei mittlerer Hitze goldbraun ausbacken und wenden. Milchreis unter regelmäßigem Rühren sanft köcheln lassen, bis er cremig und gar ist.
4. Mit Obst, Apfelmus, Zimt oder dem vorgesehenen Dip anrichten und warm servieren.',
    updated_at = now()
where slug = 'pfannkuchen-mit-apfelmus';

update public.recipe_catalog
set description = 'Kaiserschmarrn – ein süßes Hauptgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Teig bzw. Masse anrühren: Mehl, Eier und Milch glatt verrühren; Kartoffeln oder Obst je nach Rezept vorbereiten. Verwendete Zutaten: 200 g Mehl, 3 Eier, 250 ml Milch.
2. Eine beschichtete Pfanne mit wenig Butter oder Öl erhitzen. Teig portionsweise hineingeben bzw. die vorbereitete Masse gleichmäßig verteilen.
3. Bei mittlerer Hitze goldbraun ausbacken und wenden. Milchreis unter regelmäßigem Rühren sanft köcheln lassen, bis er cremig und gar ist.
4. Mit Obst, Apfelmus, Zimt oder dem vorgesehenen Dip anrichten und warm servieren.',
    updated_at = now()
where slug = 'kaiserschmarrn';

update public.recipe_catalog
set description = 'Kartoffelpuffer mit Kräuterquark – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Teig bzw. Masse anrühren: Mehl, Eier und Milch glatt verrühren; Kartoffeln oder Obst je nach Rezept vorbereiten. Verwendete Zutaten: 800 g Kartoffeln, 1 Ei, 3 EL Mehl.
2. Eine beschichtete Pfanne mit wenig Butter oder Öl erhitzen. Teig portionsweise hineingeben bzw. die vorbereitete Masse gleichmäßig verteilen.
3. Bei mittlerer Hitze goldbraun ausbacken und wenden. Milchreis unter regelmäßigem Rühren sanft köcheln lassen, bis er cremig und gar ist.
4. Mit Obst, Apfelmus, Zimt oder dem vorgesehenen Dip anrichten und warm servieren.',
    updated_at = now()
where slug = 'kartoffelpuffer-mit-krauterquark';

update public.recipe_catalog
set description = 'Ofenkartoffeln mit Kräuterquark – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 900 g Kartoffeln, 250 g Quark, 100 g Joghurt.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'ofenkartoffeln-mit-krauterquark';

update public.recipe_catalog
set description = 'Bratkartoffeln mit Spiegelei – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 800 g Kartoffeln, 3 Eier, 1 Zwiebel.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'bratkartoffeln-mit-spiegelei';

update public.recipe_catalog
set description = 'Würstchengulasch – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 4 Wiener Würstchen, 1 Paprika, 1 Zwiebel.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'wurstchengulasch';

update public.recipe_catalog
set description = 'Schnelle Hackbällchen in Tomatensoße – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 400 g Hackfleisch, 1 Ei, 3 EL Paniermehl.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'schnelle-hackballchen-in-tomatensosse';

update public.recipe_catalog
set description = 'Putengeschnetzeltes mit Reis – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 400 g Putenbrust, 200 g Reis, 200 g Champignons.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'putengeschnetzeltes-mit-reis';

update public.recipe_catalog
set description = 'Hähnchen-Curry mit Kokosmilch – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 400 g Hähnchenbrust, 1 Dose Kokosmilch, 2 EL Currypaste.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'hahnchen-curry-mit-kokosmilch';

update public.recipe_catalog
set description = 'Teriyaki-Hähnchen mit Reis – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 400 g Hähnchenbrust, 3 EL Teriyakisoße, 200 g Reis.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'teriyaki-hahnchen-mit-reis';

update public.recipe_catalog
set description = 'Asia-Nudeln mit Gemüse – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 250 g Mie-Nudeln, 300 g Wokgemüse, 2 EL Sojasoße.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'asia-nudeln-mit-gemuse';

update public.recipe_catalog
set description = 'Erdnussnudeln mit Gemüse – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 2 EL Erdnussmus, 1 Paprika.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'erdnussnudeln-mit-gemuse';

update public.recipe_catalog
set description = 'Süßkartoffel-Kichererbsen-Pfanne – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 1 große Süßkartoffel, 1 Dose Kichererbsen, 200 g Spinat.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'susskartoffel-kichererbsen-pfanne';

update public.recipe_catalog
set description = 'Bulgur-Gemüse-Pfanne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 200 g Bulgur, 1 Zucchini, 1 Paprika.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'bulgur-gemuse-pfanne';

update public.recipe_catalog
set description = 'Griechische Hackbällchen mit Reis – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 400 g Hackfleisch, 1 Ei, 1 TL Oregano.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'griechische-hackballchen-mit-reis';

update public.recipe_catalog
set description = 'Gyros-Pita mit Krautsalat – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 400 g Gyrosfleisch, 3 Pitabrote, 200 g Krautsalat.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'gyros-pita-mit-krautsalat';

update public.recipe_catalog
set description = 'Hähnchen-Döner-Teller – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 400 g Hähnchenbrust, 200 g Reis, 1 Gurke.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'hahnchen-doner-teller';

update public.recipe_catalog
set description = 'Thunfisch-Nudelsalat warm – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 300 g Nudeln, 1 Dose Thunfisch, 150 g Erbsen.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'thunfisch-nudelsalat-warm';

update public.recipe_catalog
set description = 'Lachs-Spinat-Pasta – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 250 g Lachs, 150 g Blattspinat.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'lachs-spinat-pasta';

update public.recipe_catalog
set description = 'Fischstäbchen mit Kartoffelstampf – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 9 Fischstäbchen, 700 g Kartoffeln, 100 ml Milch.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'fischstabchen-mit-kartoffelstampf';

update public.recipe_catalog
set description = 'Kabeljau in Tomatensoße – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 450 g Kabeljau, 400 g gehackte Tomaten, 1 Zwiebel.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'kabeljau-in-tomatensosse';

update public.recipe_catalog
set description = 'Thunfisch-Tomaten-Pasta – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 1 Dose Thunfisch, 400 g gehackte Tomaten.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'thunfisch-tomaten-pasta';

update public.recipe_catalog
set description = 'Garnelen-Knoblauch-Pasta – ein Fischgericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Spaghetti, 250 g Garnelen, 2 Knoblauchzehen.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'garnelen-knoblauch-pasta';

update public.recipe_catalog
set description = 'Spinatknödel mit Käsesoße – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 6 Knödel, 200 g Blattspinat, 150 ml Sahne.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'spinatknodel-mit-kasesosse';

update public.recipe_catalog
set description = 'Käsespätzle mit Röstzwiebeln – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g Spätzle, 200 g geriebener Käse, 2 Zwiebeln.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'kasespatzle-mit-rostzwiebeln';

update public.recipe_catalog
set description = 'Maultaschen in Gemüsebrühe – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 6 Maultaschen, 1 l Gemüsebrühe, 2 Möhren.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'maultaschen-in-gemusebruhe';

update public.recipe_catalog
set description = 'Maultaschen-Gemüse-Pfanne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 6 Maultaschen, 1 Paprika, 1 Zucchini.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'maultaschen-gemuse-pfanne';

update public.recipe_catalog
set description = 'Schupfnudelpfanne mit Gemüse – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g Schupfnudeln, 250 g Gemüse, 150 ml Sahne.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'schupfnudelpfanne-mit-gemuse';

update public.recipe_catalog
set description = 'Schupfnudeln mit Sauerkraut – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g Schupfnudeln, 300 g Sauerkraut, 1 Zwiebel.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'schupfnudeln-mit-sauerkraut';

update public.recipe_catalog
set description = 'Ravioli mit Spinat-Sahne-Soße – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g frische Ravioli, 150 g Blattspinat, 150 ml Sahne.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'ravioli-mit-spinat-sahne-sosse';

update public.recipe_catalog
set description = 'Tortellini-Tomaten-Auflauf – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 500 g Tortellini, 400 g passierte Tomaten, 1 Mozzarella.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'tortellini-tomaten-auflauf';

update public.recipe_catalog
set description = 'Auberginen-Tomaten-Auflauf – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 1 Aubergine, 400 g gehackte Tomaten, 1 Mozzarella.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'auberginen-tomaten-auflauf';

update public.recipe_catalog
set description = 'Gefüllte Paprika mit Reis – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 3 Paprika, 250 g Hackfleisch, 100 g Reis.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'gefullte-paprika-mit-reis';

update public.recipe_catalog
set description = 'Zucchini-Boote mit Hack – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 2 Zucchini, 300 g Hackfleisch, 100 g geriebener Käse.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'zucchini-boote-mit-hack';

update public.recipe_catalog
set description = 'Brokkoli-Nudel-Auflauf – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 300 g Nudeln, 400 g Brokkoli, 200 ml Sahne.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'brokkoli-nudel-auflauf';

update public.recipe_catalog
set description = 'Blumenkohl-Käse-Auflauf – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 1 Blumenkohl, 200 ml Sahne, 150 g geriebener Käse.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'blumenkohl-kase-auflauf';

update public.recipe_catalog
set description = 'Makkaroni mit Käse – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Makkaroni, 250 ml Milch, 150 g Cheddar.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'makkaroni-mit-kase';

update public.recipe_catalog
set description = 'One-Pot-Tomaten-Mozzarella-Pasta – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 400 g passierte Tomaten, 600 ml Wasser.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'one-pot-tomaten-mozzarella-pasta';

update public.recipe_catalog
set description = 'One-Pot-Gemüsenudeln – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 1 Zucchini, 1 Paprika.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'one-pot-gemusenudeln';

update public.recipe_catalog
set description = 'One-Pot-Hähnchen-Reis – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 300 g Hähnchenbrust, 200 g Reis, 1 Paprika.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'one-pot-hahnchen-reis';

update public.recipe_catalog
set description = 'Bohneneintopf mit Kartoffeln – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 1 Dose weiße Bohnen, 500 g Kartoffeln, 2 Möhren.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'bohneneintopf-mit-kartoffeln';

update public.recipe_catalog
set description = 'Linseneintopf mit Würstchen – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 200 g Tellerlinsen, 3 Kartoffeln, 2 Möhren.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'linseneintopf-mit-wurstchen';

update public.recipe_catalog
set description = 'Rote-Linsen-Dal mit Reis – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 200 g rote Linsen, 1 Dose Kokosmilch, 1 Dose gehackte Tomaten.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'rote-linsen-dal-mit-reis';

update public.recipe_catalog
set description = 'Bunte Gemüse-Frittata – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 6 Eier, 1 Zucchini, 1 Paprika.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'bunte-gemuse-frittata';

update public.recipe_catalog
set description = 'Mais-Puffer mit Kräuterdip – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Teig bzw. Masse anrühren: Mehl, Eier und Milch glatt verrühren; Kartoffeln oder Obst je nach Rezept vorbereiten. Verwendete Zutaten: 1 Dose Mais, 2 Eier, 100 g Mehl.
2. Eine beschichtete Pfanne mit wenig Butter oder Öl erhitzen. Teig portionsweise hineingeben bzw. die vorbereitete Masse gleichmäßig verteilen.
3. Bei mittlerer Hitze goldbraun ausbacken und wenden. Milchreis unter regelmäßigem Rühren sanft köcheln lassen, bis er cremig und gar ist.
4. Mit Obst, Apfelmus, Zimt oder dem vorgesehenen Dip anrichten und warm servieren.',
    updated_at = now()
where slug = 'mais-puffer-mit-krauterdip';

update public.recipe_catalog
set description = 'Halloumi-Gemüse-Wraps – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 200 g Halloumi, 3 Wraps, 1 Paprika.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'halloumi-gemuse-wraps';

update public.recipe_catalog
set description = 'Caprese-Baguette aus dem Ofen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 1 Baguette, 2 Tomaten, 1 Mozzarella.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'caprese-baguette-aus-dem-ofen';

update public.recipe_catalog
set description = 'Bruschetta mit Tomaten und Ei – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 6 Scheiben Brot, 3 Tomaten, 2 Eier.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'bruschetta-mit-tomaten-und-ei';

update public.recipe_catalog
set description = 'Bunter Bauernsalat mit Fladenbrot – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 1 Gurke, 3 Tomaten, 1 Paprika.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'bunter-bauernsalat-mit-fladenbrot';

update public.recipe_catalog
set description = 'Nudelsalat mit Erbsen und Ei – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 250 g Nudeln, 3 Eier, 150 g Erbsen.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'nudelsalat-mit-erbsen-und-ei';

update public.recipe_catalog
set description = 'Kartoffelsalat mit Würstchen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 800 g Kartoffeln, 4 Wiener Würstchen, 1 Zwiebel.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'kartoffelsalat-mit-wurstchen';

update public.recipe_catalog
set description = 'Cremige Möhren-Pasta – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Nudeln, 3 Möhren, 150 ml Sahne.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'cremige-mohren-pasta';

update public.recipe_catalog
set description = 'Zitronen-Hähnchen mit Couscous – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 400 g Hähnchenbrust, 200 g Couscous, 1 Zitrone.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'zitronen-hahnchen-mit-couscous';

update public.recipe_catalog
set description = 'Schnitzel mit Gurkensalat – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 3 Schweineschnitzel, 1 Ei, 100 g Paniermehl.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'schnitzel-mit-gurkensalat';

update public.recipe_catalog
set description = 'Cremiges Senf-Hähnchen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 400 g Hähnchenbrust, 2 EL Senf, 150 ml Sahne.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'cremiges-senf-hahnchen';

update public.recipe_catalog
set description = 'Hack-Lauch-Käse-Suppe – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 300 g Hackfleisch, 2 Stangen Lauch, 200 g Schmelzkäse.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'hack-lauch-kase-suppe';

update public.recipe_catalog
set description = 'Pizzaschnecken – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Kartoffeln oder Eier – falls im Rezept enthalten – in Salzwasser garen bzw. hart kochen und anschließend abkühlen lassen. Verwendete Zutaten: 1 Rolle Pizzateig, 100 g passierte Tomaten, 100 g Salami.
2. Gemüse waschen und klein schneiden. Dressing oder Tomatensauce aus den vorgesehenen Zutaten anrühren und würzen.
3. Alle Zutaten vermengen oder auf Brot/Teig verteilen. Käse und weitere Beläge gleichmäßig daraufgeben.
4. Brot oder Teig im vorgeheizten Ofen goldbraun backen; Salate vorsichtig mischen und kurz durchziehen lassen. Frisch servieren.',
    updated_at = now()
where slug = 'pizzaschnecken';

update public.recipe_catalog
set description = 'Taco-Bowl mit Hack und Bohnen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 300 g Hackfleisch, 1 Dose Kidneybohnen, 150 g Mais.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'taco-bowl-mit-hack-und-bohnen';

update public.recipe_catalog
set description = 'Quesadillas mit Käse und Bohnen – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse waschen und klein schneiden. Joghurt, Quark oder weitere Dip-Zutaten nach Geschmack verrühren und würzen. Verwendete Zutaten: 3 große Tortillas, 1 Dose schwarze Bohnen, 150 g geriebener Käse.
2. Fleisch, Falafel oder Halloumi in einer Pfanne mit etwas Öl rundherum goldbraun braten und vollständig garen. Bohnen oder Mais abspülen und kurz erwärmen.
3. Wraps, Pitabrote oder Tortillas nach Packungsangabe erwärmen. Mit den vorbereiteten Zutaten und dem Dip füllen bzw. anrichten.
4. Nach Wunsch mit Kräutern, Pfeffer oder etwas Zitronensaft abschmecken und frisch servieren.',
    updated_at = now()
where slug = 'quesadillas-mit-kase-und-bohnen';

update public.recipe_catalog
set description = 'Mexikanische Reispfanne – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 200 g Reis, 300 g Hackfleisch, 1 Dose Mais.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'mexikanische-reispfanne';

update public.recipe_catalog
set description = 'Süßkartoffel-Pommes mit Dip – ein vegetarisches Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 800 g Süßkartoffeln, 2 EL Öl, 200 g Quark.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'susskartoffel-pommes-mit-dip';

update public.recipe_catalog
set description = 'Airfryer-Hähnchen mit Gemüse – ein knuspriges Airfryer-Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Zutaten vorbereiten: Kartoffeln bzw. Gemüse in gleichmäßige Stücke schneiden. Fleisch oder Fisch trocken tupfen und würzen; für Nuggets die Stücke zuerst im verquirlten Ei, dann im Paniermehl wenden. Verwendete Zutaten: 400 g Hähnchenbrust, 500 g Kartoffeln, 1 Paprika.
2. Alles mit wenig Öl vermengen und in einer möglichst einzelnen Lage in den Airfryer-Korb geben. Bei mehreren Portionen lieber nacheinander garen.
3. Bei etwa 180–200 °C garen und zwischendurch wenden oder den Korb schütteln. Die Garzeit richtet sich nach Größe und Gerät; Geflügel vollständig durchgaren, Fisch saftig garen und Gemüse/Kartoffeln goldbraun werden lassen.
4. Dip aus den vorgesehenen Zutaten anrühren. Gericht kurz ruhen lassen, abschmecken und direkt knusprig servieren.',
    updated_at = now()
where slug = 'airfryer-hahnchen-mit-gemuse';

update public.recipe_catalog
set description = 'Airfryer-Lachs mit Brokkoli – ein knuspriges Airfryer-Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Zutaten vorbereiten: Kartoffeln bzw. Gemüse in gleichmäßige Stücke schneiden. Fleisch oder Fisch trocken tupfen und würzen; für Nuggets die Stücke zuerst im verquirlten Ei, dann im Paniermehl wenden. Verwendete Zutaten: 3 Lachsfilets, 400 g Brokkoli, 600 g Kartoffeln.
2. Alles mit wenig Öl vermengen und in einer möglichst einzelnen Lage in den Airfryer-Korb geben. Bei mehreren Portionen lieber nacheinander garen.
3. Bei etwa 180–200 °C garen und zwischendurch wenden oder den Korb schütteln. Die Garzeit richtet sich nach Größe und Gerät; Geflügel vollständig durchgaren, Fisch saftig garen und Gemüse/Kartoffeln goldbraun werden lassen.
4. Dip aus den vorgesehenen Zutaten anrühren. Gericht kurz ruhen lassen, abschmecken und direkt knusprig servieren.',
    updated_at = now()
where slug = 'airfryer-lachs-mit-brokkoli';

update public.recipe_catalog
set description = 'Airfryer-Gemüsefrikadellen – ein knuspriges Airfryer-Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Zutaten vorbereiten: Kartoffeln bzw. Gemüse in gleichmäßige Stücke schneiden. Fleisch oder Fisch trocken tupfen und würzen; für Nuggets die Stücke zuerst im verquirlten Ei, dann im Paniermehl wenden. Verwendete Zutaten: 300 g geraspelte Möhren, 1 Zucchini, 2 Eier.
2. Alles mit wenig Öl vermengen und in einer möglichst einzelnen Lage in den Airfryer-Korb geben. Bei mehreren Portionen lieber nacheinander garen.
3. Bei etwa 180–200 °C garen und zwischendurch wenden oder den Korb schütteln. Die Garzeit richtet sich nach Größe und Gerät; Geflügel vollständig durchgaren, Fisch saftig garen und Gemüse/Kartoffeln goldbraun werden lassen.
4. Dip aus den vorgesehenen Zutaten anrühren. Gericht kurz ruhen lassen, abschmecken und direkt knusprig servieren.',
    updated_at = now()
where slug = 'airfryer-gemusefrikadellen';

update public.recipe_catalog
set description = 'Knusprige Kartoffel-Wedges mit Dip – ein knuspriges Airfryer-Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Zutaten vorbereiten: Kartoffeln bzw. Gemüse in gleichmäßige Stücke schneiden. Fleisch oder Fisch trocken tupfen und würzen; für Nuggets die Stücke zuerst im verquirlten Ei, dann im Paniermehl wenden. Verwendete Zutaten: 900 g Kartoffeln, 2 EL Öl, 150 g Joghurt.
2. Alles mit wenig Öl vermengen und in einer möglichst einzelnen Lage in den Airfryer-Korb geben. Bei mehreren Portionen lieber nacheinander garen.
3. Bei etwa 180–200 °C garen und zwischendurch wenden oder den Korb schütteln. Die Garzeit richtet sich nach Größe und Gerät; Geflügel vollständig durchgaren, Fisch saftig garen und Gemüse/Kartoffeln goldbraun werden lassen.
4. Dip aus den vorgesehenen Zutaten anrühren. Gericht kurz ruhen lassen, abschmecken und direkt knusprig servieren.',
    updated_at = now()
where slug = 'knusprige-kartoffel-wedges-mit-dip';

update public.recipe_catalog
set description = 'Hähnchen-Nuggets mit Möhrensticks – ein knuspriges Airfryer-Gericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Zutaten vorbereiten: Kartoffeln bzw. Gemüse in gleichmäßige Stücke schneiden. Fleisch oder Fisch trocken tupfen und würzen; für Nuggets die Stücke zuerst im verquirlten Ei, dann im Paniermehl wenden. Verwendete Zutaten: 400 g Hähnchenbrust, 1 Ei, 100 g Paniermehl.
2. Alles mit wenig Öl vermengen und in einer möglichst einzelnen Lage in den Airfryer-Korb geben. Bei mehreren Portionen lieber nacheinander garen.
3. Bei etwa 180–200 °C garen und zwischendurch wenden oder den Korb schütteln. Die Garzeit richtet sich nach Größe und Gerät; Geflügel vollständig durchgaren, Fisch saftig garen und Gemüse/Kartoffeln goldbraun werden lassen.
4. Dip aus den vorgesehenen Zutaten anrühren. Gericht kurz ruhen lassen, abschmecken und direkt knusprig servieren.',
    updated_at = now()
where slug = 'hahnchen-nuggets-mit-mohrensticks';

update public.recipe_catalog
set description = 'Gemüseomelett mit Käse – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Alle Zutaten vorbereiten: Gemüse waschen und klein schneiden, Kartoffeln bei Bedarf schälen und Fleisch oder Fisch in gleichmäßige Stücke teilen. Verwendete Zutaten: 5 Eier, 1 Paprika, 100 g Champignons.
2. Eine große Pfanne oder einen Topf mit etwas Öl erhitzen. Fleisch zuerst rundherum anbraten; anschließend Zwiebel und festes Gemüse hinzufügen.
3. Übrige Zutaten und die vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis Fleisch vollständig durchgegart und Gemüse bissfest ist. Beilagen wie Reis oder Kartoffeln parallel nach Packungsangabe zubereiten.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Kurz ziehen lassen und heiß servieren.',
    updated_at = now()
where slug = 'gemuseomelett-mit-kase';

update public.recipe_catalog
set description = 'Spaghetti Carbonara – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Spaghetti, 100 g Speckwürfel, 2 Eier.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'spaghetti-carbonara';

update public.recipe_catalog
set description = 'Pasta alla Puttanesca – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 300 g Spaghetti, 400 g gehackte Tomaten, 50 g Oliven.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'pasta-alla-puttanesca';

update public.recipe_catalog
set description = 'Gnocchi-Pfanne mit Spinat – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Nudeln, Gnocchi oder Teigwaren in reichlich Salzwasser nach Packungsangabe garen. Vor dem Abgießen etwas Nudelwasser auffangen. Verwendete Zutaten: 500 g Gnocchi, 150 g Blattspinat, 150 ml Sahne.
2. Währenddessen Zwiebel, Knoblauch und Gemüse klein schneiden. Fleisch, Fisch oder Speck – falls vorgesehen – in einer großen Pfanne anbraten; Gemüse anschließend bissfest garen.
3. Sauce aus den vorgesehenen Zutaten zubereiten und einige Minuten köcheln lassen. Sahne, Tomaten, Pesto oder Käse einrühren und bei Bedarf mit etwas Nudelwasser cremig machen.
4. Nudeln unter die Sauce heben, kurz durchschwenken und mit Käse oder Kräutern abschmecken. Sofort servieren.',
    updated_at = now()
where slug = 'gnocchi-pfanne-mit-spinat';

update public.recipe_catalog
set description = 'Tomaten-Linsen-Eintopf – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 200 g rote Linsen, 400 g gehackte Tomaten, 2 Möhren.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'tomaten-linsen-eintopf';

update public.recipe_catalog
set description = 'Gemüsefrikassee mit Reis – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Reis, Couscous oder Bulgur nach Packungsangabe vorbereiten. Gemüse waschen und klein schneiden; Fleisch oder Fisch in mundgerechte Stücke teilen. Verwendete Zutaten: 300 g Hähnchenbrust, 300 g Erbsen-Möhren, 200 ml Sahne.
2. Fleisch oder Gemüse in einer großen Pfanne mit etwas Öl anbraten. Zwiebel und festes Gemüse zuerst zugeben, zartere Zutaten später ergänzen.
3. Reis bzw. Getreide und die im Rezept vorgesehene Flüssigkeit oder Sauce zugeben. Bei mittlerer Hitze garen, bis alles weich und die Flüssigkeit aufgenommen ist; Risotto nach und nach mit Brühe aufgießen und rühren.
4. Mit Salz, Pfeffer und passenden Gewürzen abschmecken. Käse, Kräuter oder Dip ergänzen und heiß servieren.',
    updated_at = now()
where slug = 'gemusefrikassee-mit-reis';

update public.recipe_catalog
set description = 'Hähnchen-Brokkoli-Auflauf – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 300 g Hähnchenbrust, 400 g Brokkoli, 200 ml Sahne.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'hahnchen-brokkoli-auflauf';

update public.recipe_catalog
set description = 'Bunter Kartoffel-Eintopf – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 700 g Kartoffeln, 2 Möhren, 1 Stange Lauch.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'bunter-kartoffel-eintopf';

update public.recipe_catalog
set description = 'Kürbis-Kokos-Suppe – ein wärmendes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Gemüse putzen und klein schneiden. Linsen, Bohnen oder Kartoffeln kurz abspülen bzw. schälen; Würstchen oder weitere Einlagen in mundgerechte Stücke schneiden. Verwendete Zutaten: 700 g Hokkaido-Kürbis, 1 Zwiebel, 400 ml Kokosmilch.
2. Zwiebel und festes Gemüse in einem großen Topf mit etwas Öl 2–3 Minuten anschwitzen. Brühe und die übrigen Suppenzutaten zugeben.
3. Alles bei mittlerer Hitze köcheln lassen, bis Kartoffeln und Gemüse weich und Linsen gar sind. Bei Bedarf etwas Wasser ergänzen. Sahne oder Kokosmilch erst gegen Ende einrühren.
4. Mit Salz, Pfeffer und passenden Kräutern oder Gewürzen abschmecken. Einlagen wie Würstchen zum Schluss erhitzen und die Suppe heiß servieren.',
    updated_at = now()
where slug = 'kurbis-kokos-suppe';

update public.recipe_catalog
set description = 'Gemüse-Lasagne – ein italienischer Familienklassiker mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 9 Lasagneplatten, 1 Zucchini, 1 Möhre.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'gemuse-lasagne';

update public.recipe_catalog
set description = 'Blech-Gnocchi mit Gemüse – ein herzhaftes Familiengericht mit alltagstauglichen Zutaten. Die Mengen sind für 3 Portionen ausgelegt und die Zubereitung ist unkompliziert.',
    instructions = '1. Backofen auf 190–200 °C Ober-/Unterhitze vorheizen. Gemüse waschen und schneiden; Kartoffeln bei Bedarf schälen und in dünne Scheiben oder Stücke teilen. Verwendete Zutaten: 500 g Gnocchi, 1 Paprika, 1 Zucchini.
2. Die Zutaten wie im Rezept vorgesehen vorbereiten: Nudeln oder Reis gegebenenfalls kurz vorkochen, Fleisch in einer Pfanne anbraten und Gemüse kurz anschwitzen.
3. Alles mit Sauce bzw. Flüssigkeit in eine Auflaufform oder auf ein Blech geben. Käse oder Mozzarella darüber verteilen und gleichmäßig garen.
4. Etwa 20–35 Minuten backen, bis das Gericht durchgegart und die Oberfläche goldbraun ist. Vor dem Servieren kurz ruhen lassen.',
    updated_at = now()
where slug = 'blech-gnocchi-mit-gemuse';

-- Das bereits vorhandene erste KI-Food-Bild direkt dem Rezept zuordnen.
update public.recipe_catalog
set image_url = './assets/recipes/spaghetti-bolognese.webp', updated_at = now()
where slug = 'spaghetti-bolognese';

commit;

-- Kontrolle: Anzahl veröffentlichter Rezepte und verbleibende leere Inhalte
select count(*) as published_recipes,
       count(*) filter (where coalesce(trim(description),'') = '') as missing_descriptions,
       count(*) filter (where coalesce(trim(instructions),'') = '') as missing_instructions
from public.recipe_catalog
where is_published = true;
