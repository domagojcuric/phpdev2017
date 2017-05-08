/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Ćurić
 * Created: 11.04.2017.
 */

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for videoteka
CREATE DATABASE IF NOT EXISTS `videoteka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `videoteka`;

-- Dumping structure for table videoteka.cijenik
CREATE TABLE IF NOT EXISTS `cijenik` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vrsta` varchar(20) NOT NULL,
  `cijena` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.cijenik: ~4 rows (approximately)
/*!40000 ALTER TABLE `cijenik` DISABLE KEYS */;
INSERT INTO `cijenik` (`ID`, `vrsta`, `cijena`) VALUES
	(1, 'hit_DVD', '13,00 kn'),
	(2, 'hit_VHS', '9,00 kn'),
	(3, 'VHS', '5,00 kn'),
	(4, 'DVD', '9,00 kn');
/*!40000 ALTER TABLE `cijenik` ENABLE KEYS */;

-- Dumping structure for table videoteka.clan
CREATE TABLE IF NOT EXISTS `clan` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `adresa` varchar(30) NOT NULL,
  `telefon` int(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.clan: ~6 rows (approximately)
/*!40000 ALTER TABLE `clan` DISABLE KEYS */;
INSERT INTO `clan` (`ID`, `ime`, `prezime`, `adresa`, `telefon`) VALUES
	(1, 'ivan', 'tot', 'a.g.seneo 23', 31921921),
	(2, 'mila', 'mil', 'h.v.hrvatinica 20', 31556678),
	(3, 'marko', 'joakim', 'a.cesarca 1', 2147483647),
	(4, 'olja', 'kaktus', 'tomerlina 65', 911222333),
	(5, 'ivan', 'ivic', 'satnicka 32', 385),
	(6, 'shomy', 'culj', 'satnicka 56', 2147483647);
/*!40000 ALTER TABLE `clan` ENABLE KEYS */;

-- Dumping structure for table videoteka.film
CREATE TABLE IF NOT EXISTS `film` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naziv_filma` varchar(20) NOT NULL,
  `zanr` varchar(20) NOT NULL,
  `kolicinaDVD` int(30) NOT NULL,
  `kolicinaVHS` int(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.film: ~6 rows (approximately)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`ID`, `naziv_filma`, `zanr`, `kolicinaDVD`, `kolicinaVHS`) VALUES
	(1, 'umri muski', 'akcija', 3, 4),
	(2, 'transformers', 'akcija', 4, 1),
	(3, 'black or white', 'drama', 4, 2),
	(4, 'pokojni', 'triler', 4, 3),
	(5, 'marsovac', 'sci-fi,drama', 2, 0),
	(6, '21 jump street', 'komedija', 3, 3);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
