-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Apr 11, 2023 at 06:02 PM
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
  `Ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Cinéma`
--

INSERT INTO `Cinéma` (`IdCine`, `NomCine`, `Ville`) VALUES
(1, 'Cinéma Cité La Défense', 'Nanterre'),
(2, 'Cinéma Issy-Les-Moulineaux', 'Boulogne-Billancourt'),
(3, 'Cinéma Ciné Cité Rosny', 'Rosny-sous-Bois'),
(4, 'Cinéma Cité O Parinor', 'Aulnay-sous-Bois'),
(5, 'Cinéma Cité Créteil', 'Creteil'),
(6, 'Cinéma Nanterre Coeur Université', 'Nanterre'),
(7, 'Cinéma Brignais', 'Lyon'),
(8, 'Cinéma Epinay-sur-Seine ', 'Epinay-sur-Saine'),
(9, 'Cinéma Paris-Lilas', 'Paris'),
(10, 'Cinéma Sarcelles My Place', 'Sarcelles'),
(11, 'Cinéma Stade de France', 'Saint-Denis'),
(12, 'Cinéma Alésia', 'Paris'),
(13, 'Cinéma Aqualouevard', 'Paris '),
(14, 'Cinéma Convention', 'Paris'),
(15, 'Cinéma Saron - IMAX', 'Saran');

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
  `ImageFilm` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Film`
--

INSERT INTO `Film` (`IdFilm`, `NomFilm`, `GenreFilm`, `DuréeFilm`, `Producteur`, `ImageFilm`) VALUES
(1, 'Le Seigneur des anneaux : Le Retour du roi', 'Fantastique, Aventure', '3h 21min', 'Peter Jackson', 'images/films/seigneur3.jpeg'),
(2, 'Le Seigneur des anneaux : Les Deux Tours', 'Fantastique, Aventure', '2h 59min', 'Peter Jackson', 'images/films/seigneur2.jpeg'),
(3, 'Le Seigneur des anneaux : La Communauté de l\'anneau', 'Fantastique, Aventure', '2h 58min', 'Peter Jackson', 'images/films/seigneur1.jpeg'),
(4, 'Le Hobbit : la bataille des cinq armées', 'Fantastique, Aventure', '2h 24min', 'Peter Jackson', 'images/films/hobbit3.webp'),
(5, 'Le Hobbit : La désolation de Smaug', 'Fantastique, Aventure', '2h 41min', 'Peter Jackson', 'images/films/hobbit2.jpeg'),
(6, 'Le Hobbit : Un voyage inattendu', 'Fantastique, Aventure', '2h 49min', 'Peter Jackson', 'images/films/hobbit1.jpeg'),
(7, 'Inception', ' Science fiction, Thriller', '2h 28min', 'Christopher Nolan', 'images/films/inception.jpeg'),
(8, 'Vol au-dessus d\'un nid de coucou ', ' Drame', '2h 09min', 'Milos Forman', 'images/films/coucou.jpeg'),
(9, 'Princesse Mononoké', 'Drame, Animation', '2h 15min', 'Hayao Miyazaki', 'images/films/momonoké.jpeg'),
(10, 'Le voyage de Chihiro', ' Animation, Aventure', ' 2h 05min', 'Hayao Miyazaki', 'images/films/chihiro.jpeg'),
(11, 'Arrietty le petit monde des chapardeurs', 'Animation, Fantastique, Aventure', '1h 34min', 'Hiromasa Yonebayashi', 'images/films/arrietty.jpeg'),
(12, 'La planète au trésor', 'Animation, Science fiction, Aventure', '1h 35min', 'Ron Clements', 'images/films/trésor.jpeg'),
(13, 'Kuzko', ' Animation, Aventure, Comédie', ' 1h 18min', 'Mark Dindal', 'images/films/kuzco.jpeg'),
(14, 'Blood diamond', 'Aventure, Drame, Thriller', '2h 23min', 'Edward Zwick', 'images/films/blood.jpeg'),
(15, 'Avengers', 'Action, Aventure, Science fiction', ' 2h 23min', 'Joss Whedon', 'images/films/avengers.jpeg'),
(16, 'Avengers Endgame', 'Action, Fantastique, Aventure', '3h 01min', 'Joe Russo', 'images/films/endgame.jpeg'),
(17, 'Avengers Infinity war', 'Action, Fantastique, Aventure', '2h 36min', 'Joe Russo', 'images/films/infinity.jpeg'),
(18, 'Iron man', ' Action, Science fiction', '2h 06min', 'Jon Favreau', 'images/films/ironman.png'),
(19, 'Spider-man', 'Fantastique, Action', ' 2h 01min', ' Sam Raimi', 'images/films/spiderman.jpeg'),
(20, 'Jumper', 'Aventure, Science fiction, Thriller', '1h 35min', 'Doug Liman', 'images/films/jumper.jpeg');

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

-- --------------------------------------------------------

--
-- Table structure for table `Séance`
--

CREATE TABLE `Séance` (
  `IdSéance` int NOT NULL,
  `DateSéance` date NOT NULL,
  `RefFilm` int DEFAULT NULL,
  `RefCine` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Séance`
--

INSERT INTO `Séance` (`IdSéance`, `DateSéance`, `RefFilm`, `RefCine`) VALUES
(1, '2023-09-02', 20, 1),
(3, '2023-07-28', 20, 2);

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
  MODIFY `IdRéservation` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Séance`
--
ALTER TABLE `Séance`
  MODIFY `IdSéance` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
