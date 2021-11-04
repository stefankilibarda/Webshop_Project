-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 04:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `knjige`
--

CREATE TABLE `knjige` (
  `barkod` varchar(6) NOT NULL,
  `naslov` varchar(80) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `cena` decimal(9,2) UNSIGNED NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `izdavac` varchar(20) NOT NULL,
  `opis` varchar(500) NOT NULL,
  `kategorija` varchar(20) NOT NULL,
  `godina_izdavanja` year(4) NOT NULL,
  `br_strana` smallint(4) NOT NULL,
  `slika` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knjige`
--

INSERT INTO `knjige` (`barkod`, `naslov`, `autor`, `cena`, `isbn`, `izdavac`, `opis`, `kategorija`, `godina_izdavanja`, `br_strana`, `slika`) VALUES
('112514', 'GOZBA ZA VRANE II deo', 'Džordž R. R. Martin', '989.00', '9788674364789', 'LAGUNA', 'Gvozdenim ostrvima vlada novi kralj, luđi i strašniji nego što je iko mogao i da zamisli. Nezasita morska neman sve više pruža svoje pipke ka obalama Sedam kraljevstava... Vitez sa zlatnom rukom krenuo je na put ka poslednjem zamku iznad koga se vijori barjak kralja na severu. Na tom putu otkriva mračne istine i bori se sa zlodusima sopstvene prošlosti. Za to vreme, dok zemljom haraju odmetničke družine, dvor u Kraljevoj luci tone sve dublje u vrtlog izdajstava i spletki.', 'fantastika', 2006, 412, 'gozba za vrane drugi deo.jpg'),
('122842', 'PISMA ASTROFIZIČARA', 'Nil de Gras Tajson', '764.00', '9788689565904', 'URBAN READS', 'Nil de Gras Tajson okupio je oko sebe jednu od najvećih internet zajednica na svetu, zahvaljujući svom fascinantnom i pristupačnom uvidu u prirodne nauke i Univerzum. Sada nas Tajson poziva da zavirimo iza kulisa njegove javne ličnosti i predstavlja nam svoju prepisku sa ljudima iz čitavog sveta koji su mu se obraćali u potrazi za odgovorima. U ovoj brižljivo probranoj zbirci od stotinak pisama, Tajson se oslanja na kosmičku perspektivu odgovarajući na brojna pitanja o nauci, veri, filozofiji, s', 'popularna_nauka', 2019, 200, 'pisma astrofizicara.jpg'),
('129588', 'IGRA PRESTOLA', 'Džordž R. R. Martin', '1169.00', '9788674360996', 'LAGUNA', 'U \"IGRI PRESTOLA\", Džordž R.R. Martin je stvorio istinsko remek-delo, objedinivši sve ono najbolje što žanr epske fantastike može da pruži. Magija, spletke, romanse i pustolovine ispunjavaju stranice prvog toma ovog epskog serijala, koji će zasigurno oduševiti ne samo ljubitelje žanra, već i mnogo širi krug čitalaca. Nad zemljom u kojoj leta mogu trajati decenijama, a zime pokolenjima, nadvili su se crni oblaci.', 'fantastika', 2011, 655, 'igra prestola.jpg'),
('220012', 'HARRY POTTER AND THE DEATHLY HALLOWS', 'J.K. Rowling', '1486.00', '9781408855713', 'BLOOMSBERY', 'As he climbs into the sidecar of Hagrids motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is now broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves, and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy.', 'english_books', 2014, 640, 'deathly hallows.jpeg'),
('252831', 'OLUJA MAČEVA II Krv i zlato', 'Džordž R. R. Martin', '1079.00', '9788674362228', 'LAGUNA', '\"Krv i zlato\", nastavlja tkanje raskošne tapiserije započete u \"Čeliku i Snegu\", povesti koja je bez daha ostavila milione čitalaca širom sveta. Dok se Rat petorice kraljeva približava krvavom vrhuncu, Džon Snežni i mala družina mladića i bogalja, ostavljeni od svih, spremaju se da sami zaustave divljansku plimu na kapiji Crnog zamka. Rob Stark, Kralj na Severu, kreće u još jedan pohod, da povrati zemlje svog oca.', 'fantastika', 2004, 507, 'oluja maceva drugi deo.jpg'),
('285772', 'HARRY POTTER AND THE CHAMBER OF SECRETS', 'J.K. Rowling', '1159.00', '9781408855669', 'BLOOMSBERY', 'Harry Potters summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone . Dobbys sinister predictions seem to be coming true.', 'english_books', 2014, 384, 'chamber.jpeg'),
('299881', 'GOZBA ZA VRANE I deo', 'Džordž R. R. Martin', '899.00', '9788674361405', 'LAGUNA', 'Sve izgleda previše dobro da bi bilo istinito. Posle ogorčenih borbi i podmuklih izdajstava, sile koje su podelile zemlju iscrpene su pristale na nelagodno primirje. Ili se bar tako čini. Posle smrti čudovišnog kralja Džofrija, Sersei vlada kao namesnica u Kraljevoj luci. Odlazak Roba Starka slomio je kičmu severnjačkoj buni, a njegova braća i sestre razbacani su po čitavom kraljevstvu, poput semenja na vetru. Rat koji je dugo i mahnito buktao, napokon je zgasnuo.', 'fantastika', 2006, 384, 'gozba za vrane prvi deo.jpg'),
('32767', 'HARRY POTTER AND THE PHILOSOPHERS STONE', 'J.K. Rowling', '1159.00', '9781408855652', 'BLOOMSBERY', 'Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harrys eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is abou', 'english_books', 2014, 352, 'philosopher.jpeg'),
('340795', 'SUDAR KRALJEVA', 'Džordž R. R. Martin', '1259.00', '9788674361405', 'LAGUNA', 'U drugom delu Pesme leda i vatre, Džordž R. R. Martin stvorio je delo neprevaziđenog zamaha, snage i mašte. Sudar kraljeva vodi nas u svet spletki i sjaja, čudesa i bitaka, potpuno drugačiji od svega što ste do sada iskusili.', 'fantastika', 2011, 756, 'sudar kraljeva.jpg'),
('418220', 'HARRY POTTER AND THE HALF BLOOD PRINCE', 'J.K. Rowling', '1486.00', '9781408855706', 'BLOOMSBERY', 'When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemorts darkest secrets, and Dumbledore prepares him to face his destiny.', 'english_books', 2014, 560, 'half-blood.jpeg'),
('431481', 'KRATKI ODGOVORI NA VELIKA PITANJA', 'Stiven Hoking', '959.00', '9788610028157', 'Vulkan izdavalastvo', 'Hoking je otkrio neke od najvećih misterija u univerzumu. Duboko je verovao u nauku i njenu moć da reši mnoge probleme na Zemlji. Dok se suočavamo sa sa ogromnim izazovima poput klimatskih promena, pretnji nuklearnim ratom, razvojem veštačke inteligencije, on svoju pažnju skreće upravo na najbitnija pitanja koja nas se tiču. Da li će čovečanstvo preživeti? Da li ćemo kolonizovati nove planete? Da li postoji Bog? Zanimljivo osmišljena knjiga koja predstavlja neku vrstu autorovog poslednjeg zavešt', 'popularna_nauka', 2019, 240, 'kratki_odgovori_na_velika_pitanja.jpg'),
('432786', 'HARRY POTTER AND THE ORDER OF THE PHOENIX', 'J.K. Rowling', '1486.00', '9781408855690', 'BLOOMSBERY', 'Dark times have come to Hogwarts. After the Dementors attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lords return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemorts savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time.', 'english_books', 2014, 816, 'phoenix.jpeg'),
('525841', 'OLUJA MAČEVA I Čelik i sneg', 'Džordž R. R. Martin', '1079.00', '9788674361856', 'LAGUNA', 'Od petorice takmaca za krunu, jedan je mrtav, jedan poražen, a rat se ipak rasplamsava žešće nego ikada. U svet se polako vraća davno zaboravljena magija, nova savezništva se sklapaju a stara raskidaju, neke bitke se vode mačevima i kopljima, a druge, odlučnije, perima i gavranovima. Dok Džon Snežni jaše s divljanima, njegov brat Rob, neporažen na bojnom polju, mora da se suoči sa izazovima sa kakvim se do sada nije sretao.', 'fantastika', 2004, 535, 'oluja maceva prvi deo.jpg'),
('674493', 'PLES SA ZMAJEVIMA II DEO Posle gozbe', 'Džordž R. R. Martin', '1169.00', '9788652109142', 'LAGUNA', 'Budućnost Sedam kraljevstava visi o koncu. Na istoku Deneris, poslednji izdanak kuće Targarjena, čiji su zmajevi sada već izrasli u strašne zveri, vlada kao kraljica grada podignutog na prahu i smrti, opkoljena neprijateljima.\r\nPošto se napokon pročulo gde je ona, mnogi traže Deneris i njene zmajeve. Među njima je kepec Tirion Lanister, koji je pobegao iz Kraljeve luke ucenjene glave, osuđen na smrt zbog ubistva svog sestrića kralja Džofrija, posle čega je ubio i svog omraženog oca lorda Tivina.', 'fantastika', 2012, 592, 'ples sa zmajevima drugi deo.jpg'),
('687519', 'ASTROFIZIKA ZA LJUDE KOJI SU U ŽURBI', 'Nil de Gras Tajson', '675.00', '9788689565546', 'URBAN READS', 'Veliki prasak? Crne rupe? Tamna materija? Tamna energija? Kvazari? Neutronske zvezde? Galaktička jata i kosmičko pozadinsko zračenje? Mehanika, kvantna i nebeska? Fotoni, protoni, kvarkovi, muoni i gluoni? Ako vam je dozlogrdilo da ne razumete o čemu se tu radi, ako želite da se uhvatite u koštac sa najnovijim idejama o tome ko smo, odakle dolazimo i kuda idemo, ako ste spremni da zasenite svoje društvo poznavanjem vrhunskih dometa savremene astrofizike, profesor Nil DeGras Tajson, jedan od najž', 'popularna_nauka', 2017, 144, 'astrofizika za ljude koji su u zurbi.jpg'),
('818524', 'HARRY POTTER AND THE PRISONER OF AZKABAN', 'J.K. Rowling', '1159.00', '9781408855676', 'BLOOMSBERY', 'When the Knight Bus crashes through the darkness and screeches to a halt in front of him, its the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harrys tea leaves . But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking ', 'english_books', 2014, 480, 'azkaban.jpeg'),
('830887', 'HARRY POTTER AND THE GOBLET OF FIRE', 'J.K. Rowling', '1486.00', '9781408855683', 'BLOOMSBERY', 'The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesnt stop Harry dreaming that he will win the competition. Then at Halloween, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!', 'english_books', 2014, 640, 'goblet.jpeg'),
('943241', 'PLES SA ZMAJEVIMA I DEO Snovi i prah', 'Džordž R. R. Martin', '1079.00', '9788652109135', 'LAGUNA', 'Budućnost Sedam kraljevstava visi o koncu. Na istoku Deneris, poslednji izdanak kuće Targarjena, čiji su zmajevi sada već izrasli u strašne zveri, vlada kao kraljica grada podignutog na prahu i smrti, opkoljena neprijateljima.\r\nPošto se napokon pročulo gde je ona, mnogi traže Deneris i njene zmajeve. Među njima je kepec Tirion Lanister, koji je pobegao iz Kraljeve luke ucenjene glave, osuđen na smrt zbog ubistva svog sestrića kralja Džofrija, posle čega je ubio i svog omraženog oca lorda Tivina.', 'fantastika', 2012, 440, 'ples sa zmajevima prvi deo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

CREATE TABLE `korpa` (
  `id` int(11) NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ukupno` decimal(9,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stavke_korpe`
--

CREATE TABLE `stavke_korpe` (
  `id` int(11) NOT NULL,
  `korpa_id` int(11) NOT NULL,
  `proizvod_id` varchar(6) NOT NULL,
  `cena` decimal(9,2) UNSIGNED NOT NULL,
  `kolicina` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjige`
--
ALTER TABLE `knjige`
  ADD PRIMARY KEY (`barkod`);

--
-- Indexes for table `korpa`
--
ALTER TABLE `korpa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stavke_korpe`
--
ALTER TABLE `stavke_korpe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proizvod_id` (`proizvod_id`),
  ADD KEY `korpa_id` (`korpa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korpa`
--
ALTER TABLE `korpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stavke_korpe`
--
ALTER TABLE `stavke_korpe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stavke_korpe`
--
ALTER TABLE `stavke_korpe`
  ADD CONSTRAINT `stavke_korpe_ibfk_1` FOREIGN KEY (`proizvod_id`) REFERENCES `knjige` (`barkod`),
  ADD CONSTRAINT `stavke_korpe_ibfk_2` FOREIGN KEY (`korpa_id`) REFERENCES `korpa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
