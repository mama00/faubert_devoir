-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2021 at 09:40 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Biblio`
--

-- --------------------------------------------------------

--
-- Table structure for table `Emprunt`
--

CREATE TABLE `Emprunt` (
  `ID_E` int UNSIGNED NOT NULL,
  `Date` varchar(45) NOT NULL,
  `ID_L` int UNSIGNED NOT NULL,
  `ID_R` int UNSIGNED NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Emprunt`
--

INSERT INTO `Emprunt` (`ID_E`, `Date`, `ID_L`, `ID_R`, `created_at`, `updated_at`) VALUES
(1, '2021-01-13', 2, 2, '', ''),
(2, '2021-01-02', 8, 5, '', ''),
(4, '2021-01-07', 2, 2, '', ''),
(6, '2021-01-14', 2, 2, '', ''),
(21, '2020-12-30', 8, 5, '', ''),
(22, '2021-01-05', 8, 1, '', ''),
(23, '2021-01-14', 8, 5, '', ''),
(24, '2021-01-05', 1, 1, '', ''),
(25, '2021-01-12', 2, 2, '2021-01-27 02:32:50', '2021-01-27 02:32:50'),
(27, '2021-01-06', 8, 5, '2021-01-27 02:33:49', '2021-01-27 02:33:49'),
(28, '2021-01-13', 7, 1, '2021-01-27 02:40:32', '2021-01-27 02:40:32'),
(29, '2021-01-13', 2, 2, '2021-01-27 14:17:06', '2021-01-27 14:17:06'),
(30, '2021-01-15', 2, 2, '2021-01-27 14:18:08', '2021-01-27 14:18:08'),
(32, '2021-01-06', 1, 2, '2021-01-27 14:27:54', '2021-01-27 14:27:54'),
(33, '2021-01-06', 1, 1, '2021-01-28 03:11:11', '2021-01-28 03:11:11'),
(34, '2021-01-06', 1, 4, '2021-01-28 03:11:59', '2021-01-28 03:11:59'),
(35, '2021-01-06', 1, 2, '2021-01-28 04:02:17', '2021-01-28 04:02:17'),
(38, '2021-01-15', 2, 6, '2021-01-30 02:16:44', '2021-01-30 02:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `Livre`
--

CREATE TABLE `Livre` (
  `ID_L` int UNSIGNED NOT NULL,
  `Titre` varchar(30) NOT NULL,
  `Auteur` varchar(50) NOT NULL,
  `Rayon` int NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Livre`
--

INSERT INTO `Livre` (`ID_L`, `Titre`, `Auteur`, `Rayon`, `created_at`, `updated_at`) VALUES
(1, 'A l\'angle des rues paralleles', 'Gary Victor', 2, '', '2021-01-28 16:49:22'),
(2, 'Pere riche Pere pauvre', 'Kyosaki', 1, '', ''),
(3, 'Les 5 langages de l\'amour', 'Garry Chapman', 1, '', ''),
(4, 'Bible', 'Jesus', 2, '', ''),
(5, 'Analyse', 'Monier', 1, '', ''),
(6, 'Mecanique', 'Perez', 3, '', ''),
(7, 'Algebre', 'Wilbert', 9, '', ''),
(8, 'GOT', 'Georges', 4, '', ''),
(9, 'Haiti', 'Guiteau', 4, '2021-01-27 14:57:17', '2021-01-28 16:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `Readers`
--

CREATE TABLE `Readers` (
  `ID_R` int UNSIGNED NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(60) NOT NULL,
  `Adresse` varchar(200) NOT NULL,
  `Tel` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `statut` int NOT NULL,
  `credit` int NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Readers`
--

INSERT INTO `Readers` (`ID_R`, `Nom`, `Prenom`, `Adresse`, `Tel`, `email`, `statut`, `credit`, `created_at`, `updated_at`) VALUES
(1, 'Valentin', 'Wicheley', 'Lalue', 444552666, 'valentinwich@gmail.com', 1, 1, '', ''),
(2, 'Saintil', 'Theodule', 'CanapeVert', 444885665, 'saintiltheo@gmail.com', 2, 1, '', ''),
(4, 'Laryssa', 'Lefranc', 'jkbh', 545464646, 'lefranclaryssa@gmail.com', 1, 0, '', ''),
(5, 'Laryssa', 'Lefranc', 'Delmas', 4444, 'lefranclaryssa@gmail.com', 1, 1, '', ''),
(6, 'Guiteau', 'Ronald', 'Delmas', 4444, 'justinien@gmail.com', 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Restitution`
--

CREATE TABLE `Restitution` (
  `ID_Re` int UNSIGNED NOT NULL,
  `Date` varchar(45) NOT NULL,
  `ID_L` int UNSIGNED NOT NULL,
  `ID_R` int UNSIGNED NOT NULL,
  `ID_E` int UNSIGNED NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Restitution`
--

INSERT INTO `Restitution` (`ID_Re`, `Date`, `ID_L`, `ID_R`, `ID_E`, `created_at`, `updated_at`) VALUES
(1, '2021-01-14', 2, 2, 1, '', ''),
(2, '2021-01-21', 8, 2, 1, '', ''),
(3, '2021-01-14', 2, 2, 1, '', ''),
(4, '2021-01-06', 8, 5, 23, '', ''),
(5, '2021-01-07', 2, 2, 1, '2021-01-27 14:24:51', '2021-01-27 14:24:51'),
(6, '2021-01-07', 1, 2, 32, '2021-01-27 14:28:33', '2021-01-27 14:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int UNSIGNED NOT NULL,
  `Username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Prenom` varchar(60) NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Type` varchar(45) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `Username`, `Password`, `Nom`, `Prenom`, `Email`, `Type`, `created_at`, `updated_at`) VALUES
(3, 'MJ', '313a7622bdbde3844118acf4846d95f4', 'Marceus', 'Jethro', 'mnanj@jaja.com', '1', '', ''),
(4, 'rubandy', 'andyrub', 'Ruban', 'Anderson', 'ldsncsdkld', '1', '', ''),
(6, 'dfsdf', 'fdsfsdf', 'dsfdf', 'dsfdsf', 'dsfsdf', '1', '', ''),
(9, 'momolo', 'youri123', 'Morisseau', 'Yawoo', 'yawyouli@gmail.com', '0', '', ''),
(10, 'jout', 'guiteau123', 'Guiteau', 'Justinien', 'justinien @gmail.com', '0', '', ''),
(11, 'lllarysalll', 'Madanmomo1', 'Lefranc', 'Laryssa', 'lefranclaryssa@gmail.com', '1', '', ''),
(12, 'jefferson', 'Jefferson123', 'Sainrilis', 'Jeff', 'jeffsainrilis@gmail.com', '1', '', ''),
(13, 'dieury', 'Sylvain123', 'Sylvain', 'Dieury', 'sylvaindieury@gmail.com', '0', '', ''),
(14, 'mjjet', 'Marceus123', 'Jethro', 'Marceus', 'marceus@gmail.com', '1', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD PRIMARY KEY (`ID_E`),
  ADD KEY `Index_ID_Emprunt_Readers` (`ID_R`),
  ADD KEY `Index_ID_Emprunt_Livre` (`ID_L`);

--
-- Indexes for table `Livre`
--
ALTER TABLE `Livre`
  ADD PRIMARY KEY (`ID_L`);

--
-- Indexes for table `Readers`
--
ALTER TABLE `Readers`
  ADD PRIMARY KEY (`ID_R`);

--
-- Indexes for table `Restitution`
--
ALTER TABLE `Restitution`
  ADD PRIMARY KEY (`ID_Re`),
  ADD KEY `index_ID_Emprunt` (`ID_E`),
  ADD KEY `Index_ID_Remise_Livre` (`ID_L`),
  ADD KEY `Index_ID_Remise_Readers` (`ID_R`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Emprunt`
--
ALTER TABLE `Emprunt`
  MODIFY `ID_E` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `Livre`
--
ALTER TABLE `Livre`
  MODIFY `ID_L` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Readers`
--
ALTER TABLE `Readers`
  MODIFY `ID_R` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Restitution`
--
ALTER TABLE `Restitution`
  MODIFY `ID_Re` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Restitution`
--
ALTER TABLE `Restitution`
  ADD CONSTRAINT `index_ID_Emprunt` FOREIGN KEY (`ID_E`) REFERENCES `Emprunt` (`ID_E`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Index_ID_Remise_Livre` FOREIGN KEY (`ID_L`) REFERENCES `Emprunt` (`ID_L`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Index_ID_Remise_Readers` FOREIGN KEY (`ID_R`) REFERENCES `Emprunt` (`ID_R`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
