/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 19, 2017
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


-- Dumping database structure for upisi_polaznika
CREATE DATABASE IF NOT EXISTS `upisi_polaznika` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `upisi_polaznika`;

-- Dumping structure for table upisi_polaznika.polaznici
CREATE TABLE IF NOT EXISTS `polaznici` (
  `sifra_polaznika` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime_polaznika` varchar(50) NOT NULL,
  `prezime_polaznika` varchar(50) NOT NULL,
  `mjesto_stanovanja` varchar(77) NOT NULL,
  PRIMARY KEY (`sifra_polaznika`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table upisi_polaznika.polaznici: ~6 rows (approximately)
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` (`sifra_polaznika`, `ime_polaznika`, `prezime_polaznika`, `mjesto_stanovanja`) VALUES
	(1, 'Ana', 'Milic', 'Zagreb'),
	(2, 'Sanja', 'Tarak', 'Split'),
	(3, 'Mladen', 'Gork', 'Osijek'),
	(4, 'Ivana', 'Matkic', 'Split'),
	(5, 'Marina', 'Anic', 'Osijek'),
	(6, 'Ivica', 'Limac', 'Split');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;

-- Dumping structure for table upisi_polaznika.tecajevi
CREATE TABLE IF NOT EXISTS `tecajevi` (
  `sifra_tecaja` char(10) NOT NULL,
  `naziv_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table upisi_polaznika.tecajevi: ~6 rows (approximately)
/*!40000 ALTER TABLE `tecajevi` DISABLE KEYS */;
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES
	('N01', 'SQL-osnove'),
	('O01', 'Racunalni operator-uredsko poslovanje'),
	('O02', 'Specijalist poslovne primjene racunala'),
	('O03', 'Graficki dizajner'),
	('P01', 'Osnove rada PC racunala'),
	('P02', 'Microsoft Word');
/*!40000 ALTER TABLE `tecajevi` ENABLE KEYS */;

-- Dumping structure for table upisi_polaznika.upisi
CREATE TABLE IF NOT EXISTS `upisi` (
  `sifra_polaznika` int(11) NOT NULL,
  `sifra_tecaja` char(10) NOT NULL,
  PRIMARY KEY (`sifra_polaznika`,`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table upisi_polaznika.upisi: ~6 rows (approximately)
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES
	(1, 'P01'),
	(2, 'P02'),
	(3, 'N01'),
	(4, 'O01'),
	(5, 'O02');
/*!40000 ALTER TABLE `upisi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
