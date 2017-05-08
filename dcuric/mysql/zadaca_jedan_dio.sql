/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Ćurić
 * Created: 11.04.2017.
 */

/* zeznio sam se kad sam pravio database,napravio database za 2. zadatak al nisam usao u njega nego sam nastavio radit u database tvrtka*/


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


-- Dumping database structure for tvrtka
CREATE DATABASE IF NOT EXISTS `tvrtka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tvrtka`;

-- Dumping structure for table tvrtka.odijeli
CREATE TABLE IF NOT EXISTS `odijeli` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Naziv_odijela` varchar(15) NOT NULL,
  `Broj_zaposlenih` int(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Ovdije se nalazi naziv odijela,i broj zaposlenih u njima.';

-- Dumping data for table tvrtka.odijeli: ~3 rows (approximately)
/*!40000 ALTER TABLE `odijeli` DISABLE KEYS */;
INSERT INTO `odijeli` (`ID`, `Naziv_odijela`, `Broj_zaposlenih`) VALUES
	(1, 'Administracija', 2),
	(2, 'Trgovina', 2),
	(3, 'Servis', 1);
/*!40000 ALTER TABLE `odijeli` ENABLE KEYS */;

-- Dumping structure for table tvrtka.proizvod
CREATE TABLE IF NOT EXISTS `proizvod` (
  `ID` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `naziv_proizvoda` varchar(20) NOT NULL,
  `vrsta` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.proizvod: ~0 rows (approximately)
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;

-- Dumping structure for table tvrtka.radnik
CREATE TABLE IF NOT EXISTS `radnik` (
  `ID` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `Ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `zaposlenje` varchar(15) NOT NULL,
  `voditelj` varchar(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.radnik: ~11 rows (approximately)
/*!40000 ALTER TABLE `radnik` DISABLE KEYS */;
INSERT INTO `radnik` (`ID`, `Ime`, `prezime`, `zaposlenje`, `voditelj`) VALUES
	(1, 'Matko', 'Map', 'drvno', 'da'),
	(2, 'Josue', 'Kek', 'drvno', 'ne'),
	(3, 'Ibrahim', 'Mali', 'drvno', 'ne'),
	(4, 'Ante', 'Setka', 'cigla', 'ne'),
	(5, 'Anto', 'Varva', 'cigla', 'da'),
	(6, 'Veljko', 'djapic', 'celik', 'da'),
	(7, 'Ante', 'Marijanovic', 'celik', 'ne'),
	(8, 'Niku', 'Deblou', 'vezivo', 'da'),
	(9, 'Marko', 'Markic', 'strojevi', 'ne'),
	(10, 'Damir', 'Bor', 'strojevi', 'da'),
	(11, 'Dino', 'Cas', 'vezivo', 'ne');
/*!40000 ALTER TABLE `radnik` ENABLE KEYS */;

-- Dumping structure for table tvrtka.skladiste
CREATE TABLE IF NOT EXISTS `skladiste` (
  `ID` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `zaposlenje` varchar(20) NOT NULL,
  `lokacija` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.skladiste: ~5 rows (approximately)
/*!40000 ALTER TABLE `skladiste` DISABLE KEYS */;
INSERT INTO `skladiste` (`ID`, `zaposlenje`, `lokacija`) VALUES
	(1, 'cigla', 'ZG'),
	(2, 'drvno', 'Sesvete'),
	(3, 'vezivo', 'Zapresic'),
	(4, 'celik', 'karlovac'),
	(5, 'strojevi', 'delnice');
/*!40000 ALTER TABLE `skladiste` ENABLE KEYS */;

-- Dumping structure for table tvrtka.zaposlenici
CREATE TABLE IF NOT EXISTS `zaposlenici` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime` varchar(15) NOT NULL,
  `prezime` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='ovdije se nalaze imena i prezimena svih zaposlenika u tvrtci.';

-- Dumping data for table tvrtka.zaposlenici: ~4 rows (approximately)
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` (`ID`, `Ime`, `prezime`) VALUES
	(1, 'Ivica', 'Ivicic'),
	(2, 'Marko', 'Markic'),
	(3, 'Ljubica', 'Markic'),
	(4, 'Andrija', 'Mali'),
	(5, 'Zvoniumir', 'Alduk');
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
