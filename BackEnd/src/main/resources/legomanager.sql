-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 mai 2022 à 13:50
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `legomanager`
--
DROP DATABASE IF EXISTS `legomanager`;
CREATE DATABASE IF NOT EXISTS `legomanager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `legomanager`;

-- --------------------------------------------------------

--
-- Structure de la table `brick_set`
--

DROP TABLE IF EXISTS `brick_set`;
CREATE TABLE IF NOT EXISTS `brick_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `sub_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs7dhbtvsmmjldr1x9me9yehgj` (`sub_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `brick_set`
--

INSERT INTO `brick_set` (`id`, `description`, `name`, `price`, `serial_number`, `sub_category_id`) VALUES
(1, 'À l\'aide ! Un requin approche de la côte et le surfeur ne le voit pas. Fonce lui porter secours avec le hors-bord du garde-côtes et lance-lui la bouée de sauvetage. Remonte le surfeur à bord avant que le requin ne s\'approche trop ! Inclut 2 figurines avec des accessoires : Le garde-côtes et un surfeur.\r\n', 'L\'intervention du garde-côtes', 5, '60011', 11),
(2, 'Interviens à bord du 4x4 de LEGO® City ! Tracte le bateau, mets l\'équipement de plongée et plonge dans l\'eau. Utilise le mégaphone pour diriger le plongeur qui effectue le sauvetage. Communique ensuite avec le talkie-walkie. Inclut 2 figurines : un pilote et un plongeur-sauveteur.\r\n', 'Le transporteur du bateau du garde-côtes', 18, '60012', 11),
(3, 'Rends-toi vite au phare avec la patrouille des garde-côtes LEGO® City ! Un couple est en danger dans leur embarcation qui coule et 3 requins nagent aux alentours ! Lance le sous-marin et l\'hélicoptère depuis le bateau de patrouille pour arriver rapidement. Sauve le couple avec les bouées, hisse-les dans l\'hélicoptère et effraie les requins avec les canons à eau ! Inclut 3 requins et 6 figurines avec des accessoires : un pilote, un capitaine, un membre d\'équipage, un sauveteur, un homme et une femme.\r\n', 'La patrouille des garde-côtes', 60, '60014', 11),
(4, 'Rejoins les plongeurs dans une exploration sous-marine à la recherche d\'un trésor disparu avec l\'explorateur sous-marin ! Dirige le puissant explorateur sous-marin dans les eaux transparentes, en route vers les profondeurs. Puis utilise les bras robots pour saisir le précieux cristal, mais attention au poulpe géant qui rôde dans les algues ! Il tient aussi un cristal dans l\'une de ses longues tentacules ! Peux-tu récupérer le précieux cristal ? Inclut une figurine de plongeur.\r\n', 'L\'explorateur sous-marin\r\n', 7, '60090', 22),
(5, 'Rejoins les explorateurs sous-marins LEGO® City dans leur recherche d\'un trésor perdu avec l\'ensemble de démarrage sous-marin ! Le plongeur a repéré un coffre mystérieux au fond de la mer et il a besoin de ton aide pour le libérer des algues. Prends les commandes du sous-marin à distance et utilise ses puissants bras robotiques pour libérer le coffre et révéler les trésors cachés à l\'intérieur. Mais attention au redoutable requin qui rôde dans les eaux sombres ! Inclut 3 figurines : un plongeur en profondeur et 2 plongeurs.\r\n', 'Ensemble de démarrage sous-marin\r\n', 9, '60091', 22),
(6, 'Rejoins les explorateurs sous-marins LEGO® City dans la base base opérationnelle en haute-mer ! Aide les experts à analyser les échantillons prélevés au fond de la mer, pendant qu\'à la surface le puissant hydravion arrive avec un sous-marin et des réserves d\'oxygène supplémentaires. Descends le sous-marin dans l\'eau et plonge pour aider le sous-marin de recherche à étudier le mystérieux coffre bloqué dans une grotte sous-marine. Utilise les bras robotiques du sous-marin pour couper la chaîne en fer et ouvrir la porte de la grotte. Sers-toi ensuite du pied de biche du plongeur en profondeur pour ouvrir le coffre et découvrir le trésor caché. Mais attention, il y a un requin redoutable dans les environs ! Une journée comme les autres pour les explorateurs sous-marins ! Comprend 5 figurines avec des accessoires assortis : un pilote, un plongeur en profondeur, un plongeur et 2 explorateurs sous-marins.\r\n', 'La base opérationnelle en haute-mer', 90, '60096', 22),
(7, 'Récupère le trésor englouti avec le bateau d\'exploration ! Une épave avec une cargaison de lingots d\'or a été repérée au fond de l\'océan. Saute à bord du puissant bateau d\'exploration et fonce sur place ! Ce modèle LEGO® City est plein de matériel de plongée de pointe. Lance le sous-marin télécommandé et l\'explorateur sous-marin et active le système de treuil pour descendre le sous-marin d\'exploration dans l\'eau. Puis entre dans la cage à requins et rejoins les autres plongeurs dans les profondeurs de l\'océan. Regarde le spectaculaire requin blanc, l\'espadon et le poulpe pendant que tu récupères les lingots d\'or dans l\'épave du bateau. Mais attention... Toute la structure est instable et peut s\'écrouler à tout moment ! Comprend 7 figurines : 2 membres d\'équipage, 4 plongeurs et un plongeur en profondeur.\r\n', 'Le bateau d\'exploration\r\n', 60, '60095', 22),
(8, 'Lorsque le tuyau éclate, la pelleteuse et son chauffeur passent à l\'action !\r\nPars dans les rues pour aller réparer la canalisation qui a éclaté avec la pelleteuse LEGO Juniors facile à construire. Utilise le seau pour creuser et la grue pour abaisser le tuyau !', 'La pelleteuse	', 9, '10666', 4),
(9, 'Abats le mur et reconstruis-le sur le chantier !\r\nSaisis ton casque et pars sur le chantier. Utilise la grue et la boule de destruction pour abattre le mur puis charge les briques dans le camion facile à construire, le tout aidé de la brouette. Utilise ensuite l\'échafaudage pour reconstruire le mur... voilà du beau travail !', 'La boîte de construction du chantier\r\n', 15, '10667', 4),
(10, 'Cherchons de l\'or avec ce puissant 4x4 !\r\nCe mineur conduit son puissant 4x4 de la mine pour chercher de l\'or. Ce ne sera pas facile mais avec sa dynamite, sa hache et sa foreuse, il ne mettra pas longtemps à trouver de l\'or. Fais exploser la roche avec la dynamite pour trouver les pépites d\'or et les cristaux !', 'Le 4X4 de la mine', 9, '4200', 4),
(11, 'Transporte l\'or hors de la mine avec le camion-benne !\r\nExtraire l\'or de la mine n\'est pas une tâche facile ! Heureusement, les mineurs ont leur camion-benne pour transporter les gros rochers provenant de la mine d\'or. Aide-les à utiliser la dynamite et la hache pour trouver l\'or caché !', 'Le camion-benne', 13, '4201', 4),
(12, 'Charge les rochers et trouve l\'or avec le camion de la mine !\r\nPour éteindre un gros incendie, il faut de gros véhicules et des héros qui n\'ont pas froid aux yeux ! Le puissant camion de la mine a été créé pour des aventures passionnantes de construction et de démolition. Charge les rochers dans le camion de la mine, transporte le chargement hors de la mine, pose la dynamite et fais tout exploser pour trouver l\'or caché !', 'Le camion de la mine', 21, '4202', 4),
(13, 'Attaque-toi aux tâches les plus difficiles grâce au gros transporteur avec excavatrice !\r\nLorsque les gros travaux commencent, le puissant transporteur passe à l\'action. Décharge l\'excavatrice du transporteur, fixe la foreuse et commence à creuser dans la roche ! Puis remplace la foreuse par la pelle pour emporter même les plus gros rochers !', 'Le transporteur', 21, '4203', 4),
(14, 'Creuse pour trouver de l\'or à l\'intérieur de la mine !\r\nLa mine est en pleine effervescence, pleine de mineurs cherchant de l\'or ! Brise la roche avec la grosse foreuse et transporte-la hors de la mine avec le train. Puis charge-la sur le tapis roulant avec la grue et emporte-la dans le camion ! Il y a même un coffre-fort pour ranger l\'or. Aide les mineurs à trouver encore plus d\'or en faisant tout exploser avec la dynamite !', 'La mine', 80, '4204', 4),
(15, 'Transporte le ciment sur le chantier de LEGO City !\r\nPose les bases d\'un nouveau bâtiment à LEGO City avec la robuste bétonnière ! Conduis la jusqu\'au lieu de construction, fais tourner le tambour, vise et déverse le ciment ! Dépêche-toi pour aider l\'ouvrier à poser le ciment, avant qu\'il ne durcisse, avec la pelle et la brouette !', 'La bétonnière', 18, '60018', 4),
(16, 'Problème de toilettes à LEGO City !\r\nProblème de toilettes ! Les travaux sont terminés sur le chantier, et il est temps de déplacer les toilettes portables vers leur prochaine destination. Aide le chauffeur à soulever les toilettes portables en utilisant la puissante grue située à l\'arrière du gros camion de service, \"argh...hé !\" Oh-oh... N\'oublie pas de vérifier que les toilettes ne sont pas occupées avant de commencer !', 'Le camion grue	', 18, '60073', 4),
(17, 'Recherche les secrets des glaces avec la motoneige arctique LEGO City super cool ! Aventure-toi dans le froid polaire avec l\'explorateur sur cet équipement arctique spécialisé. Brise l\'énorme bloc de glace avec la hache pour découvrir le mystérieux cristal à l\'intérieur. Utilise le talkie-walkie pour signaler ta découverte, puis charge la glace et le cristal sur le traîneau et retourne au camp de base pour effectuer des tests supplémentaires.', 'La motoneige', 9, '60032', 4),
(18, 'Atteins les destinations les plus éloignées avec le véhicule à chenille arctique LEGO City ! Ce véhicule utilitaire super robuste a de multiples phares et chenilles pour affronter le terrain glacé, et un radar et une antenne pour maintenir le contact avec l\'équipe de support. Aide l\'explorateur arctique à découvrir les secrets des glaces avec la hache et la scie circulaire. Charge tes découvertes passionnantes sur le camion en utilisant la puissante grue rotative et conduis vers le camp de base.', 'Le véhicule à chenille arctique', 18, '60033', 4),
(19, 'Explore le volcan et fais une découverte passionnante !\r\nPars avec l\'équipe d\'explorateurs du volcan et les scientifiques pour étudier le volcan actif ! Remplis le tout-terrain avec tout ce dont tu as besoin et n\'oublie pas l\'appareil-photo. Attention, le volcan est en éruption ! Examine le rocher à côté du volcan, qu\'y a-t-il à l\'intérieur ? Saisis le pic, tu es sur le point de faire une nouvelle découverte scientifique !', 'Ensemble de démarrage du volcan', 9, '60120', 4),
(20, 'Sors de la route et fais de grandes découvertes !\r\nMets-toi au volant du robuste camion d\'exploration du volcan et dirige-toi vers le site du volcan ! Déplace le rocher puis ouvre-le avec le marteau-piqueur. Regarde, il y a un élément de cristal à l\'intérieur ! Soulève-le à l\'arrière du camion et rapporte-le au laboratoire afin de pouvoir l\'étudier.', 'Le camion d\'exploration du volcan', 18, '60121', 4),
(21, 'Fais appel aux grosses machines pour bien explorer !\r\nExplorer est un travail difficile ! Fais appel à une puissante force de levage pour briser les rochers et découvrir ce qui est à l\'intérieur. Conduis la foreuse à chenilles sur le terrain difficile et utilise le tout-terrain pour placer les rochers en position. Utilise le marteau-piqueur pour briser les rochers et trouver le cristal caché. Découvrir des choses très cool rend amusant un travail difficile !', 'La foreuse à chenilles', 48, '60122', 4),
(22, 'Fonce vers la victoire avec le rallye automobile !\r\nAffronte tous les bolides avec la voiture de course super rapide ! Place l\'aileron, démarre en trombe depuis la grille de départ et fonce dans les virages les plus difficiles. Finis la course avant la meute et soulève le gros trophée du vainqueur !', 'La voiture de course	', 9, '60053', 17),
(23, 'Fais les plus grosses cascades avec le puissant Monster Truck !\r\nFais les plus grosses cascades avec le puissant camion monstre ! Construis le camion, place le chauffeur en position et fonce sur tous les obstacles qu\'il rencontre avec les énormes roues et le puissant moteur ! Écoute les cris de joie de la foule à chaque fois qu\'il fait une nouvelle cascade ! Vérifie ensuite les freins et les énormes roues avant le prochain spectacle incroyable.', 'Le Monster Truck', 12, '60055', 17),
(24, 'Arrive sur le circuit à temps avec le puissant transporteur de motos de course !\r\nL\'équipe de course à moto LEGO City se dirige vers le stade pour la course finale des championnats de moto ! Rejoins les as du pilotage à bord du transporteur de motos de course avec leurs motos ultra rapides. Lorsque tu arriveras au stade, aide à décharger les motos et dirige-toi vers le circuit. La foule est enthousiaste, cela va être une grande course ! Qui va monter sur la plus haute marche du podium pour soulever le trophée du championnat ?', 'Le transporteur de motos de course', 18, '60084', 17),
(25, 'Fonce vers la gloire avec cette version LEGO Speed Champions de l\'ultra rapide 458 Italia GT2 ! Ce véhicule à construire, prêt pour la course, comprend tous les détails réalistes de la voiture de course profilée de Ferrari. Fixe les enjoliveurs uniques super cool et place le pilote au volant. Fais la course avec tes amis dans des courses LEGO Speed Champions pour obtenir le trophée d\'argent !', 'Ferrari 458 Italia GT2	', 15, '75908', 39),
(26, 'Atteins la vitesse maximale avec la McLaren P1\r\nAtteins une vitesse maximale avec cette version LEGO Speed Champions de la surpuissante McLaren P1 ! Ce véhicule à construire, prêt pour la course, comprend tous les détails authentiques de la célèbre super voiture hybride de McLaren. Fixe les enjoliveurs élégants et utilise la clé pour préparer ta voiture. Mets le casque de pilote et prépare-toi à foncer. Passe entre les cônes et assure-toi de bien prendre le virage. Teste tes talents de pilote dans de passionnantes courses LEGO Speed Champions contre tes amis !', 'McLaren P1 Tm', 15, '75909', 39),
(27, 'Franchis le drapeau à damiers en premier avec la Porsche 918 Spyder !\r\nPars pour une course passionnante avec cette version LEGO Speed Champions de la Porsche 918 Spyder ! Ce véhicule à construire, prêt pour la course, comprend tous les détails réalistes de la spectaculaire voiture de sport hybride de Porsche. Choisis entre deux ensembles d\'enjoliveurs super cool et utilise la clé pour faire des ajustements. Puis place le pilote au volant et accélère. Fais la course contre les voitures LEGO Speed Champions de tes amis et sois le premier à passer devant le drapeau à damiers !', 'Porsche 918 Spyder', 15, '75910', 39),
(28, 'Rejoins l\'équipe de l\'espace au laboratoire des tests !\r\nRejoins l\'équipe de l\'espace au laboratoire des tests avec l\'ensemble de démarrage de l\'espace LEGO City ! L\'ingénieur doit resserrer les verrous et les boulons et vérifier la caméra infrarouge et la foreuse sur le buggy d\'exploration avant de l\'emmener faire un test de conduite sur un terrain imitant celui de Mars. Aide l\'astronaute à tester le jetpack puis rejoins le scientifique au poste informatique pour examiner les résultats. Une journée bien remplie pour l\'équipe de l\'espace LEGO City ! ', 'Ensemble de démarrage exploration spatiale	', 9, '60077', 16),
(29, 'Fonce dans l\'espace à bord de la navette spatiale spectaculaire !\r\nFonce dans l\'espace à bord de la navette spatiale de haute technologie ! Rejoins les astronautes pour une promenade dans l\'espace très haut au-dessus de la Terre alors qu\'ils lancent un nouveau satellite en orbite. Ouvre les portes du compartiment cargo et soulève lentement le satellite pour le mettre en position puis déplie les ailes avec panneaux solaires et utilise la clé pour les fixer en position. Quand tu as terminé, ferme les portes du compartiment cargo et reviens sur Terre pour la prochaine mission spatiale LEGO City passionnante ! ', 'La navette spatiale', 12, '60078', 16),
(30, 'Charge le camion avec les marchandises à emmener à l\'aéroport. Ouvre le panneau latéral et charge la marchandise depuis le chariot. Utilise les fourches mobiles et le diable pour t\'aider. Place le chauffeur au volant et prends la route pour effectuer une autre livraison.', 'Le camion avec les marchandises', 21, '60020', 10),
(31, 'Soulève les bûches les plus lourdes avec l\'avion cargo !\r\nUtilise l\'avion cargo pour transporter les bûches vers LEGO City ! Commence par décharger le gros quad de l\'avion. Conduis-le vers la forêt où les bûcherons travaillent dur pour scier les troncs d\'arbres avant de les transporter. Empile-les et utilise le quad pour les remorquer vers l\'avion cargo. Charge l\'avion et soulève les bûches avec les rotors ajustables et les puissants moteurs de l\'avion cargo ! Place le pilote dans le cockpit avec une tasse à café et son chien et effectue la livraison !', 'L\'avion-cargo	', 21, '60021', 10),
(32, 'Rétablis la circulation de LEGO City avec le camion de réparation des feux !\r\nLe feu de circulation est en panne et c\'est le chaos dans les rues de LEGO City ! Appelle le camion de réparation des feux, élève le réparateur en position avec le bras de la grue et répare le feu pour que la circulation soit rétablie. Et pendant qu\'il est ici, pourquoi ne pas changer l\'ampoule pour que les rues soient bien éclairées ? Collectionne ce véhicule et tous les autres véhicules de la gamme Super véhicules !', 'Le camion de réparation', 39, '60054', 13),
(33, 'Dépanne les plus gros véhicules en panne avec cette remorqueuse de camions surpuissante !\r\nQuand les plus gros camions de LEGO City tombent en panne, c\'est le moment d\'appeler la remorqueuse de camions ultra-puissante ! Abaisse le bras de la grue, attache le treuil qui fonctionne et saisis le véhicule en panne pour le fixer. Juste le temps de nettoyer rapidement avec le balai avant de sauter dans le siège du chauffeur et de remorquer le véhicule pour aller le faire réparer. Avec cette remorqueuse de camions géniale, la circulation à LEGO City sera toujours fluide ! Collectionne ce véhicule et tous les autres véhicules de la gamme Super véhicules !', 'La remorqueuse de camion	', 21, '60056', 17),
(34, 'Charge le camping-car et prépare-toi pour des aventures au bord de la rivière !\r\nPrépare-toi pour des aventures en plein air passionnantes avec le camping-car ! Trouve l\'endroit idéal au bord de la rivière, décharge le canoë du toit et mets le gilet de sauvetage. Puis pars sur l\'eau pour une journée passionnante d\'exploration, avant de revenir pour une bonne nuit de sommeil dans le spacieux camping-car, quand le soleil se couche. Collectionne ce véhicule et tous les autres véhicules de la gamme Super véhicules.', 'Le camping-car et son canoë', 21, '60057', 17),
(35, 'Conduis jusqu\'à la plage de LEGO City et prépare-toi à t\'amuser en scooter des mers !\r\nSaute dans le 4x4 et en route pour la plage de LEGO City pour un maximum d\'action sur l\'eau ! Fais reculer la remorque, fais le plein des scooters des mers puis lance-les sur l\'eau et prépare-toi à sauter les vagues !', 'Le 4X4 de transport des scooters de mer', 18, '60058', 17),
(36, 'Livre les voitures au concessionnaire avec le transporteur de voitures LEGO City avec des rampes qui se baissent, une remorque amovible, 2 voitures de sport super cool, 2 figurines et plus encore !\r\nLivre les voitures au concessionnaire avec ce spectaculaire transporteur de voitures !\r\nLivre les voitures neuves brillantes aux concessionnaires de LEGO City avec ce spectaculaire transporteur de voitures ! Détache la remorque, abaisse les rampes et décharge la voiture de sport très cool. Après que le client ait signé le papier, soulève les rampes pour les remettre à leur place, accroche la remorque et saute dans la cabine, prêt à transporter d\'autres véhicules pour les clients impatients ! ', 'Le camion de transport des voitures', 26, '60060', 17),
(37, 'Viens porter secours avec le pick up dépanneuse !\r\nOh non... la voiture est tombée en panne ! Un autre travail pour le service d\'assistance routière de LEGO City ! Saute à bord du pick-up dépanneuse, allume l\'avertisseur lumineux et fonce aider l\'automobiliste dont la voiture est en panne ! Si une réparation rapide n\'est pas possible, accroche le véhicule en panne, fais fonctionner le treuil pour soulever ses roues avant de la route et remorque-le vers l\'atelier de réparation le plus proche. Une journée de travail comme les autres pour le mécanicien du pick-up dépanneuse !', 'Le pick-up dépanneuse', 18, '60081', 17),
(38, 'Conduis le buggy des dunes vers la plage LEGO City pour plein d\'action tout-terrain !\r\nConduis le buggy des dunes vers la plage LEGO City pour plein d\'action tout-terrain ! Le nouveau buggy des dunes est arrivé et il est temps de faire un test de conduite ! Accroche la remorque au 4x4 et abaisse les rampes. Charge ce fantastique buggy, vérifie que tout est bien fixé et prends la route !', 'Le buggy des dunes	', 18, '60082', 17),
(39, 'Dégage la neige et la glace avec la puissante déneigeuse !\r\nIl neige beaucoup à LEGO City, c\'est donc le moment d\'appeler la patrouille de la neige ! Saute à bord de la redoutable déneigeuse, ajuste l\'énorme lame pour un effet de déneigement maximal, active la fonction de salage et dirige-toi vers la route couverte de neige !', 'La déneigeuse	', 18, '60083', 17),
(40, 'Envole-toi pour transporter le motard à l\'hôpital !\r\nAcclame le motard lorsqu\'il passe la ligne d\'arrivée ! S\'il tombe, aide le docteur à soigner le motard blessé. Puis mets-le sur la civière, fais-le monter dans l\'avion de secours et fais-le voler en sécurité !', 'L\'avion de secours	', 18, '60116', 10),
(41, 'Prépare le matériel, c\'est le moment d\'aller camper !\r\nPrépare-toi pour les vacances ! Emballe le grill et la nourriture et n\'oublie pas l\'os du chien. Apporte la cafetière et conduis vers le camping avec ta camionnette, en remorquant ta caravane. Installe la caravane et prépare-toi à t\'amuser ! C\'est génial d\'aller camper l\'été à LEGO City !', 'La camionnette et sa caravane', 21, '60117', 17),
(42, 'Aide à nettoyer LEGO City !\r\nMonte dans la cabine du camion poubelle et mets-toi au travail ! Conduis dans LEGO City à la recherche de détritus. Arrête-toi devant une poubelle et vide-la dans le camion ! Nettoie tous les déchets qui tombent, remonte dans le camion et en route pour la prochaine poubelle ! Il y a toujours du travail !', 'Le camion poubelle		', 18, '60118', 17),
(43, 'Les clients passent commande avec le camion pizza LEGO City, comprenant un camion avec des côtés qui s’ouvrent et une cuisine à l’arrière, un scooter et une table à construire avec un parasol.', 'Le camion pizza', 20, '60150', 17),
(44, 'Déplace-toi vite dans LEGO City à bord du train de passagers à grande vitesse !\r\nParcours vite la ville avec le train de passagers à grande vitesse LEGO City ! Fais fonctionner les 8 canaux, la télécommande à infrarouge à 7 vitesses pour foncer à toute vitesse sur les rails courbes. Ce train profilé et super performant a un profil avant conçu pour la vitesse et des points de contact électrique sur le dessus. Soulève le toit du wagon avant pour placer le conducteur à l\'intérieur devant le tableau de bord super cool et ouvre les wagons de passagers pour accéder aux sièges et aux tables. Attends le train avec le voyageur à la gare intermédiaire et pédale en sécurité pour traverser le passage à niveau une fois que le train est passé.', 'Le train de passagers à grande vitesse', 90, '60051', 9),
(45, 'Arrêtez le voleur avant qu\'il ne s\'enfuie à travers la forêt, avec la voiture de patrouille !\r\nLe policier forestier a repéré le voleur en train de s\'enfuir dans la forêt. Poursuivez-le avec la voiture de patrouille et passez-lui les menottes avant qu\'il ne saute par-dessus la barrière pour s\'échapper ! Prenez garde aux ours !', 'La voiture de patrouille en forêt	', 7, '4436', 7),
(46, 'Rattrapez le voleur en fuite avec le quad de la police !\r\nÀ l\'aide ! Le voleur s\'enfuit sur son tout-terrain très cool avec l\'argent volé et un lingot d\'or. Poursuivez-le et arrêtez-le avec le quad du policier forestier !', 'La course-poursuite en forêt', 11, '4437', 7),
(47, 'Arrête le voleur de diamants avec le tout-terrain de la police de LEGO City !\r\nLe cambrioleur s\'échappe avec sa brouette pleine de diamants volés ! Aide l\'officier de la police spéciale à l\'attraper sur son tout-terrain de la police ! Récupère les diamants et mets les menottes à ce criminel pour restaurer l\'ordre à LEGO City !', 'Le 4X4 de la police	', 6, '60006', 7),
(48, 'Poursuis avec Chase McCain le gangster qui s\'enfuit !\r\nCommence une course poursuite ultra rapide dans les rues de LEGO City alors que le voleur s\'échappe dans sa voiture de sport ultra rapide ! Il n\'ira pas loin avec l\'argent volé car Chase McCain est de service ! Poursuis-le avec le véhicule de la police spéciale et la moto de la police spéciale ! Puis prends un raccourci pour bloquer la route avec une bande de pointes à crever les roues qui fera perdre le contrôle de son véhicule au malfaiteur.', 'La course-poursuite de la police spéciale', 18, '60007', 7),
(49, 'Attrape le voleur avec la moto ultra rapide de la police et passe-lui les menottes !\r\nLe voleur s\'échappe avec l\'argent volé ! Aide le policier à le poursuivre sur la moto super cool de la police et passe-lui les menottes avant qu\'il ne saute la barrière et ne s\'enfuie avec son sac-à-dos plein de butin. ', 'La poursuite du bandit	', 5, '60041', 7),
(50, 'Voici une poursuite de police LEGO City ultra rapide avec une voiture de police, 2 motos, une rampe, un policier, 2 voleurs et des accessoires !\r\nLance-toi dans une poursuite policière ultra rapide et attrape les voleurs sur leurs motos !\r\nMais attention ! Les deux voleurs s\'enfuient avec l\'argent volé sur leurs motos. Lance la course-poursuite de la police alors que les voleurs sautent par dessus la rampe et font de folles acrobaties dans la ville ! Assure-toi que le policier dans sa voiture ultra rapide passe les menottes aux voleurs avant qu\'ils ne s\'enfuient pour de bon !', 'La chasse aux bandits', 9, '60042', 7),
(51, 'Empêche l\'évasion des voleurs avec l\'ensemble du transport du prisonnier LEGO City super cool, incluant un tout-terrain avec une chaîne, un policier, 2 voleurs et des accessoires.\r\nDéjoue la tentative d\'évasion lors du transport du prisonnier et attrape les voleurs !\r\nOh non ! Le voleur sur son tout-terrain a fait sortir le prisonnier du véhicule de transport du prisonnier blindé et l\'aide à s\'enfuir ! Tourne très vite, rattrape-les et passe-leur les menottes avant de les remettre à leur place : derrière les barreaux !', 'Le transport du prisonnier', 18, '60043', 7),
(52, 'Poursuis les voleurs avec l’unité de police mobile high-tech !\r\nGare l\'unité de police mobile, monte la parabole satellite et l\'antenne, et prépare-toi à suivre le voleur ! Utilise les écrans ultra modernes de la salle de surveillance pour localiser le voleur qui s\'enfuit avec la pile d\'argent et poursuis-le. Puis enferme-le dans la prison mobile. Fais attention à ce qu\'il ne s\'échappe pas pendant que les policiers boivent leur café !', 'L\'unité de police mobile', 21, '60044', 7),
(53, 'Attrape les voleurs qui s\'évadent du commissariat de police LEGO City !\r\nLa sirène du poste de police retentit ! La dépanneuse a arraché la fenêtre de la prison avec la chaîne et aide le prisonnier à s\'échapper ! Un prisonnier s\'échappe par le toit, tandis qu\'un autre a creusé un chemin d\'évasion secret depuis les toilettes ! Il n\'y a pas de temps à perdre ! Décolle dans l\'hélicoptère de la police et repère les fugitifs depuis le ciel puis poursuis-les dans la voiture de police et la moto avant qu\'ils ne s\'échappent pour de bon !', 'Le commissariat de police		', 80, '60047', 7),
(54, 'Fonce sur le lieu de l\'incendie LEGO City sur la moto des pompiers !\r\nDépêche-toi ! Un conteneur de recyclage est en feu à LEGO City ! Aide le pompier à arriver rapidement sur place sur sa moto ultra rapide. Puis utilise son extincteur pour empêcher les flammes de se propager !', 'La moto des pompiers', 6, '60000', 8),
(55, 'Fonce à la rescousse avec la voiture du chef des pompiers !\r\nPrêt à intervenir ! Lorsque le chat reste coincé dans l\'arbre, le chef des pompiers se précipite sur place dans sa voiture très cool pour faire descendre le chat en l\'attirant avec un poisson très appétissant. Le chef des pompiers est toujours prêt à aider les habitants de LEGO City !', 'La voiture du chef des pompiers	', 9, '60001', 8),
(56, 'Éteins les plus gros incendies avec le spectaculaire camion des pompiers LEGO City !\r\nTous à vos postes ! Il y a un incendie à LEGO City et les pompiers doivent se précipiter sur place dans leur incroyable camion de pompiers ! Connecte le tuyau, déplie l\'échelle et mets ton équipement de pompier. Puis le moment est venu de prendre une hache, de grimper à l\'échelle et d\'éteindre cet incendie !', 'Le camion de pompier', 18, '60002', 8),
(57, 'Prépare-toi à intervenir, à la caserne des pompiers LEGO City !\r\nC\'est une journée tranquille dans la caserne des pompiers LEGO City de 3 étages. Le chef des pompiers boit son café dans son bureau pendant qu\'un pompier répare le camion et qu\'un autre pompier fait une sieste bien méritée. Passe à l\'action lorsque la sirène retentit ! Fais glisser les pompiers le long de la rampe et place-les dans le camion des pompiers, la camionnette et l\'hélicoptère pour intervenir à LEGO City ! On peut s\'amuser sans fin avec cet énorme ensemble de construction avec 3 véhicules, de grandes fenêtres transparentes et 2 portes de garage rétractables.', 'La caserne des pompiers', 70, '60004', 8),
(58, 'Éteins les flammes avec le camion de pompiers de l\'aéroport LEGO City avec un canon à eau rotatif, un réacteur en flammes, des éléments d\'eau réalistes et plus encore !\r\nÉteins l\'incendie du réacteur avec le camion de pompiers de l\'aéroport !\r\nLe réacteur est en feu et les flammes doivent être éteintes de toute urgence ! Fonce sur place avec le camion de pompiers de l\'aéroport, pointe le canon à eau sur les flammes et éteins-le avec un jet d\'eau. Si cela ne suffit pas, déroule la lance à incendie et aide le pompier à déverser encore plus d\'eau sur les flammes. Aucun incendie n\'est trop grand pour l\'incroyable camion de pompiers de l\'aéroport ! ', 'Le camion de pompier de l\'aéroport', 21, '60061', 10),
(59, 'D’oh! La maison des Simpson a été transformée en briques LEGO !\r\nRecrée des scènes hilarantes de la série TV animée classique avec la maison des Simpson. Venant tout droit de Springfield, ce modèle génial est plein de détails en briques LEGO. Soulève le toit et ouvre la maison pour découvrir la grande chambre d\'Homer et Marge avec un lit et le berceau de Maggie, la chambre de Bart avec son skateboard et un poster de Krusty le Clown, la chambre de Lisa avec ses livres préférées, un poster de jazz et plus encore, et une salle de bains avec une douche, des toilettes, un lavabo et un miroir. Soulève le dernier étage pour découvrir la cuisine entièrement équipée avec une table de salle à manger, des chaises, un carrelage jaune et bleu et des nombreux pots, casseroles et autres accessoires. Puis viens dans le salon avec un canapé et une TV diffusant Itchy et Scratchy, un piano violet et plus encore. À côté de la maison se trouve le garage détachable, avec un établi, un porte-outils, un aspirateur, un balai, une boîte à outils, des outils et la voiture de la famille, avec une trace de choc, un coffre qui s\'ouvre et une barre \"radioactive\" de la centrale nucléaire. Sors sur la terrasse et tu trouveras pleins d\'articles super cool, notamment un grill, une brouette et un climatiseur avec une inscription \"Propriété de Ned Flanders\", des saucisses, 2 fauteuils de jardin, des pots de fleurs, une pelle, 2 verres à cocktail de fruit, la caméra de Lisa, la rampe de skateboard de Bart avec un graffiti \"El Barto\" et une antenne sur le toit. La maison des Simpson est l\'article de collectionneur parfait pour les fans de tous les âges.', 'La maison des Simpsons	', 200, '71006', 40),
(60, 'Visitez le Kwik-E-Mart—L\'épicerie préféré de Springfield !\r\nBienvenue dans le Kwik-E-Mart, ton magasin unique pour acheter des produits pratiques à des prix très peu pratiques ! Cette version LEGO détaillée du célèbre magasin Simpsons comprend plus de détails riches et colorés qu\'il n\'y a de bougies sur le gâteau d\'anniversaire de Mr. Burns ! Passe sous l\'énorme panneau Kwik-E-Mart et rejoins Homer, Marge et Bart alors qu\'ils parcourent les allées pleines de produits de beauté, de couches, d\'aliments pour chiens, de gâteaux, de fruits, de légumes et plus encore, notamment des Krusty-O et le potage des cœurs solitaires, portion pour une personne. Au comptoir, Apu est prêt à te tenter avec divers magazines imprimés, des bandes dessinées, des cartes, des hot-dogs au tofu, des beignets récemment périmés, et ses très populaires Squishees qui créent des hallucinations. Derrière, il y a une armoire de rangement avec un rat et une sortie. Sur le toit, tu découvriras le potager secret d\'Apu, tandis que l\'extérieur de ce modèle spectaculaire comprend des murs jaune vif, 2 cabines téléphoniques, une pile de boîtes violettes, et une zone de poubelles avec un graffiti \"El Barto\", une porte qui s\'ouvre et une poubelle bleue qui s\'ouvre aussi. Tu peux aussi soulever le toit et ouvrir les murs arrière pour avoir un accès facile. Cet ensemble inclut aussi Le Serpent, qui aime par dessus tout voler des voitures et cambrioler le Kwik-E-Mart ! Mais cette fois le Chef Wiggum le poursuit dans sa voiture de police. Capture ce bandit et restaure la paix dans la ville de Springfield et l\'extraordinaire Kwik-E-Mart.', 'Kwik-E-Mart	', 220, '71016', 40),
(61, 'Commence une grande aventure dans le refuge de montagne 3-en-1 !\r\nRéveille-toi avec l\'alpiniste dans son refuge de montagne et prépare-le pour son expédition. Ouvre la cabane à charnières pour révéler les détails intérieurs super cool, incluant une cheminée, une table et des chaises. Puis pars escalader la montagne, entre dans la grotte pour chercher le trésor caché ou pars juste faire un tour avec le quad super cool.', 'Le refuge de montagne	', 35, '31025', 41),
(62, 'Profite des aventures d\'été avec la cabane de la plage 3-en-1 !\r\nTout le monde va faire du surf ! Il y a beaucoup à faire dans la cabane ensoleillée à la plage 3-en-1 LEGO Creator. Ramasse des étoiles de mer, nage depuis la jetée, va surfer sur les vagues ou essaye la planche à pagaie ! Déplie la cabane à la plage et tu as un magasin de surf où tu peux louer des planches de surf, donner des leçons de surf et servir des boissons fraîches aux clients amateurs de soleil. Cet ensemble 3-en-1 génial est plein de détails imaginatifs et se transforme en cabane d\'été super cool avec une piscine extérieure, ou en maison d\'été au bord de la mer, le tout avec un seul ensemble de briques !', 'La cabane de plage	', 21, '31035', 41),
(63, 'Découvre un monde d\'aventures avec ce passionnant magasin de jouets et épicerie 3-en-1.\r\nOuvre un monde d\'aventures avec ce passionnant magasin de jouets et épicerie 3-en-1. Sers à tes clients des fruits et des légumes frais, un journal ou de délicieuses boissons dans la confortable épicerie, ou visite le magasin de jouets à côté où un robot super cool est en vente ! Puis jette un œil dehors, achète une excellente pomme rouge ou essaie le distributeur de chewing-gums aux couleurs vives ! Cet adorable magasin peut être déplié pour accéder à son intérieur détaillé, ou pour créer une façade de rue principale colorée, comprenant 2 magasins : un magasin de jouets et une épicerie, chacun avec sa propre enseigne. Le balcon du magasin de jouets et de l\'épicerie se transforme en passerelle qui relie 2 appartements confortables au premier étage. Ajoute tes propres créations LEGO pour agrandir la rue principale ! ', 'Le magasin de jouet et l\'épicerie	', 35, '31036', 41),
(64, 'Sers de délicieux sandwiches dans le comptoir \"Deli\" 3-en-1 !\r\nOuvre ton propre comptoir \"Deli\" avec un auvent à rayures rouges et blanches, une façade aux couleurs vives et un panneau en forme de sandwich très cool. Prépare des sandwiches dans la cuisine confortable, puis ouvre les grands passe-plats. Accueille les clients affamés qui s’arrêtent sur le trottoir près des lampadaires et de la borne à incendie. Quand le moment de faire une pause arrive, utilise les escaliers pour monter dans le confortable appartement du premier étage avec sa chaise confortable, sa lampe et son accès au balcon et à la terrasse sur le toit. Transforme l\'ensemble pour créer une petite maison ou un magasin de fleurs !', 'Le comptoir Deli', 25, '31050', 41),
(65, 'Passe des journées merveilleuses dans la spectaculaire cabane dans l\'arbre !\r\nVis des aventures passionnantes avec ce modèle LEGO Creator 3-en-1 coloré. Aide les enfants à construire la cabane dans l\'arbre. Abaisse la poulie pour soulever les planches, cloue les planches ensemble et utilise le rouleau de peinture pour ajouter les touches finales. Lorsque tu as fini de construire, mets tes outils dans la cachette secrète et hisse le drapeau de la maison ! Utilise le pistolet à eau pour repousser les envahisseurs et amuse-toi à soigner le minuscule geai bleu et la grenouille qui vivent dans l\'arbre. Transforme-le en maison de club super cool ou en fort spectaculaire.', 'Les aventures dans la cabane dans l\'arbre', 21, '31053', 41),
(66, 'Fais un tour en ville avec cette maison de ville de trois étages, inspirée par Manhattan, comprenant des coloris authentiques beige, noir, blanc, marron, vert sable et rouge foncé, une porte d’entrée bleue, de grandes fenêtres, des fenêtres à la cave, des rampes noires, des marches, un balcon et un escalier extérieur, plus un parc avec un banc à construire, un panneau et un lampadaire. Déploie la maison de ville pour créer une double façade et accéder à son intérieur détaillé avec une télé à écran plat, un canapé, une cheminée, une cuisine et une chambre. Transforme ce modèle LEGO Creator 3-en-1 en café ou en maison de banlieue avec une serre. Inclut deux figurines plus un chien et un oiseau à construire.', 'La maison de ville		', 35, '31065', 41),
(67, 'Fais sortir Michelangelo du laboratoire du Kraang !\r\nÉchappe aux malfaiteurs avec une bonne dose de puissance tortue ! Le Kraang a enfermé Michelangelo dans une prison laser à l\'intérieur de son laboratoire. Utilise les restes de Pizza de Michelangelo pour le sortir de cette situation délicate et le libérer ! Fais glisser la pizza dans les barres de la prison pour faire glisser et tomber le soldat ! Puis active la fonction d\'explosion sur la cage de Michelangelo pour qu\'il s\'échappe ! Une fois qu\'il est libre, lutte contre le Kraang dans son redoutable robot avec doubles missiles laser. Prépare-toi pour une folle aventure dans les égouts de la ville alors que le Kraang détache les jambes du robot pour créer une capsule d\'évasion volante ! Ne le laisse pas s\'échapper !', 'L\'évasion du laboratoire de Kraang	', 10, '79100', 42),
(68, 'Poursuis Shredder et récupère le plan !\r\nLa puissance tortue passe à l\'action pour affronter Shredder ! Lorsque Shredder fonce sur sa moto dragon avec des doubles flammes d\'échappement et de vrais pneus en caoutchouc, Donatello remarque une carte du repairedes tortues sur ses pinces ! Démarre le skateboard motorisé de Donatello pour l\'arrêter avant qu\'il ne trouve le repairesecret. Lutte contre le soldat avec le sceptre de Donatello et poursuis la menace au visage métallique dans les rues de la ville pour récupérer cette carte !', 'La moto dragon de Schredder', 19, '79101', 42),
(69, 'Arrête Fishface dans une poursuite avec carapace furtive dans les égouts !\r\nFishface cherche les problèmes sur son écumeur des égouts éclabousseur de mutagène. Poursuis-le dans les égouts de la ville dans la carapace furtive de Raphael ! Déjoue ces missiles inversés avec la carapace furtive à trois roues et ses doubles flammes d\'échappement. Puis tire les doubles missiles sur ce mutant menaçant avant qu\'il n\'asperge toute la ville de mutagène !', 'La poursuite en carapace furtive	', 19, '79102', 42),
(70, 'Assomme les ennemis avec les poings géants d\'Axl l\'Ultime chevalier !\r\nAxl l\'Ultime chevalier a toujours faim, et maintenant cet imposant chevalier a hâte d\'affronter Jestro et les monstres de lave. Pour commencer, entre dans l\'action en donnant des coups de poing avec les poings géants ! Puis attire les ennemis avec la massue magnétique pour un maximum de dégâts, ou fais voler les lames tournantes ! Augmente tes pouvoirs en scannant les boucliers pour obtenir 3 NEXO pouvoirs pour ta collection numérique de capacités uniques pour vaincre Jestro et les monstres de lave dans l\'appli gratuite LEGO NEXO KNIGHTS : MERLOK 2.0. Scanne les 3 NEXO pouvoirs : Coup de poing, Magnétisme et Pétrification.', 'Axl l\'ultime chevalier', 6, '70336', 38),
(71, 'L’ensemble La super armure de Clay LEGO NEXO KNIGHTS comprend une armure de combat à construire avec des membres mobiles, un cockpit pour figurine, une épée géante, un poing géant et un bouclier Combo NEXO Pouvoir. ', 'La super armure de Clay	', 6, '70362', 38),
(72, 'Macy peut être le chevalier le plus redoutable du royaume avec avec cet ensemble La super armure de Macy LEGO NEXO KNIGHTS, comprenant une armure de combat à construire avec des membres mobiles, un cockpit pour figurine, une massue géante, un poing géant et un bouclier Combo NEXO Pouvoir. ', 'La super armure de Macy', 6, '70363', 38),
(73, 'L’ensemble La super armure d’Aaron LEGO NEXO KNIGHTS comprend une armure de combat à construire avec des membres mobiles, un cockpit pour figurine, un arc enflammé avec des fusils à ressorts, un poing géant et un bouclier Combo NEXO Pouvoir.', 'La super armure de Aaron', 6, '70364', 38),
(74, 'Axl a un avantage mécanisé avec l’ensemble La super armure d’Axl LEGO NEXO KNIGHTS, comprenant une armure de combat à construire avec des membres mobiles, une hache géante à construire, un poing géant et un bouclier Combo NEXO Pouvoir.', 'La super armure de Axl', 6, '70365', 38),
(75, 'Les autres chevaliers seront vite devancés avec l’ensemble La super armure de Lance LEGO NEXO KNIGHTS, comprenant une armure de combat à construire avec des pieds qui roulent, des membres mobiles, un cockpit pour figurine, une lance géante, un poing géant et un bouclier Combo NEXO Pouvoir.', 'La super armure de Lance', 6, '70366', 38);

-- --------------------------------------------------------

--
-- Structure de la table `brick_set_images`
--

DROP TABLE IF EXISTS `brick_set_images`;
CREATE TABLE IF NOT EXISTS `brick_set_images` (
  `brick_set_id` bigint(20) NOT NULL,
  `images_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_328j35gaxjl2hpgrro9af94f9` (`images_id`),
  KEY `FK2sjgwl3d463rd5u7y2qlr6k1w` (`brick_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `details`) VALUES
(1, 'Lego 4+', 'Modèles faciles à construire'),
(2, 'Lego Architecture', 'Architecture'),
(3, 'Lego Boost', 'Jouet connecté'),
(4, 'Lego BrickHeadz', 'Figurines bobblehead'),
(5, 'Lego Bricktober', 'Figurines à collectionner'),
(6, 'Lego City', 'Vie quotidienne	\n'),
(7, 'Lego Classic', '	Lots de briques'),
(8, 'Lego DC Comics Super Heroes', 'Héros de l\'univers DC Comics'),
(9, 'Lego Creator', 'Constructions multiples'),
(10, 'Lego Disney', 'Produits Disney'),
(11, 'Lego DOTs', 'Bijoux	'),
(12, 'Lego Duplo', 'Grosses briques pour les plus petits'),
(13, 'Lego Friends', 'Vie quotidienne	'),
(14, 'Lego Harry Potter', 'Dérivé d\'Harry Potter'),
(15, 'Lego Hidden Side', 'Lieux hantés, monstres fantastiques'),
(16, 'Lego Ideas', '	Projets de la communauté Lego'),
(17, 'Lego Jurassic World', 'Dérivé de Jurassic World'),
(18, 'Lego Marvel Super Heroes', 'Héros de l\'univers Marvel Comics'),
(19, 'Lego Minecraft', 'Dérivé de Minecraft'),
(20, 'Lego Minifigures', 'Figurines à collectionner'),
(21, 'Lego Ninjago', 'Dérivé de Ninjago'),
(22, 'Lego Speed Champions', 'Compétition automobile'),
(23, 'Lego Spider-Man', 'Spider-Man'),
(24, 'Lego Star Wars', 'Dérivé de Star Wars'),
(25, 'Lego Stranger Things', '	Dérivé de Stranger Things'),
(26, 'Lego Castle', 'Moyen Âge'),
(27, 'Lego Cars', 'Dérivé de Cars'),
(28, 'Lego Elves', 'Elfes'),
(29, 'Lego Juniors', '	Modèles faciles à construire'),
(30, 'Lego Legends of Chima', 'Dérivé de Legends of Chima '),
(31, 'Lego Lord of the Rings', 'Dérivé du Seigneur des anneaux'),
(32, 'Lego Pirates', '	Piraterie'),
(33, 'Lego Pirates of the Caribbean', 'Dérivé de Pirates des Caraïbes'),
(34, 'Lego Scooby-Doo', 'Dérivé de Scooby-Doo'),
(35, 'Lego The Simpsons', 'Dérivé des Simpson'),
(36, 'Lego Teenage Mutant Ninja Turtles', 'Dérivé de Les Tortues Ninja');

-- --------------------------------------------------------

--
-- Structure de la table `category_sub_categories`
--

DROP TABLE IF EXISTS `category_sub_categories`;
CREATE TABLE IF NOT EXISTS `category_sub_categories` (
  `category_id` bigint(20) NOT NULL,
  `sub_categories_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_bvsvfpcbk584cpyecc213hl3m` (`sub_categories_id`),
  KEY `FK7nbi6sujo9f751qbbbt0088b2` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_address` varchar(2000) DEFAULT NULL,
  `brick_set_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq3cio9cj5t3hawjglcuy14bf` (`brick_set_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `url_address`, `brick_set_id`) VALUES
(1, 'https://www.lego.com/cdn/cs/catalog/assets/blt3af1b498dc8546a2/1/LEGO_60011_PROD_PRI_1488.jpg?width=1000&format=webply', 1),
(2, 'https://www.lego.com/cdn/cs/catalog/assets/blt759e2a87d9c7cd82/1/LEGO_60011_PROD_DET01_1488.jpg?width=1000&format=webply', 1),
(3, 'https://www.lego.com/cdn/cs/catalog/assets/bltae97b30d7161a4ef/1/LEGO_60011_PROD_DET02_1488.jpg?width=1000&format=webply', 1),
(4, 'https://www.lego.com/cdn/cs/catalog/assets/blt7deb80bd90656aa2/1/LEGO_60012_PROD_PRI_1488.jpg?width=1000&format=webply', 2),
(5, 'https://www.lego.com/cdn/cs/catalog/assets/blt8b9188a3e13b6cab/1/LEGO_60012_PROD_DET01_1488.jpg?width=1000&format=webply', 2),
(6, 'https://www.lego.com/cdn/cs/catalog/assets/blt4f653e02bf63e7ab/1/LEGO_60012_PROD_DET02_1488.jpg?width=1000&format=webply', 2),
(7, 'https://www.lego.com/cdn/cs/catalog/assets/blt790146fe5c19bcf5/1/LEGO_60012_PROD_DET03_1488.jpg?width=1000&format=webply', 2),
(8, 'https://www.lego.com/cdn/cs/catalog/assets/blt9ea0c8c10be3851b/1/LEGO_60012_PROD_DET04_1488.jpg?width=1000&format=webply', 2),
(9, 'https://www.lego.com/cdn/cs/catalog/assets/bltdf103d96107bf216/1/LEGO_60014_PROD_PRI_1488.jpg?width=1000&format=webply', 3),
(10, 'https://www.lego.com/cdn/cs/catalog/assets/blt16cf71711994af92/1/LEGO_60014_PROD_DET01_1488.jpg?width=1000&format=webply', 3),
(11, 'https://www.lego.com/cdn/cs/catalog/assets/blt353001f3ce65801f/1/LEGO_60014_PROD_DET02_1488.jpg?width=1000&format=webply', 3),
(12, 'https://www.lego.com/cdn/cs/catalog/assets/blt3aee59fb7673bed2/1/LEGO_60014_PROD_DET03_1488.jpg?width=1000&format=webply', 3),
(13, 'https://www.lego.com/cdn/cs/catalog/assets/bltc11e0425c9a37163/1/LEGO_60014_PROD_DET04_1488.jpg?width=1000&format=webply', 3);

-- --------------------------------------------------------

--
-- Structure de la table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE IF NOT EXISTS `sub_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK49k91lir0rsc4cgk1r9gg26sn` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `category_id`) VALUES
(1, 'Architect Series', 2),
(2, 'Landmark Series', 2),
(3, 'Skyline', 2),
(4, 'Chantier', 6),
(5, 'Construction', 6),
(6, 'Hôpital', 6),
(7, 'Police', 6),
(8, 'Pompiers', 6),
(9, 'Trains', 6),
(10, 'Aéroport', 6),
(11, 'Gardes-côtes', 6),
(12, 'Port', 6),
(13, 'Vie en ville', 6),
(14, 'Cargo', 6),
(15, 'Ferme', 6),
(16, 'Espace', 6),
(17, 'Véhicules', 6),
(18, 'Policiers de la forêt', 6),
(19, 'Pompiers de la forêt', 6),
(20, 'Arctique', 6),
(21, 'Démolition', 6),
(22, 'Explorateurs de la mer', 6),
(23, 'Police des marais', 6),
(24, 'Explorateurs du volcan', 6),
(25, 'Police en haute mer', 6),
(26, 'Jungle', 6),
(27, 'Police de montagne', 6),
(28, 'X-Pod', 9),
(29, 'Expert', 9),
(30, 'Modular Buildings', 9),
(31, 'Pirates of the Caribbean', 10),
(32, 'Disney Princess', 10),
(33, 'La Reine des neiges', 10),
(34, 'Ninja', 26),
(35, 'Knights\' Kingdoms', 26),
(36, 'Castle', 26),
(37, 'Kingdoms', 26),
(38, 'Nexo Knights', 26),
(39, 'Compétition automobile', 22),
(40, 'Lego The Simpsons', 35),
(41, '3 en 1', 9),
(42, 'TMNT', 36);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
