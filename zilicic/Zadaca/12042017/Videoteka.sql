/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 11, 2017
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

-- Dumping structure for table videoteka.cjenik
CREATE TABLE IF NOT EXISTS `cjenik` (
  `sifra_cjenika` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategorija` varchar(55) NOT NULL,
  `cijena` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sifra_cjenika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.cjenik: ~0 rows (approximately)
/*!40000 ALTER TABLE `cjenik` DISABLE KEYS */;
/*!40000 ALTER TABLE `cjenik` ENABLE KEYS */;

-- Dumping structure for table videoteka.clanovi
CREATE TABLE IF NOT EXISTS `clanovi` (
  `clanski_broj` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(55) NOT NULL,
  `prezime` varchar(77) NOT NULL,
  `adresa` varchar(77) NOT NULL,
  `telefon` varchar(55) NOT NULL,
  `datum_uclanjenja` date NOT NULL,
  PRIMARY KEY (`clanski_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.clanovi: ~0 rows (approximately)
/*!40000 ALTER TABLE `clanovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `clanovi` ENABLE KEYS */;

-- Dumping structure for table videoteka.film
CREATE TABLE IF NOT EXISTS `film` (
  `sifra_filma` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(77) NOT NULL,
  `reziser` varchar(55) NOT NULL,
  `glavni_glumci` varchar(55) NOT NULL,
  `godina_izdanja` int(10) NOT NULL,
  `kolicina` int(10) NOT NULL,
  `sifra_zanra` int(10) NOT NULL,
  PRIMARY KEY (`sifra_filma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.film: ~0 rows (approximately)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Dumping structure for table videoteka.posudba
CREATE TABLE IF NOT EXISTS `posudba` (
  `clanski_broj` int(10) NOT NULL,
  `sifra_filma` int(10) NOT NULL,
  `datum_posudbe` date NOT NULL,
  `datum_povrata` date NOT NULL,
  `sifra_cjenika` int(10) NOT NULL,
  PRIMARY KEY (`clanski_broj`,`sifra_filma`,`datum_posudbe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.posudba: ~0 rows (approximately)
/*!40000 ALTER TABLE `posudba` DISABLE KEYS */;
/*!40000 ALTER TABLE `posudba` ENABLE KEYS */;

-- Dumping structure for table videoteka.zanr
CREATE TABLE IF NOT EXISTS `zanr` (
  `sifra_zanra` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(55) NOT NULL,
  PRIMARY KEY (`sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table videoteka.zanr: ~0 rows (approximately)
/*!40000 ALTER TABLE `zanr` DISABLE KEYS */;
/*!40000 ALTER TABLE `zanr` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
