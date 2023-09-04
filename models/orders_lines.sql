WITH  for_cleaned_category AS (
    SELECT id_order,
        CASE 
            WHEN dim_name IN ("50 CL BLONDE METEOR","1,5 L BLONDE METEOR","50 CL BLANCHE METEOR","50 CL BLONDE TIGRE BOCK 50 CL","1.5L BLONDE TIGRE BOCK","1,5 L BLANCHE METEOR","25 CL BLONDE METEOR","50 CL BLANCHE 1664","1.5L BIERE BLANCHE 1664","25 CL BLANCHE METEOR","GALLIA IPA") THEN "Bières"
            WHEN dim_name IN ("75cl Gris de Gris","75cl CHARDONNAY","Finca Don Gerardo Guatemala","75cl GARANCE","75cl SAUVIGNON","14cl CHARDONNAY") THEN "Vins"
            WHEN dim_name IN ("GUATEMALA - PLAN DEL GUAYABO - Jalapa","COLOMBIE - LA ESPERANZA","CHITUL TIROL - COBAN","GUATEMALA - PULCAL - ANTIGUA","ETHIOPIE - YIRGACHEFFE - MOKA","GUATEMALA- CHITUL TIROL - COBAN") THEN "Cafés"
            WHEN dim_name IN ("Breizh Cola","Lemonaid Citron Vert") THEN "Softs"
            WHEN dim_name IN ("SPRITZ","alcool","SUPERIEURE","APPIE BRUT") THEN "Spiritueux"
            WHEN dim_name IN ("Cheeseburger Les Entretiens") THEN "Plats principaux"
            WHEN dim_category IN ("ENTREES","ENTREES FORMULE","Entrées spécialités tandoor","Entrees","Entrées","Apéritifs","AVOCADO TOAST","ENTÉES","APERITIFS","SALLE / APERITIFS","APÉRITIFS","Spécialités Tibétaines Entrée","Entrée Tibétaines","NOS APERITIFS","ENVIES SALÉES","Entrées  Tandoori","Mix entrée sagarmatha","Planches","EPICERIE","PETITE ÉPICERIE","ENTREES EMP","Grignotages","Planche","Soft Epicerie","Pain","BAR / APERITIF","PLANCHES","Pains","CHARCUTERIE","APERITIVO","PATISSERIES") THEN "Apérifs"
            WHEN dim_category IN ("Boissons chaudes","BAR / BOISSONS CHAUDES","BOISSONS CHAUDES","SALLE / BOISSONS CHAUDES","Chaud","AE BOISSONS CHAUDES","CAFE, THE & CHOCOLAT","NOS BOISSONS CHAUDES") THEN "Autres boissons chaudes"
            WHEN dim_category IN ("PRESSION","CIDRES","CIDRES/BIÈRES","BIERES","Bière Epicerie","Bières","SALLE / BIERES","BIÈRES","BIERES BOUTEILLES","Bieres","HAPPY HOUR","BIERES PRESSIONS","BIERES PRESSION","BIERE BIO","NOS BIERES","BIERES & CIDRES BOUTEILLES","CIDRE APPIE","BAR / BIERES","BEERS") THEN "Bières"
            WHEN dim_category IN ("BREIZH'N'ROLL","BRUNCH","Brunch","Formule dejeuner","Déjeuner","Formule déjeuner","Petit dej","Petit-Déjeuner 8h30 / 11h30","Petit-DŽjeuner 8h30 / 11h30","Petit Déjeuner") THEN "Brunch"
            WHEN dim_category IN ("CAFE / THE","CAFETERIE","EXPRESSIONS ESPRESSO","Cafetières","Cafetières Italienne","Café au vrac !","AE ESPRESSIONS","Cafés en grain","Café Sachet","CAFÉ VERT","Cafés","AE ESPRESSIONS","CAFE","Boissons ☕️","☕️","Café au Kilo","Instantané","Café Sachet 250 g","Café toref") THEN "Cafés"
            WHEN dim_category IN ("PARFUM","GOUT GLACE","DESSERTS","Parfums Glaces","Parfums Sorbets","Parfums Coulis","Sorbets / Glace","panna cotta","Desserts A E","SNACKS SUCRES","DESSERTS SUR PLACE","GOUTS","Desserts","CHOIX PARFUM","FRAWMAGES","Glaces et Sorbets","SWEET TOOTH","LES SUCRÉS","LES SUCRES","patisserie","PATISSERIE","DESSERT MAISON","AE LES SUCRÉS","Sucré","FROMAGES","DESSERTS À EMPORTER","AE LES SUCRES","ROOIBOS GLACE BOS","ROIBOOS GLACE BOS","Desserts VAE","Chocolat Plaq","Dessert") THEN "Desserts"
            WHEN dim_category IN ("Jus de fruits","Jus de Fruit","JUS ET NECTAR ZENAT","SODA ET JUS DE FRUITS") THEN "Jus de fruits"
            WHEN dim_category IN ("Menu 25,00","Formule","Réveillon","Menu 16,50","MENU","Menu Saint Sylvestre","Carte du Soir","Formule Plat Dessert","Formule Entrée Plat","Midi","Menu","Formules du jour","Soir","Menu Express","CHOIX DE LA FORMULE","MENUS","CARTE DU SOIR","DINNER MENU","Dîner","Carte du Midi","Menu Dégustation","Menu Soir","Menus à emporter","Reveillon","Menu midi","FORMULES","Mer","CARTE MIDI","Menu Découverte","Saint valentin","Formules") THEN "Menu"
            WHEN dim_category IN ("Menu enfant") THEN "Menu enfant"
            WHEN dim_category IN ("BOISSONS SANS ALCOOL") THEN "Mocktails"
            WHEN dim_category IN ("SIDES","Accompagnements","ANTIPASTI","Poisson - Crevettes - Gambas","Riz","Légumes","LES PETITS +","Suppléments","SUPPLEMENTS","ACCOMPAGNEMENTS","SUPPLÉMENTS","Supplement") THEN "Plats d'accompagnement"
            WHEN dim_category IN ("WRAP DE SARRASIN","FOCACCIA A EMPORTER","FOCACCIA SUR PLACE","PASTA SUR PLACE","PIZZA","Repas","PLATS","SOUPE ET RAMEN","Royal biryani","PLATS DU JOUR VITRINE","Choix vegetarien nord","Choix vegetarien nord 1","BOWLS DE SAISON","PASTA A EMPORTER","Choix vegetarien sud","PLATS CHAUDS","BOWL","WEEKLY BOWL","Plats","SPOKBOWL","Choix vegetarien sud 1","PLAT FORMULE","PLATS DU JOUR COMPTOIR","PLAT","Plats Tibétaines","Plats / Poulet","Plats / Agneau","Plats Vegetarien","Biriyani","Plats Sud","Plats Nord","Plat Traditionnel Népalais","Sandwichs VAE","Mix grill","TAPAS","PASTA FRESCA EMPORTER","Plats VAE","Vegan","PLAT DU JOUR","Bocaux Repas","Sandwichs","Traiteur","SANDWICHES","Sourie dagneau") THEN "Plats principaux"
            WHEN dim_category IN ("Boissons","BOISSONS FRAICHES","Eaux","DRINKS LUNCH","BOISSONS","Petillants","Boissons Resto","Sirop","SOFT","Softs","Soft","SALLE / BOISSONS FROIDES","NOS EAUX MINERALES","AE BOISSONS FRAICHES","PETILLANT NATURE","San Pellegrino","Evian","LES EAUX","EAU MINERALE","Soft à emporter","Lassi","Lassi 40 cl","Boissons indiennes","Boissons fraîches","EAUX","eaux","DRINKS","BAR / BOISSONS FROIDES","BOISSONS GAZEUSES","Laurent-Perrier") THEN "Softs"
            WHEN dim_category IN ("SALADES","IN-SALADES A EMPORTER","Entrées / Soupes / Salades","Salades","Soupe & bouillon","Soupe & bouillon VAE","IN-SALADES SUR PLACE","Salades VAE","SOUPE") THEN "Soupes/salades"
            WHEN dim_category IN ("OPTIONS","VARIOUS","Spécialités Tibétaines Plats","Soiree privée","DIVERS","CHICHA","AUTRES SPƒECIALITES CHAUDES","AUTRES SPƒCIALITƒS CHAUDES") THEN "Spéciaux"
            WHEN dim_category IN ("Martini 15 cl","Martini","Long Drink","Digestifs 2 cl","ALCOOLS (4CL)","Boisson Alcoolisées","BOISSON ALCOOLISÉE","LES ALCOOLS","Apéro","Digestifs","Alcool Salle","Cocktail","Cocktails","APERITIFS & SPIRITUEUX","Alcool","HAPPY HOUR COCKTAILS","DIGESTIFS","Whisky 5 cl","Whiskys","Alcools et Apéros","COCKTAILS","ALCOOLS FORTS","NOS COCKTAILS","COCKTAIL","AE LES ALCOOLS","Kir 15 cl","ALCOOL SUP","MARTINI") THEN "Spiritueux"
            WHEN dim_category IN ("Thé/cafe","THE","Thé","CHARITEA-MATE","MUG") THEN "Thés"
            WHEN dim_category IN ("Champagne","Vins Roses A.O.P","Vins Rouges A.O.P","Vin blancs","Vin rouges","Vin Indien","Vins Blancs A.O.P","Vin Blanc","Bordeaux Rouges A.O.P","Vin pichet","BAR / VIN","VINS PICHET","Vins rouges verre","SALLE / VIN","Vins blancs verre","Vin Rouge","Vin Rosé","VINS ROUGES","Vin Verre","VINS ROSES","VINS BLANCS/ROSÉS","VINS BLANCS","VINS VERRE ET CARAFE","VINS Verres","Vin","VINS D-Vine","Vins blancs 25cl","Alsace Pinot Noir","CHAMPAGNE","VINS","VINS ET ALCOOLS","VINS 37.5cl","Castel del monte","Le clos","Valpolicella","Valle d'Oro","Vins blancs 50cl","Vins rouges 50cl","Dégustation / Visite","Buzet Merlot","Vins","VINS BOUTEILLE","Vins indiens","Vins Rouges","CARTE DES VINS","Vins blancs bouteille","CLESS","Vins rouges bouteille","CHAMPAGNE","VINS & CHAMPAGNES","Côtes du Rhône","Bourgueil Le Plessis","Vins rosés 25cl","Bordeaux supérieur Goélane","Alsace Riesling","Vins rouges 25cl","Vins Blancs","ROUGE BOUTEILLE","anjou chenin","VINS 75cl","Saumur Champigny","Terre","ROSE BOUTEILLE","Vins rosés 50cl","Vin Rosés","Grover's Rouge","Touraine Gamay","Muscadet Sur Lie","I.G.P Côtes du Tarn","Côtes de Provence","Brouilly","Toscane","Sicile","Saumur","vin","VIN AU VERRE","BLANC VERRE","Tous les VINgt du mois","ROSE VERRE","ROUGE VERRE","Vin au verre 14 cl","NOS CHAMPAGNES","Vins rosés verre","Tavel","Delamotte","Médoc Château","BLANC BOUTEILLE","DŽgustation de 3 Crus","Dégustation de 3 Crus","Vins rosés bouteille","VINS BT","VINS À EMPORTER","LES VINS BLANCS","VINS EN BOUTEILLE","CAVE") THEN "Vins"
            ELSE "Others"
        END AS cleaned_category
    FROM `TillerProject.order_line`
)
SELECT
    id_order_line
    ,id_order
    ,date_opended AS lines_open_date
    ,ol.date_created AS lines_creation_date
    ,m_quantity AS qty
    ,m_unit_price AS unit_price
    ,m_unit_price_exc_vat AS unit_price_exc_vat
    ,m_total_price_inc_vat AS tot_price_inc_vat
    ,m_total_price_exc_vat AS tot_price_exc_vat
    ,m_tax_percent AS tax_percent
    ,m_discount_amount AS discount_amount
    ,dim_type AS line_type
    ,dim_category AS line_category
    ,dim_name AS line_name
    ,cleaned_category
FROM `TillerProject.order_line` ol
RIGHT JOIN {{ref("orders")}} o USING (id_order)
LEFT JOIN for_cleaned_category USING (id_order)