-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2022 at 03:55 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kulinarija`
--

-- --------------------------------------------------------

--
-- Table structure for table `alergijos`
--

DROP TABLE IF EXISTS `alergijos`;
CREATE TABLE IF NOT EXISTS `alergijos` (
  `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alergijos`
--

INSERT INTO `alergijos` (`id`, `pavadinimas`) VALUES
(1, 'glitimas'),
(2, 'veziagyviai'),
(3, 'kiausiniai'),
(4, 'zuvys'),
(5, 'zemes riesutai'),
(6, 'soju pupeles'),
(7, 'pienas'),
(8, 'riesutai'),
(9, 'salieras'),
(10, 'garstycios'),
(11, 'sezamo seklos'),
(12, 'sieros dioksidas'),
(13, 'lubinai'),
(14, 'moliuskai');

-- --------------------------------------------------------

--
-- Table structure for table `dietos`
--

DROP TABLE IF EXISTS `dietos`;
CREATE TABLE IF NOT EXISTS `dietos` (
  `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `patiekalu_kiekis_per_diena` smallint(2) UNSIGNED NOT NULL,
  `trukme_dienomis` smallint(2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dietos`
--

INSERT INTO `dietos` (`id`, `patiekalu_kiekis_per_diena`, `trukme_dienomis`) VALUES
(1, 2, 2),
(2, 2, 4),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ingridientai`
--

DROP TABLE IF EXISTS `ingridientai`;
CREATE TABLE IF NOT EXISTS `ingridientai` (
  `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(25) NOT NULL,
  `kalorijos_per100g` smallint(6) UNSIGNED NOT NULL,
  `kaina` decimal(5,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingridientai`
--

INSERT INTO `ingridientai` (`id`, `pavadinimas`, `kalorijos_per100g`, `kaina`) VALUES
(1, 'Vištiena', 166, '6.12'),
(2, 'Jautienos faršas', 39, '8.55'),
(3, 'Braškės', 309, '3.53'),
(4, 'Pienas', 243, '4.53'),
(5, 'Avižiniai dribsniai', 45, '3.59'),
(6, 'Svogūnas', 72, '2.53'),
(7, 'Bulvės', 313, '9.44'),
(8, 'Grietinė', 307, '5.93'),
(9, 'Teriyaki marinatas', 134, '3.85'),
(10, 'Lęšiai', 290, '10.21'),
(11, 'Avinžirniai', 423, '6.99'),
(12, 'Petražolė', 318, '1.57'),
(13, 'Pomidoras', 311, '8.87'),
(14, 'Agurkas', 436, '3.59'),
(15, 'Couscous', 84, '2.57'),
(16, 'Duona', 44, '0.69');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija_virtuve`
--

DROP TABLE IF EXISTS `kategorija_virtuve`;
CREATE TABLE IF NOT EXISTS `kategorija_virtuve` (
  `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategorija_virtuve`
--

INSERT INTO `kategorija_virtuve` (`id`, `pavadinimas`) VALUES
(1, 'vidurio rytu'),
(2, 'libanietiska'),
(3, 'universali'),
(4, 'azijieciu'),
(5, 'marokietiska'),
(6, 'lietuviska');

-- --------------------------------------------------------

--
-- Table structure for table `receptai`
--

DROP TABLE IF EXISTS `receptai`;
CREATE TABLE IF NOT EXISTS `receptai` (
  `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(50) NOT NULL,
  `nurodymai` varchar(300) NOT NULL,
  `kalorijos_per100g` smallint(6) UNSIGNED NOT NULL,
  `kaina` decimal(5,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptai`
--

INSERT INTO `receptai` (`id`, `pavadinimas`, `nurodymai`, `kalorijos_per100g`, `kaina`) VALUES
(1, 'Tabule couscous salotos', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 564, '6.85'),
(2, 'Tablue lebanietiškos salotos', '1. Supjausstom daržoves ir viską suberiam į vieną.', 831, '15.03'),
(3, 'Jautienos faršas su svogūnais', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', 622, '12.97'),
(4, 'Kepta vištiena su svogūnu ir petražolėmis', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', 663, '26.86'),
(5, 'Keptos bulvės su grietine', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', 754, '19.22'),
(6, 'Bulvių košė', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', 352, '9.52'),
(7, 'Teriyaki vištiena', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', 329, '18.76'),
(8, 'Lęšių ir avinžirnių sriuba', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', 1410, '27.23'),
(9, 'Avižinė košė', '1. Išvirti dribsnius piene', 288, '8.12'),
(10, 'Mutinys', '1. Sumaišyti duoną, braškes ir pieną', 596, '8.75');

-- --------------------------------------------------------

--
-- Table structure for table `restoranai`
--

DROP TABLE IF EXISTS `restoranai`;
CREATE TABLE IF NOT EXISTS `restoranai` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(20) NOT NULL,
  `miestas` varchar(20) NOT NULL,
  `salis` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restoranai`
--

INSERT INTO `restoranai` (`id`, `pavadinimas`, `miestas`, `salis`) VALUES
(1, 'Domino', 'Lankasteris', 'Anglija'),
(2, 'Pica dziaz', 'Marijampole', 'Lietuva'),
(3, 'Geras', 'Vilnius', 'Lietuva'),
(4, 'Negeras', 'Berlynas', 'Vokietija');

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_ingridientai_alergijos`
--

DROP TABLE IF EXISTS `sujungimas_ingridientai_alergijos`;
CREATE TABLE IF NOT EXISTS `sujungimas_ingridientai_alergijos` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ingridientas_id` smallint(5) UNSIGNED NOT NULL,
  `alergija_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingridientas_id` (`ingridientas_id`),
  KEY `alergija_id` (`alergija_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_ingridientai_alergijos`
--

INSERT INTO `sujungimas_ingridientai_alergijos` (`id`, `ingridientas_id`, `alergija_id`) VALUES
(1, 4, 7),
(2, 5, 1),
(3, 8, 7),
(4, 9, 6),
(5, 9, 11),
(6, 15, 1),
(7, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_receptai_alergijos`
--

DROP TABLE IF EXISTS `sujungimas_receptai_alergijos`;
CREATE TABLE IF NOT EXISTS `sujungimas_receptai_alergijos` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `alergija_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receptas_id` (`receptas_id`),
  KEY `alergija_id` (`alergija_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_receptai_alergijos`
--

INSERT INTO `sujungimas_receptai_alergijos` (`id`, `receptas_id`, `alergija_id`) VALUES
(1, 1, 1),
(2, 5, 7),
(3, 6, 7),
(4, 7, 11),
(5, 7, 6),
(6, 8, 7),
(7, 9, 1),
(8, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_receptai_dietos`
--

DROP TABLE IF EXISTS `sujungimas_receptai_dietos`;
CREATE TABLE IF NOT EXISTS `sujungimas_receptai_dietos` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `dieta_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receptas_id` (`receptas_id`),
  KEY `dieta_id` (`dieta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_receptai_dietos`
--

INSERT INTO `sujungimas_receptai_dietos` (`id`, `receptas_id`, `dieta_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 5, 1),
(4, 2, 1),
(5, 5, 2),
(6, 7, 2),
(7, 2, 2),
(8, 1, 2),
(9, 6, 2),
(10, 8, 2),
(11, 6, 2),
(12, 3, 2),
(13, 1, 3),
(14, 3, 3),
(15, 7, 3),
(16, 9, 3),
(17, 1, 3),
(18, 2, 3),
(19, 5, 3),
(20, 10, 3),
(21, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_receptai_ingridientai`
--

DROP TABLE IF EXISTS `sujungimas_receptai_ingridientai`;
CREATE TABLE IF NOT EXISTS `sujungimas_receptai_ingridientai` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `ingridientas_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receptas_id` (`receptas_id`),
  KEY `ingridientas_id` (`ingridientas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_receptai_ingridientai`
--

INSERT INTO `sujungimas_receptai_ingridientai` (`id`, `receptas_id`, `ingridientas_id`) VALUES
(1, 1, 6),
(2, 1, 13),
(3, 1, 14),
(4, 1, 15),
(5, 2, 12),
(6, 2, 13),
(7, 2, 14),
(8, 3, 2),
(9, 3, 6),
(10, 4, 1),
(11, 4, 6),
(12, 4, 12),
(13, 5, 6),
(14, 5, 7),
(15, 5, 8),
(16, 6, 4),
(17, 6, 7),
(18, 7, 1),
(19, 7, 9),
(20, 8, 6),
(21, 8, 8),
(22, 8, 10),
(23, 8, 11),
(24, 8, 12),
(25, 9, 4),
(26, 9, 5),
(27, 10, 3),
(28, 10, 4),
(29, 10, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_receptai_kategorija`
--

DROP TABLE IF EXISTS `sujungimas_receptai_kategorija`;
CREATE TABLE IF NOT EXISTS `sujungimas_receptai_kategorija` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `kategorija_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receptas_id` (`receptas_id`),
  KEY `kategorija_id` (`kategorija_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_receptai_kategorija`
--

INSERT INTO `sujungimas_receptai_kategorija` (`id`, `receptas_id`, `kategorija_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 3),
(5, 4, 3),
(6, 5, 3),
(7, 6, 3),
(8, 7, 4),
(9, 8, 5),
(10, 9, 3),
(11, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_restoranai_kategorija`
--

DROP TABLE IF EXISTS `sujungimas_restoranai_kategorija`;
CREATE TABLE IF NOT EXISTS `sujungimas_restoranai_kategorija` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restoranas_id` smallint(5) UNSIGNED NOT NULL,
  `kategorija_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restoranas_id` (`restoranas_id`),
  KEY `kategorija_id` (`kategorija_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_restoranai_kategorija`
--

INSERT INTO `sujungimas_restoranai_kategorija` (`id`, `restoranas_id`, `kategorija_id`) VALUES
(1, 1, 4),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 4, 5),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_restoranai_receptai`
--

DROP TABLE IF EXISTS `sujungimas_restoranai_receptai`;
CREATE TABLE IF NOT EXISTS `sujungimas_restoranai_receptai` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  `restoranas_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `receptas_id` (`receptas_id`),
  KEY `restoranas_id` (`restoranas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_restoranai_receptai`
--

INSERT INTO `sujungimas_restoranai_receptai` (`id`, `receptas_id`, `restoranas_id`) VALUES
(21, 1, 1),
(22, 2, 4),
(23, 3, 3),
(24, 4, 1),
(25, 5, 1),
(26, 6, 2),
(27, 7, 2),
(28, 8, 3),
(29, 9, 3),
(30, 10, 4),
(31, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sujungimas_vartotojai_receptai`
--

DROP TABLE IF EXISTS `sujungimas_vartotojai_receptai`;
CREATE TABLE IF NOT EXISTS `sujungimas_vartotojai_receptai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vartotojas_id` int(10) UNSIGNED NOT NULL,
  `receptas_id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vartotojas_id` (`vartotojas_id`),
  KEY `receptas_id` (`receptas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sujungimas_vartotojai_receptai`
--

INSERT INTO `sujungimas_vartotojai_receptai` (`id`, `vartotojas_id`, `receptas_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 1, 3),
(4, 3, 4),
(5, 2, 5),
(6, 4, 6),
(7, 4, 7),
(8, 5, 8),
(9, 4, 9),
(10, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `vartotojai`
--

DROP TABLE IF EXISTS `vartotojai`;
CREATE TABLE IF NOT EXISTS `vartotojai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vartotojo_vardas` varchar(50) NOT NULL,
  `slaptazodis` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vartotojai`
--

INSERT INTO `vartotojai` (`id`, `vartotojo_vardas`, `slaptazodis`) VALUES
(1, 'Vytas', 'belesg1fdgsf'),
(2, 'Lina', 'belefgf'),
(3, 'Romas', 'belef25dg'),
(4, 'Dana', 'beledf22\"sas'),
(5, 'Maryte', 'dfhrt54)ghj');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sujungimas_ingridientai_alergijos`
--
ALTER TABLE `sujungimas_ingridientai_alergijos`
  ADD CONSTRAINT `sujungimas_ingridientai_alergijos_ibfk_1` FOREIGN KEY (`ingridientas_id`) REFERENCES `ingridientai` (`id`),
  ADD CONSTRAINT `sujungimas_ingridientai_alergijos_ibfk_2` FOREIGN KEY (`alergija_id`) REFERENCES `alergijos` (`id`);

--
-- Constraints for table `sujungimas_receptai_alergijos`
--
ALTER TABLE `sujungimas_receptai_alergijos`
  ADD CONSTRAINT `sujungimas_receptai_alergijos_ibfk_1` FOREIGN KEY (`receptas_id`) REFERENCES `receptai` (`id`),
  ADD CONSTRAINT `sujungimas_receptai_alergijos_ibfk_2` FOREIGN KEY (`alergija_id`) REFERENCES `alergijos` (`id`);

--
-- Constraints for table `sujungimas_receptai_dietos`
--
ALTER TABLE `sujungimas_receptai_dietos`
  ADD CONSTRAINT `sujungimas_receptai_dietos_ibfk_1` FOREIGN KEY (`receptas_id`) REFERENCES `receptai` (`id`),
  ADD CONSTRAINT `sujungimas_receptai_dietos_ibfk_2` FOREIGN KEY (`dieta_id`) REFERENCES `dietos` (`id`);

--
-- Constraints for table `sujungimas_receptai_ingridientai`
--
ALTER TABLE `sujungimas_receptai_ingridientai`
  ADD CONSTRAINT `sujungimas_receptai_ingridientai_ibfk_1` FOREIGN KEY (`receptas_id`) REFERENCES `receptai` (`id`),
  ADD CONSTRAINT `sujungimas_receptai_ingridientai_ibfk_2` FOREIGN KEY (`ingridientas_id`) REFERENCES `ingridientai` (`id`);

--
-- Constraints for table `sujungimas_receptai_kategorija`
--
ALTER TABLE `sujungimas_receptai_kategorija`
  ADD CONSTRAINT `sujungimas_receptai_kategorija_ibfk_1` FOREIGN KEY (`receptas_id`) REFERENCES `receptai` (`id`),
  ADD CONSTRAINT `sujungimas_receptai_kategorija_ibfk_2` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorija_virtuve` (`id`);

--
-- Constraints for table `sujungimas_restoranai_kategorija`
--
ALTER TABLE `sujungimas_restoranai_kategorija`
  ADD CONSTRAINT `sujungimas_restoranai_kategorija_ibfk_1` FOREIGN KEY (`restoranas_id`) REFERENCES `restoranai` (`id`),
  ADD CONSTRAINT `sujungimas_restoranai_kategorija_ibfk_2` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorija_virtuve` (`id`);

--
-- Constraints for table `sujungimas_restoranai_receptai`
--
ALTER TABLE `sujungimas_restoranai_receptai`
  ADD CONSTRAINT `sujungimas_restoranai_receptai_ibfk_1` FOREIGN KEY (`receptas_id`) REFERENCES `receptai` (`id`),
  ADD CONSTRAINT `sujungimas_restoranai_receptai_ibfk_2` FOREIGN KEY (`restoranas_id`) REFERENCES `restoranai` (`id`);

--
-- Constraints for table `sujungimas_vartotojai_receptai`
--
ALTER TABLE `sujungimas_vartotojai_receptai`
  ADD CONSTRAINT `sujungimas_vartotojai_receptai_ibfk_1` FOREIGN KEY (`vartotojas_id`) REFERENCES `vartotojai` (`id`),
  ADD CONSTRAINT `sujungimas_vartotojai_receptai_ibfk_2` FOREIGN KEY (`receptas_id`) REFERENCES `receptai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
