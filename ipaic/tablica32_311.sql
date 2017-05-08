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


-- Dumping database structure for fakultet
CREATE DATABASE IF NOT EXISTS `fakultet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fakultet`;

-- Dumping structure for table fakultet.nastavnik
CREATE TABLE IF NOT EXISTS `nastavnik` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime_nastavnik` varchar(50) NOT NULL,
  `Prezime_nastavnik` varchar(50) NOT NULL,
  `Koeficijent` float unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table fakultet.nastavnik: ~3 rows (approximately)
/*!40000 ALTER TABLE `nastavnik` DISABLE KEYS */;
INSERT INTO `nastavnik` (`ID`, `Ime_nastavnik`, `Prezime_nastavnik`, `Koeficijent`) VALUES
	(1, 'Josip', 'Broz', 10),
	(2, 'Ana', 'Ana', 20.3),
	(3, 'Ivana', 'Ana', 30.1);
/*!40000 ALTER TABLE `nastavnik` ENABLE KEYS */;

-- Dumping structure for table fakultet.predmet
CREATE TABLE IF NOT EXISTS `predmet` (
  `Predmet_id` int(11) unsigned NOT NULL,
  `Predmet` varchar(1000) NOT NULL,
  `Polozili` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Predmet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fakultet.predmet: ~3 rows (approximately)
/*!40000 ALTER TABLE `predmet` DISABLE KEYS */;
INSERT INTO `predmet` (`Predmet_id`, `Predmet`, `Polozili`) VALUES
	(145, 'tjelesni', '555555'),
	(146, 'matematika', '777777, 666666'),
	(193, 'astronomija', '777777');
/*!40000 ALTER TABLE `predmet` ENABLE KEYS */;

-- Dumping structure for table fakultet.student
CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Mbroj` int(10) unsigned NOT NULL DEFAULT '0',
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table fakultet.student: ~5 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`ID`, `Mbroj`, `Ime`, `Prezime`) VALUES
	(1, 555555, 'Josip', 'Broz'),
	(2, 555556, 'Ana', 'Ana'),
	(3, 545454, 'Ivan', 'Uf'),
	(4, 666666, 'Ivana', 'Majic'),
	(5, 777777, 'Marko', 'Markic');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
