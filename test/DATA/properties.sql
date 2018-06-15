-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 jun 2017 om 14:54
-- Serverversie: 5.7.14
-- PHP-versie: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `images` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `street` varchar(250) NOT NULL,
  `number` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `livingrooms` int(11) NOT NULL,
  `parking` int(11) NOT NULL,
  `kitchen` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `propertytype` varchar(20) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `sold` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `properties`
--

INSERT INTO `properties` (`id`, `title`, `description`, `images`, `price`, `street`, `number`, `zipcode`, `city`, `country`, `bedrooms`, `livingrooms`, `parking`, `kitchen`, `type`, `propertytype`, `featured`, `sold`) VALUES
(1, 'Café the boots', 'Ruim handelshuis (100 m²) , woonst (164m²) met 3 slaapkamers, 2 badkamers en met privacy biedende tuin op een perceel van 927 m².', 'dummy-1000x644-Alpinist.jpg;dummy-1000x644-Anemone.jpg;dummy-1000x644-AppleTree.jpg', 210000, 'Luikersteenweg', 5, 3920, 'Lommel', 'België', 3, 1, 2, 1, 'buy', 'officespace', 0, 0),
(2, 'Residentie Cara', 'Kom za 24/06 dit nieuwbouwproject ontdekken op de opendeur tussen 10u30 en 12u00.\r\n\r\nRuime woonappartementen op wandelafstand van Zeedijk en Zeelaan .\r\n\r\nResidentie Cara biedt u:\r\n- 10 appartementen met 2 of 3 slaapkamers\r\n- oppervlakte van 93 m² tot 150 m²\r\n- terrassen voor en achteraan\r\n- registratie op de grondwaarde\r\n- mogelijkheid tot aankoop ondergrondse kelder en garagebox\r\n\r\nPrijzen vanaf € 270.000,00.\r\nBezoek nu ons modelappartement!', 'dummy-1000x644-ArchConversation.jpg', 270000, 'Koninklijke baan', 171, 8670, 'Koksijde', 'België', 4, 2, 2, 2, 'rent', 'apartment', 0, 1),
(3, 'De Terp', 'De attractieve architectuur van de woningen, de binnenindeling, de doordachte keuze van materialen, de gecontroleerde uitvoering samen met de jarenlange ervaring van de bouwheer, staan borg om een optimaal comfort en woongenot in dit topklasse woonproject te verzekeren.', 'dummy-1000x644-Auger2.jpg;dummy-1000x644-Bag.jpg;dummy-1000x644-Balconies.jpg;dummy-1000x644-BerlinHouses.jpg', 560412, 'Aaishove', 2, 8301, 'Ramskapelle', 'België', 3, 1, 2, 1, 'sale', 'building', 1, 0),
(4, 'Residentie Rivella', 'Opendeur elke eerste zaterdag van de maand tussen 14u en 16u!\r\n\r\nResidentieel gelegen kleinschalige nieuwbouwresidentie aan het gezelligste pleintje van Koksijde-Bad (Bad Schallerbach-plein). \r\nOp wandelafstand van zee en Zeelaan.', 'dummy-1000x644-Bull.jpg;dummy-1000x644-Butterfly.jpg', 215000, 'Zouavenlaan', 1, 8670, 'Koksijde', 'België', 1, 1, 1, 1, 'buy', 'apartment', 0, 0),
(5, 'SOGETA fase 2', '8 woningen op toplocatie in project Sogeta fase 2. De bouwloten die BCA aanbiedt, grenzen aan het nieuw aan te leggen natuur-wandelpark en hebben een uitstekend zuid en zuid-westelijke oriëntatie.  6 percelen voor half open bebouwing, waarvan plannen en prijzen beschikbaar zijn.  Nog volledig te personaliseren. 2 mooie percelen voor open bebouwing met volledig vrije keuze van architectuur: bouwen a-la-carte.', 'dummy-1000x644-CanisLupus.jpg;dummy-1000x644-Cat.jpg;dummy-1000x644-CetoniaAurata.jpg', 150000, 'Gulden Sporenstraat', 79, 9900, 'Eeklo', 'België', 3, 1, 2, 2, 'sale', 'building', 0, 1),
(6, 'Culatello', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque libero est, efficitur eu placerat at, vehicula ut est. Nulla sollicitudin lorem sit amet tristique congue. Ut vestibulum nisi a quam scelerisque, in pharetra arcu egestas. Suspendisse eu ex mollis, auctor metus euismod, congue nibh. Aliquam suscipit suscipit lacus eget porta. Curabitur elit est, aliquam et tempus eget, tempus vel nisl. Cras auctor vulputate aliquet. Aenean eu ante at neque ullamcorper pulvinar. Nullam id est magna. Integer aliquam tempus urna non egestas.\r\n\r\nNulla aliquet dui sem. Suspendisse rhoncus at magna imperdiet scelerisque. Curabitur nisl nisl, luctus at lorem non, suscipit molestie nunc. Integer a euismod nibh. Quisque ornare nisl eget leo accumsan accumsan. Aenean fermentum, orci nec volutpat tincidunt, est erat pretium nibh, at pellentesque turpis diam a diam. Mauris commodo sapien a mollis facilisis. Nam rhoncus enim vel mauris convallis, malesuada interdum libero venenatis. Donec feugiat accumsan leo, at fermentum nisi pretium et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus orci metus, blandit vel tempor id, egestas ac quam. Nam luctus placerat lorem quis varius. Cras pellentesque nec massa eu gravida. Curabitur porttitor elit id justo ultrices pretium.', 'dummy-1000x644-City.jpg;dummy-1000x644-Container.jpg', 265000, 'Vlamingstraat', 5, 8301, 'Heist-aan-zee', 'België', 0, 0, 20, 1, 'rent', 'officespace', 1, 0),
(7, 'Woonerf "Leflot"', 'Nieuwbouwproject in stad Lier, een aantrekkelijke woonstad, gelegen aan de samenvloeiïng van Grote en Kleine Nete. Met o.a. haar Zimmertoren, Belfort en Grote Markt heeft deze stad een historisch karakter. Het Begijnhof werd zelfs uitgeroepen tot Unesco Werelderfgoed!\r\nLier is tevens een gezellige winkelstad, heeft een ruim aanbod aan scholen en bedrijven en biedt een goede verbinding naar zowel de stadskern als de ring, de E19 en E313.\r\nDit inbreidingsproject biedt nieuwe woongelegenheden op wandelafstand van de stadskern.\r\nOp het binnengebied "Leflot" worden 30 woningen gebouwd met ondergrondse garages. Het zijn woningen in hedendaagse stijl. Voor de wagen(s) is er keuze tot aankopen van parkings of garageboxen, al dan niet voor 2 wagens, met of zonder berging.\r\nSite "Leflot" is wonen in een rustige omgeving, een autoluw woonerf, waar geen doorgaand verkeer komt, doch op wandel-en fietsafstand van het station, H. Hart Ziekenhuis, winkels en historische binnenstad.', 'dummy-1000x644-Cottage.jpg', 259000, 'Boomlaarstraat', 75, 2500, 'Lier', 'België', 2, 1, 2, 2, 'buy', 'building', 1, 0),
(8, 'Sky 9', 'SKY9: hemelse luxeappartementen, voor grote dromers. Een kleinschalig project dat het beste van de kanaalkom combineert. Zon van het ochtenddauw tot het avondmaal. Een zicht om u tegen te zeggen. Een ligging op een boogscheut van de binnenstad. En dat alles in de meest bloeiende buurt van Hasselt. Droom je mee?\r\n\r\n-De Hasseltse kanaalkom is op korte tijd uitgegroeid tot dé fonkelnieuwe hotspot van Hasselt. Een plek waar verlaten gebouwen en lege terreinen plaatsgemaakt hebben voor een kersvers, bruisend stadsdeel. Met tal van handelszaken en wooncomplexen, weldra gesierd door aantrekkelijke wandel- en fietskades. Kortom, een buurt die blijft verrassen en die haar grootste troef nog steeds niet prijsgegeven heeft. Tot nu.\r\n\r\n-Wonen aan de Kempische Kaai.\r\n\r\nMet SKY9 krijgt de kanaalkom er high-end appartementen bij, gelegen op het allerbeste plekje: vlak bij het levendige centrum van de stad. Daar waar je dagdromen werkelijkheid worden. Opstaan met de zon op je gezicht. Broodjes halen bij de bakker om de hoek. Ongestoord ontbijten op je prachtige terras met zicht op het water. Nadien heerlijk ontspannen met een verkwikkende wandeling langs het kanaal. En als de dag om is? Afronden met een glas wijn bij het raam of in je wintertuin en, nog heel even, genieten van dat laatste streepje zon.\r\n\r\n-Wonen aan de Vaartstraat.\r\n\r\nHet gebouw in de Vaartstraat heeft met zijn 9 appartementen een compact en intiem karakter. Het telt 3 verdiepingen en 1 gelijkvloers gedeelte, met per niveau 1 tot 3 appartementen die ruimte bieden aan 2 tot 3 slaapkamers. Stuk voor stuk voorzien van een aangenaam zuidgericht privé terras, dat een mooi zicht biedt op de private groene binnentuin.\r\n\r\n-Wonen aan het water en het groen\r\nTwee gebouwen met elk hun eigen karakter, maar met de gedeelde charme van één en dezelfde groene binnentuin. Dat is SKY9. Een kleinschalig nieuwbouwproject aan de Hasseltse kanaalkom. Kijk uit over het water in een van de 7 luxueuze appartementen of de kantoorruimte aan de Kempische Kaai. Of neem je intrek in de rustige Vaartstraat, waar 9 al even opmerkelijke wooneenheden een plaatsje krijgen. Welk plekje je ook kiest, wonen of werken doe je in elke geval pal aan het water en het groen. Met onder die gezellige binnentuin een ruime parkeergarage met in totaal 50 parkeerplaatsen en een private berging voor alle bewoners. Kortom, een zorgeloze omgeving waar je elke dag opnieuw helemaal tot rust komt\r\n\r\nTroeven:\r\n\r\n- Intiem & kleinschalig project.\r\n- Topligging aan de kanaalkom: \r\n> op een steenworp van Hasselt centrum.\r\n> Zonlicht gedurende de hele dag.\r\n- Zeer ruime appartementen: 2 tot 3 slaapkamers, 1 tot 2 badkamers.\r\n- Ruime ondergrondse parkeergarage en private bergruimte.\r\n- Gezellige groene binnentuin.\r\n- Digitale conciërge: camera beveiliging en handige pakjesdienst.', 'dummy-1000x644-Cow.jpg;dummy-1000x644-Dealmaker.jpg;dummy-1000x644-Dog.jpg;dummy-1000x644-Dragonfly.jpg;dummy-1000x644-Dugs.jpg', 195000, 'Kempische Kaai', 9, 3500, 'Hasselt', 'België', 0, 1, 25, 2, 'sale', 'officespace', 0, 1),
(9, 'Residentie Natal', 'Dit kleinschalig nieuwbouwproject is centraal gelegen in Oostende op 300m van \'Petit Paris\' en enkele minuten wandelen van de zeedijk. Het gebouw telt 6 appartementen met 2 slaapkamers en 2 ruime duplexen. De appartementen worden betreden via een ruime inkom. De leefruimte met zithoek en eetplaats, en de wandkeuken vormen één open ruimte. Twee slaapkamers, 1 grote slaapkamer voor een dubbelbed en 1 kleine geschikt als kinderkamer. Een ruime badkamer met ligbad of douche en lavabo. Elk appartement beschikt over een ruime berging met aansluiting wasmachine. Achteraan de appartementen zijn telkens prachtige zonneterrassen voorzien. Het nieuwbouwproject wordt gekenmerkt door zijn kwaliteitsvolle afwerking met duurzame materialen. In het gebouw is een fietsenberging voorzien en kan een garagebox aangekocht worden', 'dummy-1000x644-Entrance.jpg;dummy-1000x644-Flamingo.jpg;dummy-1000x644-FrostedWindow.jpg;dummy-1000x644-GlassCement.jpg', 295000, 'Nieuwpoortsesteenweg', 79, 8400, 'Oostende', 'België', 3, 1, 3, 2, 'rent', 'apartment', 0, 1),
(10, 'Moderne, ruime nieuwbouwwoningen met tuin', 'De Noordelijke stadsrand van Gent kent een nooit geziene vernieuwingsgolf. Deze woningen bevinden zich middenin het stadsvernieuwingsproject Tribeca. De woningen hebben 3 of 4 slaapkamers en mooie privatieve stadstuintjes. Er zijn externe bergingen met toegangspad voor fietsen. De woningen liggen in een doodlopende straat, dus geen last van doorgangsverkeer. Ze zijn gelegen aan het Bloemekenspark met 3,3 ha groen. Slechts 8 fietsminuten tot aan de Korenmarkt.', 'dummy-1000x644-Glasshouse.jpg;dummy-1000x644-Gull.jpg', 358250, 'Nieuwevaart', 179, 9000, 'Gent', 'België', 3, 1, 2, 2, 'buy', 'building', 0, 0),
(11, 'Vijversche', 'Residentie Vijversche, gelegen op de hoek van de Spanjestraat - Jules Lagaelaan, maakt deel uit van de stadsvernieuwing van de stationsbuurt.\r\n\r\nEen topligging, gezien trein en bus zich op slechts enkele stappen van het project bevinden. Belangrijkste invalswegen zijn vlakbij. Winkels, scholen, stadscentrum op wandelafstand.', 'dummy-1000x644-Hannover.jpg;dummy-1000x644-Hip.jpg;dummy-1000x644-HongKongSkyline.jpg', 216000, 'Spanjestraat', 5, 8800, 'Roeselare', 'België', 3, 1, 1, 1, 'rent', 'apartment', 1, 0),
(12, 'Plein Ciel', 'en nieuw project op mensenmaat met studio?s en appartementen met 1, 2, 3 of 4 slaapkamers in een klein, modern gebouw met 3 verdiepingen. Elk appartement heeft een mooi gelegen terras en/of een rustige tuin. Het lijkt wel alsof u op het platteland woont, maar dan midden in de stad. U kunt een frisse neus halen in het Sauvagerepark of een partijtje tennis spelen in Le Roseau. Niet veel verder liggen de vele winkels en restaurants van het Sint-Jobsplein en in de buurt ligt ook het Lycée Français, de school Uccle 2 en het station Kalevoet, van waaruit u in een mum van tijd naar het centrum van Brussel kunt sporen. Oplevering mei 2018. Mogelijkheid tot kelder en parking. Geschatte EPC : B, 15 kg CO²/m²/jaar.', 'dummy-1000x644-HotelCompilation.jpg;dummy-1000x644-HotelEntrance.jpg;dummy-1000x644-IceCrystal.jpg', 195000, 'Avenue de la Gazelle', 5, 1180, 'Ukkel', 'België', 2, 2, 2, 2, 'sale', 'apartment', 0, 1),
(13, 'Nieuwe Wereld', 'Deze nieuwbouwwoningen zijn gelegen in een rustige verkaveling en toch vlakbij het centrum te Izegem.\r\n\r\nDe woningen beschikken telkens over een grote living met een open keuken. De woningen ogen zeer lichtrijk daar de grote glaspartijen voor voldoende helderheid zorgen.\r\n\r\nUitkijkend op de tuin, zorgt de woning voor een gezellige sfeer.\r\n\r\nMet z\'n 3 slaapkamers is deze woning de ideale gezinswoning.\r\nOp de eerste verdieping ligt tevens de badkamer.\r\n\r\nDe woning biedt veel voordelen, daar deze onder de categorie nieuwbouw valt.\r\n\r\nEr is een regenwaterput aanwezig van 10 000 liter, een laag E-peil zorgt voor een lage energiefactuur, meerwaarde op termijn, ...\r\n\r\nAarzel niet om de woning te bezoeken!\r\n\r\n> verkoop grond onder verkooprechten\r\n> verkoop constructie onder BTW-stelsel\r\n', 'dummy-1000x644-IceStorm.jpg;dummy-1000x644-Icicle.jpg', 199000, 'Nieuwe Wereld', 5, 8870, 'Izegem', 'België', 4, 2, 3, 2, 'rent', 'building', 1, 0),
(14, 'K-Tower', 'Panoramisch wonen - De K-tower is een kwalitatief woonproject op een uitzonderlijke ligging. In deze residentiële omgeving worden 65 woonappartementen voorzien met aangename buitenruimtes en panoramische vergezichten over de stad Kortrijk en omgeving. Voor het architecturaal ontwerp werd beroep gedaan op het gerenommeerde bureau Philippe Samyn & Partners. Het exceptioneel karakter van de site, de attractieve architectuur van het gebouw, de doordachte keuze van de materialen, de indeling van de appartementen met ruime terrassen en de luxueuze graad van de afwerking verzekeren een optimaal comfort in een woonproject met ongeziene standing voor Kortrijk en omstreken.\r\n\r\nDe K-tower staat voor panoramisch wonen, nabij het centrum én aan het water! ', 'dummy-1000x644-Impala.jpg;dummy-1000x644-Puffin.jpg;dummy-1000x644-Monkey1.jpg', 225500, 'Diksmuidekaai', 6, 8500, 'Kortrijk', 'België', 1, 1, 2, 1, 'rent', 'building', 0, 0),
(15, 'CentralPark', 'Beeldt u zich even in: u woont in de gezelligste stad van Vlaanderen, op wandelafstand van de Grote Markt en met een prachtig uitgestrekt park als achtertuin. In een modern flatgebouw met een mooie architectuur, veel lichtinval en een zuidgericht terras. Onbetaalbaar zegt u. Allesbehalve. Central Park van Kumpen en Steps Real Estate heeft alle voordelen van een modern woonproject, aan een voordelige instapprijs. En dat alles in het hart van Hasselt, Hoofdstad van de Smaak.\r\n\r\n- opkomende hippe buurt\r\n- modern appartementsgebouw met 46 appartementen\r\n- keuze uit penthouses of appartementen met 1, 2 of 3 slaapkamers\r\n- ondergrondse parking en berging\r\n- zuidgerichte terrassen met veel lichtinval\r\n- op wandelafstand van het bruisende centrum van Hasselt\r\n- goed bereikbaar via openbaar vervoer (trein en bus) en de nabijheid van de autosnelweg E313\r\n- slimme investering\r\n- veel groen met aanleg van een volledig nieuw park\r\n- groot park (vergelijkbaar met de oppervlakte van 2 voetbalvelden)\r\n- hoogwaardige afwerking met duurzame materialen\r\n- voldoet aan alle EPB-normen en de woonkwaliteitsverordening van de Stad Hasselt\r\n- gratis advies van de kopersbegeleider bij de inrichting', 'dummy-1000x644-Interior.jpg;dummy-1000x644-KingVulture.jpg;dummy-1000x644-Laptop.jpg;dummy-1000x644-LightSignal.jpg', 282384, 'Vredestraat', 5, 3500, 'Hasselt', 'België', 1, 1, 2, 1, 'sale', 'apartment', 0, 1),
(16, 'Handelspand met woonst ', 'Commerciële gelijkvloers gelegen aan invalsweg Oostende - 350m² benutbare handelsoppervlakte met bovenwoonst - 11,50m etalagebreedte - uitzonderlijk veel visibiliteit.\r\n\r\nIndeling:\r\n- gelijkvloers: winkelruimte met opslagruimte en toilet (samen 350m²) - private inkomhal voor de bovenwoonst\r\n- 1°V: living 40m² - bureauruimte 8m² - aparte keuken 12m² - badkamer voorzien van ligbad en douche - bergruimte met aansluiting wasmachine/droogkast\r\n- 2°V: overloop - slaapkamer 16m² met ingebouwde kasten - slaapkamer 11m² eveneens met ingebouwde kasten - slaapkamer 8m² \r\n- ruime benutbare dakverdieping (actueel slaapkamer)\r\n\r\nIdeaal om commerciële activiteit te combineren met een woonst !', 'dummy-1000x644-Lizard.jpg;dummy-1000x644-MarrusOrthocanna.jpg;dummy-1000x644-Mirror.jpg', 445000, 'Nieuwpoortsesteenweg', 280, 8400, 'Oostende', 'België', 0, 0, 50, 2, 'buy', 'officespace', 1, 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
