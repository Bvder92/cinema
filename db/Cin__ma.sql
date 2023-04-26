-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db:3306
-- Généré le : mer. 26 avr. 2023 à 22:10
-- Version du serveur : 8.0.32
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `Cinéma`
--

CREATE TABLE `Cinéma` (
  `IdCine` int NOT NULL,
  `NomCine` varchar(50) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `ImageCine` varchar(64) DEFAULT NULL,
  `localisation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Cinéma`
--

INSERT INTO `Cinéma` (`IdCine`, `NomCine`, `Ville`, `ImageCine`, `localisation`) VALUES
(1, 'Cinéma Cité La Défense', 'Nanterre', 'images/cinéma/ladefense-dome.jpg', 'https://www.google.fr/maps/place/UGC+Cin%C3%A9+Cit%C3%A9+La+D%C3%A9fense/@48.8914608,2.2327449,17z/data=!3m1!4b1!4m6!3m5!1s0x47e66502f6012a89:0x31d9bac0d2b5f5!8m2!3d48.8914608!4d2.2349336!16s%2Fg%2F122vxhhf?hl=fr \r\n'),
(2, 'Cinéma Issy-Les-Moulineaux', 'Boulogne-Billancourt', 'images/cinéma/issy-les-moulineaux.jpg', 'https://www.google.fr/maps?q=ugc+issy+les+moulineaux&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwi76eiIyoz-AhVDkScCHRM8B3QQ_AUoAXoECAEQAQ '),
(3, 'Cinéma Ciné Cité Rosny', 'Rosny-sous-Bois', 'images/cinéma/cité-rosny.jpg', 'https://www.google.fr/maps/place/UGC+Cin%C3%A9+Cit%C3%A9+Rosny/@48.8809111,2.4789809,17z/data=!3m1!4b1!4m6!3m5!1s0x47e612c266e10a7f:0x94b1993d584903c4!8m2!3d48.8809111!4d2.4811696!16s%2Fg%2F1vnrk9w8?hl=fr'),
(4, 'Cinéma Cité O Parinor', 'Aulnay-sous-Bois', 'images/cinéma/cité-o-parinor.jpg', 'https://www.google.fr/maps/place/UGC+Cin%C3%A9+Cit%C3%A9+O\'Parinor/@48.9596831,2.4731627,17z/data=!3m1!4b1!4m6!3m5!1s0x47e614c88187dfa1:0x232219de7e839682!8m2!3d48.9596831!4d2.4753514!16s%2Fg%2F11b72rbgvz?hl=fr'),
(5, 'Cinéma Cité Créteil', 'Creteil', 'images/cinéma/cité-créteil.jpg', 'https://www.google.fr/maps?q=ugc+cin%C3%A9+cit%C3%A9+cr%C3%A9teil&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwiA9JDOyIz-AhWSoycCHbFgC3kQ_AUoAXoECAEQAQ'),
(6, 'Cinéma Nanterre Coeur Université', 'Nanterre', 'images/cinéma/nanterre-coeur.webp', 'https://www.google.fr/maps?q=cgr+nanterre+c%C5%93ur+universit%C3%A9&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwjnjei2yIz-AhUsVaQEHU80DnUQ_AUoAnoECAEQAg'),
(7, 'Cinéma Brignais', 'Lyon', 'images/cinéma/brignais.jpg', 'https://www.google.fr/maps/place/CIN%C3%89MA+CGR+Brignais/@45.678431,4.7740643,17z/data=!3m1!4b1!4m6!3m5!1s0x47f4e8ccfc1c9ae7:0x52b21e1f734e7619!8m2!3d45.678431!4d4.776253!16s%2Fg%2F1vjdpdp1?hl=fr'),
(8, 'Cinéma Epinay-sur-Seine ', 'Epinay-sur-Saine', 'images/cinéma/epinay.jpg', 'https://www.google.fr/maps?q=cgr+epinay+sur+seine&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwjA3-2zx4z-AhUNnCcCHewIAcYQ_AUoAXoECAEQAQ'),
(9, 'Cinéma Paris-Lilas', 'Paris', 'images/cinéma/paris-lilas.jpg', 'https://www.google.fr/maps?q=CGR+paris+lilas&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwjEzfSax4z-AhVInCcCHYqcD3kQ_AUoAnoECAEQAg\r\n'),
(10, 'Cinéma Sarcelles My Place', 'Sarcelles', 'images/cinéma/sarcelles-myplace.jpg', 'https://www.google.fr/maps?q=cgr+sarcelles&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwi2zpfsx4z-AhV3kScCHclYBW8Q_AUoAXoECAEQAQ'),
(11, 'Cinéma Stade de France', 'Saint-Denis', 'images/cinéma/stade-de-france.jpg', 'https://www.google.fr/maps/place/Gaumont+Saint-Denis/@48.9255076,2.3610198,17z/data=!3m1!4b1!4m6!3m5!1s0x47e66ea5741e79df:0x8b7cc414ff0e9999!8m2!3d48.9255076!4d2.3632085!16s%2Fg%2F11b5wfngzt?hl=fr'),
(12, 'Cinéma Alésia', 'Paris', 'images/cinéma/alésia.jpg', 'https://www.google.fr/maps?q=path%C3%A9+al%C3%A9sia&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwj4qrivxoz-AhWwVaQEHb1xBQkQ_AUoAXoECAEQAQ\r\n'),
(13, 'Cinéma Aqualouevard', 'Paris ', 'images/aquaboulevard.jpg', 'https://www.google.fr/maps?q=gaumont+aquaboulevard&source=lmns&entry=mt&bih=937&biw=1920&hl=fr&sa=X&ved=2ahUKEwiivpGUxoz-AhW4picCHawEDCsQ_AUoAnoECAEQAg\r\n'),
(14, 'Cinéma Convention', 'Paris', 'images/cinéma/aquaboulevard.jpg', 'https://www.google.fr/maps/place/Path%C3%A9+Convention/@48.8376688,2.2964859,15z/data=!4m6!3m5!1s0x47e6701539d47a59:0x743253498a28d939!8m2!3d48.8376688!4d2.2964859!16s%2Fg%2F11cmcz5vht'),
(15, 'Cinéma Saron - IMAX', 'Saran', 'images/cinéma/saron-imax.jpg', 'https://www.google.fr/maps/place/Path%C3%A9+Saran/@47.9463542,1.8940633,17z/data=!3m1!4b1!4m6!3m5!1s0x47e4fa561b2afd67:0xd7fe97d2e9be9e8d!8m2!3d47.9463542!4d1.896252!16s%2Fg%2F1hdzd5pp3?hl=fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Cinéma`
--
ALTER TABLE `Cinéma`
  ADD PRIMARY KEY (`IdCine`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Cinéma`
--
ALTER TABLE `Cinéma`
  MODIFY `IdCine` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
