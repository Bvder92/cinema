-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Apr 04, 2023 at 05:51 PM
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
  `NomFilm` varchar(50) NOT NULL,
  `GenreFilm` varchar(50) NOT NULL,
  `DuréeFilm` varchar(30) NOT NULL,
  `Producteur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  MODIFY `IdCine` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `IdClient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Film`
--
ALTER TABLE `Film`
  MODIFY `IdFilm` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Réservation`
--
ALTER TABLE `Réservation`
  MODIFY `IdRéservation` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Séance`
--
ALTER TABLE `Séance`
  MODIFY `IdSéance` int NOT NULL AUTO_INCREMENT;

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
