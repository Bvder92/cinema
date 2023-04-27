-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Apr 26, 2023 at 02:48 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cinéma`
--

CREATE TABLE `Cinéma` (
  `IdCine` int NOT NULL,
  `NomCine` varchar(50) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `ImageCine` varchar(64) DEFAULT NULL,
  `localisation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Cinéma`
--

INSERT INTO `Cinéma` (`IdCine`, `NomCine`, `Ville`, `ImageCine`, `localisation`) VALUES
(1, 'Cinéma Cité La Défense', 'Nanterre', 'images/cinéma/ladefense-dome.jpg', "https://www.google.fr/maps/place/UGC+Cin%C3%A9+Cit%C3%A9+La+D%C3%A9fense/@48.8914608,2.2327449,17z/data=!3m1!4b1!4m6!3m5!1s0x47e66502f6012a89:0x31d9bac0d2b5f5!8m2!3d48.8914608!4d2.2349336!16s%2Fg%2F122vxhhf?hl=fr\r\n"),
(2, 'Cinéma Issy-Les-Moulineaux', 'Boulogne-Billancourt', 'images/cinéma/issy-les-moulineaux.jpg', "https://www.google.fr/maps?q=ugc+issy+les+moulineaux&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwi76eiIyoz-AhVDkScCHRM8B3QQ_AUoAXoECAEQAQ "),
(3, 'Cinéma Ciné Cité Rosny', 'Rosny-sous-Bois', 'images/cinéma/cité-rosny.jpg', "https://www.google.fr/maps/place/UGC+Cin%C3%A9+Cit%C3%A9+Rosny/@48.8809111,2.4789809,17z/data=!3m1!4b1!4m6!3m5!1s0x47e612c266e10a7f:0x94b1993d584903c4!8m2!3d48.8809111!4d2.4811696!16s%2Fg%2F1vnrk9w8?hl=fr"),
(4, 'Cinéma Cité O Parinor', 'Aulnay-sous-Bois', 'images/cinéma/cité-o-parinor.jpg', "https://www.google.fr/maps/place/UGC+Cin%C3%A9+Cit%C3%A9+O\'Parinor/@48.9596831,2.4731627,17z/data=!3m1!4b1!4m6!3m5!1s0x47e614c88187dfa1:0x232219de7e839682!8m2!3d48.9596831!4d2.4753514!16s%2Fg%2F11b72rbgvz?hl=fr"),
(5, 'Cinéma Cité Créteil', 'Creteil', 'images/cinéma/cité-créteil.jpg', "https://www.google.fr/maps?q=ugc+cin%C3%A9+cit%C3%A9+cr%C3%A9teil&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwiA9JDOyIz-AhWSoycCHbFgC3kQ_AUoAXoECAEQAQ"),
(6, 'Cinéma Nanterre Coeur Université', 'Nanterre', 'images/cinéma/nanterre-coeur.webp', "https://www.google.fr/maps?q=cgr+nanterre+c%C5%93ur+universit%C3%A9&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwjnjei2yIz-AhUsVaQEHU80DnUQ_AUoAnoECAEQAg"),
(7, 'Cinéma Brignais', 'Lyon', 'images/cinéma/brignais.jpg', "https://www.google.fr/maps/place/CIN%C3%89MA+CGR+Brignais/@45.678431,4.7740643,17z/data=!3m1!4b1!4m6!3m5!1s0x47f4e8ccfc1c9ae7:0x52b21e1f734e7619!8m2!3d45.678431!4d4.776253!16s%2Fg%2F1vjdpdp1?hl=fr"),
(8, 'Cinéma Epinay-sur-Seine ', 'Epinay-sur-Saine', 'images/cinéma/epinay.jpg', "https://www.google.fr/maps?q=cgr+epinay+sur+seine&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwjA3-2zx4z-AhUNnCcCHewIAcYQ_AUoAXoECAEQAQ"),
(9, 'Cinéma Paris-Lilas', 'Paris', 'images/cinéma/paris-lilas.jpg', "https://www.google.fr/maps?q=CGR+paris+lilas&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwjEzfSax4z-AhVInCcCHYqcD3kQ_AUoAnoECAEQAg\r\n"),
(10, 'Cinéma Sarcelles My Place', 'Sarcelles', 'images/cinéma/sarcelles-myplace.jpg', "https://www.google.fr/maps?q=cgr+sarcelles&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwi2zpfsx4z-AhV3kScCHclYBW8Q_AUoAXoECAEQAQ"),
(11, 'Cinéma Stade de France', 'Saint-Denis', 'images/cinéma/stade-de-france.jpg', "https://www.google.fr/maps/place/Gaumont+Saint-Denis/@48.9255076,2.3610198,17z/data=!3m1!4b1!4m6!3m5!1s0x47e66ea5741e79df:0x8b7cc414ff0e9999!8m2!3d48.9255076!4d2.3632085!16s%2Fg%2F11b5wfngzt?hl=fr"),
(12, 'Cinéma Alésia', 'Paris', 'images/cinéma/alésia.jpg', "https://www.google.fr/maps?q=path%C3%A9+al%C3%A9sia&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwj4qrivxoz-AhWwVaQEHb1xBQkQ_AUoAXoECAEQAQ\r\n"),
(13, 'Cinéma Aqualouevard', 'Paris ', 'images/aquaboulevard.jpg', "https://www.google.fr/maps?q=gaumont+aquaboulevard&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwiivpGUxoz-AhW4picCHawEDCsQ_AUoAnoECAEQAg\r\n"),
(14, 'Cinéma Convention', 'Paris', 'images/cinéma/aquaboulevard.jpg', "https://www.google.fr/maps/place/Path%C3%A9+Convention/@48.8376688,2.2964859,15z/data=!4m6!3m5!1s0x47e6701539d47a59:0x743253498a28d939!8m2!3d48.8376688!4d2.2964859!16s%2Fg%2F11cmcz5vht"),
(15, 'Cinéma Saron - IMAX', 'Saran', 'images/cinéma/saron-imax.jpg', "https://www.google.fr/maps/place/Path%C3%A9+Saran/@47.9463542,1.8940633,17z/data=!3m1!4b1!4m6!3m5!1s0x47e4fa561b2afd67:0xd7fe97d2e9be9e8d!8m2!3d47.9463542!4d1.896252!16s%2Fg%2F1hdzd5pp3?hl=fr");


-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `IdClient` int NOT NULL,
  `NomClient` varchar(30) NOT NULL,
  `PrenomClient` varchar(30) NOT NULL,
  `EmailClient` varchar(40) NOT NULL,
  `MdpClient` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`IdClient`, `NomClient`, `PrenomClient`, `EmailClient`, `MdpClient`) VALUES
(2, 'Chefirat', 'Naïm', 'naimssj4@gmail.com', 'mdpcompliqué'),
(4, 'Monkey D.', 'Luffy', 'monkeydluffy@gmail.com', '$2y$10$7QpYNSE6CbKGkuATn5WCJO8D0H59ZdE1baU1WiFnhZ7wjjF5neMfm'),
(5, 'Roronoa', 'Zoro', 'zoro@gmail.com', '$2y$10$TcYdqwjcDSDAe1KIysdQr.4souHLfLke535SKdDJXQ.cMFR8D/iLq'),
(7, 'aaa', 'aaa', 'aaa@gmail.com', '$2y$10$hAxad9JmtrmA.cdqkfQRXe8yoIfixZH1P9A.B2jNCmv7DuPdruhuy');

-- --------------------------------------------------------

--
-- Table structure for table `Film`
--

CREATE TABLE `Film` (
  `IdFilm` int NOT NULL,
  `NomFilm` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `GenreFilm` varchar(50) NOT NULL,
  `DuréeFilm` varchar(30) NOT NULL,
  `Producteur` varchar(30) NOT NULL,
  `ImageFilm` varchar(128) DEFAULT NULL,
  `BandeAnnonceFilm` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Film`
--

INSERT INTO `Film` (`IdFilm`, `NomFilm`, `GenreFilm`, `DuréeFilm`, `Producteur`, `ImageFilm`, `BandeAnnonceFilm`) VALUES
(1, 'Le Seigneur des anneaux : Le Retour du roi', 'Fantastique, Aventure', '3h 21min', 'Peter Jackson', 'images/films/seigneur3.jpeg', 'https://www.youtube.com/watch?v=RCuDRcK0BBM%22'),
(2, 'Le Seigneur des anneaux : Les Deux Tours', 'Fantastique, Aventure', '2h 59min', 'Peter Jackson', 'images/films/seigneur2.jpeg', 'https://www.youtube.com/watch?v=c9blKqmyeV4%22'),
(3, 'Le Seigneur des anneaux : La Communauté de l\'anneau', 'Fantastique, Aventure', '2h 58min', 'Peter Jackson', 'images/films/seigneur1.jpeg', 'https://www.youtube.com/watch?v=nalLU8i4zgs%22'),
(4, 'Le Hobbit : la bataille des cinq armées', 'Fantastique, Aventure', '2h 24min', 'Peter Jackson', 'images/films/hobbit3.webp', 'https://www.youtube.com/watch?v=UeJRHbC_BGA%22'),
(5, 'Le Hobbit : La désolation de Smaug', 'Fantastique, Aventure', '2h 41min', 'Peter Jackson', 'images/films/hobbit2.jpeg', 'https://www.youtube.com/watch?v=bvKLagxYhrc%22'),
(6, 'Le Hobbit : Un voyage inattendu', 'Fantastique, Aventure', '2h 49min', 'Peter Jackson', 'images/films/hobbit1.jpeg', 'https://www.youtube.com/watch?v=tiy7peMH3g8%22'),
(7, 'Inception', ' Science fiction, Thriller', '2h 28min', 'Christopher Nolan', 'images/films/inception.jpeg', 'https://www.youtube.com/watch?v=HcoZbHBDHQA%22'),
(8, 'Vol au-dessus d\'un nid de coucou ', ' Drame', '2h 09min', 'Milos Forman', 'images/films/coucou.jpeg', 'https://www.youtube.com/watch?v=OXrcDonY-B8%22'),
(9, 'Princesse Mononoké', 'Drame, Animation', '2h 15min', 'Hayao Miyazaki', 'images/films/momonoké.jpeg', 'https://www.youtube.com/watch?v=4OiMOHRDs14%22'),
(10, 'Le voyage de Chihiro', ' Animation, Aventure', ' 2h 05min', 'Hayao Miyazaki', 'images/films/chihiro.jpeg', 'https://www.youtube.com/watch?v=EhIZrZQoHuA%22'),
(11, 'Arrietty le petit monde des chapardeurs', 'Animation, Fantastique, Aventure', '1h 34min', 'Hiromasa Yonebayashi', 'images/films/arrietty.jpeg', 'https://www.youtube.com/watch?v=RYwYgH9uA_8%22'),
(12, 'La planète au trésor', 'Animation, Science fiction, Aventure', '1h 35min', 'Ron Clements', 'images/films/trésor.jpeg', 'https://www.youtube.com/watch?v=ZLvH-92GvaI%22'),
(13, 'Kuzko', ' Animation, Aventure, Comédie', ' 1h 18min', 'Mark Dindal', 'images/films/kuzco.jpeg', 'https://www.youtube.com/watch?v=f9Sb738xnas%22'),
(14, 'Blood diamond', 'Aventure, Drame, Thriller', '2h 23min', 'Edward Zwick', 'images/films/blood.jpeg', 'https://www.youtube.com/watch?v=yknIZsvQjG4%22'),
(15, 'Avengers', 'Action, Aventure, Science fiction', ' 2h 23min', 'Joss Whedon', 'images/films/avengers.jpeg', 'https://www.youtube.com/watch?v=b-kTeJhHOhc%22'),
(16, 'Avengers Endgame', 'Action, Fantastique, Aventure', '3h 01min', 'Joe Russo', 'images/films/endgame.jpeg', 'https://www.youtube.com/watch?v=wV-Q0o2OQjQ%22'),
(17, 'Avengers Infinity war', 'Action, Fantastique, Aventure', '2h 36min', 'Joe Russo', 'images/films/infinity.jpeg', 'https://www.youtube.com/watch?v=eIWs2IUr3Vs%22'),
(18, 'Iron man', ' Action, Science fiction', '2h 06min', 'Jon Favreau', 'images/films/ironman.png', 'https://www.youtube.com/watch?v=rDCTb9Gp2qk%22'),
(19, 'Spider-man', 'Fantastique, Action', ' 2h 01min', ' Sam Raimi', 'images/films/spiderman.jpeg', 'https://www.youtube.com/watch?v=t06RUxPbp_c%22'),
(20, 'Jumper', 'Aventure, Science fiction, Thriller', '1h 35min', 'Doug Liman', 'images/films/jumper.jpeg', 'https://www.youtube.com/watch?v=DtacNQkFHvo%22');

-- --------------------------------------------------------

--
-- Table structure for table `Réservation`
--

CREATE TABLE `Réservation` (
  `IdRéservation` int NOT NULL,
  `DateRéservation` date DEFAULT NULL,
  `RefClient` int DEFAULT NULL,
  `RefSéance` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Réservation`
--



-- --------------------------------------------------------

--
-- Table structure for table `Séance`
--

CREATE TABLE `Séance` (
  `IdSéance` int NOT NULL,
  `DateSéance` datetime NOT NULL,
  `RefFilm` int DEFAULT NULL,
  `RefCine` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Séance`
--

INSERT INTO `Séance` (`IdSéance`, `DateSéance`, `RefFilm`, `RefCine`) VALUES
(314, '2023-05-08 08:00:00', 3, 1),
(315, '2023-05-09 08:00:00', 2, 1),
(316, '2023-05-10 08:00:00', 1, 1),
(317, '2023-05-11 08:00:00', 6, 1),
(318, '2023-05-12 08:00:00', 5, 1),
(319, '2023-05-13 08:00:00', 4, 1),
(320, '2023-05-14 08:00:00', 7, 1),
(321, '2023-05-08 14:00:00', 8, 1),
(322, '2023-05-09 14:00:00', 9, 1),
(323, '2023-05-10 14:00:00', 10, 1),
(324, '2023-05-11 14:00:00', 18, 1),
(325, '2023-05-12 14:00:00', 19, 1),
(326, '2023-05-13 14:00:00', 14, 1),
(327, '2023-05-14 14:00:00', 16, 1),
(328, '2023-05-08 17:30:00', 13, 1),
(329, '2023-05-09 17:30:00', 11, 1),
(330, '2023-05-10 17:30:00', 12, 1),
(331, '2023-05-11 17:30:00', 20, 1),
(332, '2023-05-12 17:30:00', 15, 1),
(333, '2023-05-13 17:30:00', 17, 1),
(334, '2023-05-08 08:00:00', 3, 2),
(335, '2023-05-09 08:00:00', 2, 2),
(336, '2023-05-10 08:00:00', 1, 2),
(337, '2023-05-11 08:00:00', 6, 2),
(338, '2023-05-12 08:00:00', 5, 2),
(339, '2023-05-13 08:00:00', 4, 2),
(340, '2023-05-14 08:00:00', 7, 2),
(341, '2023-05-08 14:00:00', 8, 2),
(342, '2023-05-09 14:00:00', 9, 2),
(343, '2023-05-10 14:00:00', 10, 2),
(344, '2023-05-11 14:00:00', 18, 2),
(345, '2023-05-12 14:00:00', 19, 2),
(346, '2023-05-13 14:00:00', 14, 2),
(347, '2023-05-14 14:00:00', 16, 2),
(348, '2023-05-08 17:30:00', 13, 2),
(349, '2023-05-09 17:30:00', 11, 2),
(350, '2023-05-10 17:30:00', 12, 2),
(351, '2023-05-11 17:30:00', 20, 2),
(352, '2023-05-12 17:30:00', 15, 2),
(353, '2023-05-13 17:30:00', 17, 2),
(354, '2023-05-08 08:00:00', 3, 3),
(355, '2023-05-09 08:00:00', 2, 3),
(356, '2023-05-10 08:00:00', 1, 3),
(357, '2023-05-11 08:00:00', 6, 3),
(358, '2023-05-12 08:00:00', 5, 3),
(359, '2023-05-13 08:00:00', 4, 3),
(360, '2023-05-14 08:00:00', 7, 3),
(361, '2023-05-08 14:00:00', 8, 3),
(362, '2023-05-09 14:00:00', 9, 3),
(363, '2023-05-10 14:00:00', 10, 3),
(364, '2023-05-11 14:00:00', 18, 3),
(365, '2023-05-12 14:00:00', 19, 3),
(366, '2023-05-13 14:00:00', 14, 3),
(367, '2023-05-14 14:00:00', 16, 3),
(368, '2023-05-08 17:30:00', 13, 3),
(369, '2023-05-09 17:30:00', 11, 3),
(370, '2023-05-10 17:30:00', 12, 3),
(371, '2023-05-11 17:30:00', 20, 3),
(372, '2023-05-12 17:30:00', 15, 3),
(373, '2023-05-13 17:30:00', 17, 3),
(374, '2023-05-08 08:00:00', 3, 4),
(375, '2023-05-09 08:00:00', 2, 4),
(376, '2023-05-10 08:00:00', 1, 4),
(377, '2023-05-11 08:00:00', 6, 4),
(378, '2023-05-12 08:00:00', 5, 4),
(379, '2023-05-13 08:00:00', 4, 4),
(380, '2023-05-14 08:00:00', 7, 4),
(381, '2023-05-08 14:00:00', 8, 4),
(382, '2023-05-09 14:00:00', 9, 4),
(383, '2023-05-10 14:00:00', 10, 4),
(384, '2023-05-11 14:00:00', 18, 4),
(385, '2023-05-12 14:00:00', 19, 4),
(386, '2023-05-13 14:00:00', 14, 4),
(387, '2023-05-14 14:00:00', 16, 4),
(388, '2023-05-08 17:30:00', 13, 4),
(389, '2023-05-09 17:30:00', 11, 4),
(390, '2023-05-10 17:30:00', 12, 4),
(391, '2023-05-11 17:30:00', 20, 4),
(392, '2023-05-12 17:30:00', 15, 4),
(393, '2023-05-13 17:30:00', 17, 4),
(394, '2023-05-08 08:00:00', 3, 5),
(395, '2023-05-09 08:00:00', 2, 5),
(396, '2023-05-10 08:00:00', 1, 5),
(397, '2023-05-11 08:00:00', 6, 5),
(398, '2023-05-12 08:00:00', 5, 5),
(399, '2023-05-13 08:00:00', 4, 5),
(400, '2023-05-14 08:00:00', 7, 5),
(401, '2023-05-08 14:00:00', 8, 5),
(402, '2023-05-09 14:00:00', 9, 5),
(403, '2023-05-10 14:00:00', 10, 5),
(404, '2023-05-11 14:00:00', 18, 5),
(405, '2023-05-12 14:00:00', 19, 5),
(406, '2023-05-13 14:00:00', 14, 5),
(407, '2023-05-14 14:00:00', 16, 5),
(408, '2023-05-08 17:30:00', 13, 5),
(409, '2023-05-09 17:30:00', 11, 5),
(410, '2023-05-10 17:30:00', 12, 5),
(411, '2023-05-11 17:30:00', 20, 5),
(412, '2023-05-12 17:30:00', 15, 5),
(413, '2023-05-13 17:30:00', 17, 5),
(414, '2023-05-08 08:00:00', 3, 6),
(415, '2023-05-09 08:00:00', 2, 6),
(416, '2023-05-10 08:00:00', 1, 6),
(417, '2023-05-11 08:00:00', 6, 6),
(418, '2023-05-12 08:00:00', 5, 6),
(419, '2023-05-13 08:00:00', 4, 6),
(420, '2023-05-14 08:00:00', 7, 6),
(421, '2023-05-08 14:00:00', 8, 6),
(422, '2023-05-09 14:00:00', 9, 6),
(423, '2023-05-10 14:00:00', 10, 6),
(424, '2023-05-11 14:00:00', 18, 6),
(425, '2023-05-12 14:00:00', 19, 6),
(426, '2023-05-13 14:00:00', 14, 6),
(427, '2023-05-14 14:00:00', 16, 6),
(428, '2023-05-08 17:30:00', 13, 6),
(429, '2023-05-09 17:30:00', 11, 6),
(430, '2023-05-10 17:30:00', 12, 6),
(431, '2023-05-11 17:30:00', 20, 6),
(432, '2023-05-12 17:30:00', 15, 6),
(433, '2023-05-13 17:30:00', 17, 6),
(434, '2023-05-08 08:00:00', 3, 7),
(435, '2023-05-09 08:00:00', 2, 7),
(436, '2023-05-10 08:00:00', 1, 7),
(437, '2023-05-11 08:00:00', 6, 7),
(438, '2023-05-12 08:00:00', 5, 7),
(439, '2023-05-13 08:00:00', 4, 7),
(440, '2023-05-14 08:00:00', 7, 7),
(441, '2023-05-08 14:00:00', 8, 7),
(442, '2023-05-09 14:00:00', 9, 7),
(443, '2023-05-10 14:00:00', 10, 7),
(444, '2023-05-11 14:00:00', 18, 7),
(445, '2023-05-12 14:00:00', 19, 7),
(446, '2023-05-13 14:00:00', 14, 7),
(447, '2023-05-14 14:00:00', 16, 7),
(448, '2023-05-08 17:30:00', 13, 7),
(449, '2023-05-09 17:30:00', 11, 7),
(450, '2023-05-10 17:30:00', 12, 7),
(451, '2023-05-11 17:30:00', 20, 7),
(452, '2023-05-12 17:30:00', 15, 7),
(453, '2023-05-13 17:30:00', 17, 7),
(454, '2023-05-08 08:00:00', 3, 8),
(455, '2023-05-09 08:00:00', 2, 8),
(456, '2023-05-10 08:00:00', 1, 8),
(457, '2023-05-11 08:00:00', 6, 8),
(458, '2023-05-12 08:00:00', 5, 8),
(459, '2023-05-13 08:00:00', 4, 8),
(460, '2023-05-14 08:00:00', 7, 8),
(461, '2023-05-08 14:00:00', 8, 8),
(462, '2023-05-09 14:00:00', 9, 8),
(463, '2023-05-10 14:00:00', 10, 8),
(464, '2023-05-11 14:00:00', 18, 8),
(465, '2023-05-12 14:00:00', 19, 8),
(466, '2023-05-13 14:00:00', 14, 8),
(467, '2023-05-14 14:00:00', 16, 8),
(468, '2023-05-08 17:30:00', 13, 8),
(469, '2023-05-09 17:30:00', 11, 8),
(470, '2023-05-10 17:30:00', 12, 8),
(471, '2023-05-11 17:30:00', 20, 8),
(472, '2023-05-12 17:30:00', 15, 8),
(473, '2023-05-13 17:30:00', 17, 8),
(474, '2023-05-08 08:00:00', 3, 9),
(475, '2023-05-09 08:00:00', 2, 9),
(476, '2023-05-10 08:00:00', 1, 9),
(477, '2023-05-11 08:00:00', 6, 9),
(478, '2023-05-12 08:00:00', 5, 9),
(479, '2023-05-13 08:00:00', 4, 9),
(480, '2023-05-14 08:00:00', 7, 9),
(481, '2023-05-08 14:00:00', 8, 9),
(482, '2023-05-09 14:00:00', 9, 9),
(483, '2023-05-10 14:00:00', 10, 9),
(484, '2023-05-11 14:00:00', 18, 9),
(485, '2023-05-12 14:00:00', 19, 9),
(486, '2023-05-13 14:00:00', 14, 9),
(487, '2023-05-14 14:00:00', 16, 9),
(488, '2023-05-08 17:30:00', 13, 9),
(489, '2023-05-09 17:30:00', 11, 9),
(490, '2023-05-10 17:30:00', 12, 9),
(491, '2023-05-11 17:30:00', 20, 9),
(492, '2023-05-12 17:30:00', 15, 9),
(493, '2023-05-13 17:30:00', 17, 9),
(494, '2023-05-08 08:00:00', 3, 10),
(495, '2023-05-09 08:00:00', 2, 10),
(496, '2023-05-10 08:00:00', 1, 10),
(497, '2023-05-11 08:00:00', 6, 10),
(498, '2023-05-12 08:00:00', 5, 10),
(499, '2023-05-13 08:00:00', 4, 10),
(500, '2023-05-14 08:00:00', 7, 10),
(501, '2023-05-08 14:00:00', 8, 10),
(502, '2023-05-09 14:00:00', 9, 10),
(503, '2023-05-10 14:00:00', 10, 10),
(504, '2023-05-11 14:00:00', 18, 10),
(505, '2023-05-12 14:00:00', 19, 10),
(506, '2023-05-13 14:00:00', 14, 10),
(507, '2023-05-14 14:00:00', 16, 10),
(508, '2023-05-08 17:30:00', 13, 10),
(509, '2023-05-09 17:30:00', 11, 10),
(510, '2023-05-10 17:30:00', 12, 10),
(511, '2023-05-11 17:30:00', 20, 10),
(512, '2023-05-12 17:30:00', 15, 10),
(513, '2023-05-13 17:30:00', 17, 10),
(514, '2023-05-08 08:00:00', 3, 11),
(515, '2023-05-09 08:00:00', 2, 11),
(516, '2023-05-10 08:00:00', 1, 11),
(517, '2023-05-11 08:00:00', 6, 11),
(518, '2023-05-12 08:00:00', 5, 11),
(519, '2023-05-13 08:00:00', 4, 11),
(520, '2023-05-14 08:00:00', 7, 11),
(521, '2023-05-08 14:00:00', 8, 11),
(522, '2023-05-09 14:00:00', 9, 11),
(523, '2023-05-10 14:00:00', 10, 11),
(524, '2023-05-11 14:00:00', 18, 11),
(525, '2023-05-12 14:00:00', 19, 11),
(526, '2023-05-13 14:00:00', 14, 11),
(527, '2023-05-14 14:00:00', 16, 11),
(528, '2023-05-08 17:30:00', 13, 11),
(529, '2023-05-09 17:30:00', 11, 11),
(530, '2023-05-10 17:30:00', 12, 11),
(531, '2023-05-11 17:30:00', 20, 11),
(532, '2023-05-12 17:30:00', 15, 11),
(533, '2023-05-13 17:30:00', 17, 11),
(534, '2023-05-08 08:00:00', 3, 12),
(535, '2023-05-09 08:00:00', 2, 12),
(536, '2023-05-10 08:00:00', 1, 12),
(537, '2023-05-11 08:00:00', 6, 12),
(538, '2023-05-12 08:00:00', 5, 12),
(539, '2023-05-13 08:00:00', 4, 12),
(540, '2023-05-14 08:00:00', 7, 12),
(541, '2023-05-08 14:00:00', 8, 12),
(542, '2023-05-09 14:00:00', 9, 12),
(543, '2023-05-10 14:00:00', 10, 12),
(544, '2023-05-11 14:00:00', 18, 12),
(545, '2023-05-12 14:00:00', 19, 12),
(546, '2023-05-13 14:00:00', 14, 12),
(547, '2023-05-14 14:00:00', 16, 12),
(548, '2023-05-08 17:30:00', 13, 12),
(549, '2023-05-09 17:30:00', 11, 12),
(550, '2023-05-10 17:30:00', 12, 12),
(551, '2023-05-11 17:30:00', 20, 12),
(552, '2023-05-12 17:30:00', 15, 12),
(553, '2023-05-13 17:30:00', 17, 12),
(554, '2023-05-08 08:00:00', 3, 13),
(555, '2023-05-09 08:00:00', 2, 13),
(556, '2023-05-10 08:00:00', 1, 13),
(557, '2023-05-11 08:00:00', 6, 13),
(558, '2023-05-12 08:00:00', 5, 13),
(559, '2023-05-13 08:00:00', 4, 13),
(560, '2023-05-14 08:00:00', 7, 13),
(561, '2023-05-08 14:00:00', 8, 13),
(562, '2023-05-09 14:00:00', 9, 13),
(563, '2023-05-10 14:00:00', 10, 13),
(564, '2023-05-11 14:00:00', 18, 13),
(565, '2023-05-12 14:00:00', 19, 13),
(566, '2023-05-13 14:00:00', 14, 13),
(567, '2023-05-14 14:00:00', 16, 13),
(568, '2023-05-08 17:30:00', 13, 13),
(569, '2023-05-09 17:30:00', 11, 13),
(570, '2023-05-10 17:30:00', 12, 13),
(571, '2023-05-11 17:30:00', 20, 13),
(572, '2023-05-12 17:30:00', 15, 13),
(573, '2023-05-13 17:30:00', 17, 13),
(574, '2023-05-08 08:00:00', 3, 14),
(575, '2023-05-09 08:00:00', 2, 14),
(576, '2023-05-10 08:00:00', 1, 14),
(577, '2023-05-11 08:00:00', 6, 14),
(578, '2023-05-12 08:00:00', 5, 14),
(579, '2023-05-13 08:00:00', 4, 14),
(580, '2023-05-14 08:00:00', 7, 14),
(581, '2023-05-08 14:00:00', 8, 14),
(582, '2023-05-09 14:00:00', 9, 14),
(583, '2023-05-10 14:00:00', 10, 14),
(584, '2023-05-11 14:00:00', 18, 14),
(585, '2023-05-12 14:00:00', 19, 14),
(586, '2023-05-13 14:00:00', 14, 14),
(587, '2023-05-14 14:00:00', 16, 14),
(588, '2023-05-08 17:30:00', 13, 14),
(589, '2023-05-09 17:30:00', 11, 14),
(590, '2023-05-10 17:30:00', 12, 14),
(591, '2023-05-11 17:30:00', 20, 14),
(592, '2023-05-12 17:30:00', 15, 14),
(593, '2023-05-13 17:30:00', 17, 14),
(594, '2023-05-08 08:00:00', 3, 15),
(595, '2023-05-09 08:00:00', 2, 15),
(596, '2023-05-10 08:00:00', 1, 15),
(597, '2023-05-11 08:00:00', 6, 15),
(598, '2023-05-12 08:00:00', 5, 15),
(599, '2023-05-13 08:00:00', 4, 15),
(600, '2023-05-14 08:00:00', 7, 15),
(601, '2023-05-08 14:00:00', 8, 15),
(602, '2023-05-09 14:00:00', 9, 15),
(603, '2023-05-10 14:00:00', 10, 15),
(604, '2023-05-11 14:00:00', 18, 15),
(605, '2023-05-12 14:00:00', 19, 15),
(606, '2023-05-13 14:00:00', 14, 15),
(607, '2023-05-14 14:00:00', 16, 15),
(608, '2023-05-08 17:30:00', 13, 15),
(609, '2023-05-09 17:30:00', 11, 15),
(610, '2023-05-10 17:30:00', 12, 15),
(611, '2023-05-11 17:30:00', 20, 15),
(612, '2023-05-12 17:30:00', 15, 15),
(613, '2023-05-13 17:30:00', 17, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cinéma`
--
ALTER TABLE `Cinéma`
  ADD PRIMARY KEY (`IdCine`);

--
-- Indexes for table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`IdClient`);

--
-- Indexes for table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`IdFilm`);

--
-- Indexes for table `Réservation`
--
ALTER TABLE `Réservation`
  ADD PRIMARY KEY (`IdRéservation`),
  ADD KEY `RefClient` (`RefClient`),
  ADD KEY `RefSéance` (`RefSéance`);

--
-- Indexes for table `Séance`
--
ALTER TABLE `Séance`
  ADD PRIMARY KEY (`IdSéance`),
  ADD KEY `RefFilm` (`RefFilm`),
  ADD KEY `RefCine` (`RefCine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cinéma`
--
ALTER TABLE `Cinéma`
  MODIFY `IdCine` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `IdClient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Film`
--
ALTER TABLE `Film`
  MODIFY `IdFilm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Réservation`
--
ALTER TABLE `Réservation`
  MODIFY `IdRéservation` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `Séance`
--
ALTER TABLE `Séance`
  MODIFY `IdSéance` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Réservation`
--
ALTER TABLE `Réservation`
  ADD CONSTRAINT `Réservation_ibfk_1` FOREIGN KEY (`RefClient`) REFERENCES `Client` (`IdClient`),
  ADD CONSTRAINT `Réservation_ibfk_2` FOREIGN KEY (`RefSéance`) REFERENCES `Séance` (`IdSéance`);

--
-- Constraints for table `Séance`
--
ALTER TABLE `Séance`
  ADD CONSTRAINT `Séance_ibfk_1` FOREIGN KEY (`RefFilm`) REFERENCES `Film` (`IdFilm`),
  ADD CONSTRAINT `Séance_ibfk_2` FOREIGN KEY (`RefCine`) REFERENCES `Cinéma` (`IdCine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
