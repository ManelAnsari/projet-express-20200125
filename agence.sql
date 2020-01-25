-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 20, 2020 at 08:40 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agence`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cin` varchar(8) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `cin`, `nom`, `prenom`, `tel`) VALUES
(39, '111111', 'Casey', 'Davis', '5898989'),
(40, '88888888', 'Ali', 'Salah', '12345678'),
(41, '09888888', 'Sami', 'Janhani', '98787878');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idC` int(11) NOT NULL,
  `idV` int(11) NOT NULL,
  `nbrjour` int(11) NOT NULL,
  `datelocation` date NOT NULL,
  `prixLocation` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `idC`, `idV`, `nbrjour`, `datelocation`, `prixLocation`) VALUES
(11, 3, 2, 2, '2020-01-08', 0),
(22, 4, 1, 1, '2019-06-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prixJr` float NOT NULL,
  `age` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voiture`
--

INSERT INTO `voiture` (`id`, `matricule`, `marque`, `modele`, `prixJr`, `age`) VALUES
(1, '165 TN 7745', 'Symbole', 'Essence', 65, ''),
(2, '168 TN 4478', 'KIA', 'Essence', 70, ''),
(3, '170 TN 1234 ', 'GOLF6', 'Diesel', 80, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
