-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 30 avr. 2022 à 14:14
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
  `video_url` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1bdxqkj3u8266e9fj47raadfp` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `brick_set`
--

INSERT INTO `brick_set` (`id`, `description`, `name`, `price`, `serial_number`, `video_url`, `category_id`) VALUES
(1, 'À l\'aide ! Un requin approche de la côte et le surfeur ne le voit pas. Fonce lui porter secours avec le hors-bord du garde-côtes et lance-lui la bouée de sauvetage. Remonte le surfeur à bord avant que le requin ne s\'approche trop ! Inclut 2 figurines avec des accessoires : Le garde-côtes et un surfeur.\r\n', 'L\'intervention du garde-côtes', 5, '60011', 'https://www.youtube.com/watch?v=tZ8sgXJNnjQ&ab_channel=LEGO', 1),
(2, 'Interviens à bord du 4x4 de LEGO® City ! Tracte le bateau, mets l\'équipement de plongée et plonge dans l\'eau. Utilise le mégaphone pour diriger le plongeur qui effectue le sauvetage. Communique ensuite avec le talkie-walkie. Inclut 2 figurines : un pilote et un plongeur-sauveteur.\r\n', 'Le transporteur du bateau du garde-côtes', 18, '60012', 'https://www.youtube.com/watch?v=GGSKXPLVbO0&ab_channel=LEGO', 1);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'City'),
(2, 'Ninjago'),
(3, 'Jurassic World'),
(4, 'Super Mario'),
(5, 'Les Simpson');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
(8, 'https://www.lego.com/cdn/cs/catalog/assets/blt9ea0c8c10be3851b/1/LEGO_60012_PROD_DET04_1488.jpg?width=1000&format=webply', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
