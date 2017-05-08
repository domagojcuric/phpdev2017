/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 13, 2017
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


-- Dumping database structure for fakultet
CREATE DATABASE IF NOT EXISTS `fakultet` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fakultet`;

-- Dumping structure for table fakultet.dvorana
CREATE TABLE IF NOT EXISTS `dvorana` (
  `oznDvorana` char(5) NOT NULL,
  `kapacitet` int(11) NOT NULL,
  PRIMARY KEY (`oznDvorana`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.dvorana: ~0 rows (approximately)
/*!40000 ALTER TABLE `dvorana` DISABLE KEYS */;
/*!40000 ALTER TABLE `dvorana` ENABLE KEYS */;

-- Dumping structure for table fakultet.ispit
CREATE TABLE IF NOT EXISTS `ispit` (
  `mbrStud` int(11) NOT NULL,
  `sifPred` int(11) NOT NULL,
  `sifNastavnik` int(11) NOT NULL,
  `datIspit` datetime NOT NULL,
  `ocjena` smallint(6) NOT NULL,
  KEY `FK_stud` (`mbrStud`),
  KEY `FK_nast` (`sifNastavnik`),
  KEY `FK_pred` (`sifPred`),
  CONSTRAINT `FK_nast` FOREIGN KEY (`sifNastavnik`) REFERENCES `nastavnik` (`sifNastavnik`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pred` FOREIGN KEY (`sifPred`) REFERENCES `pred` (`sifPred`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_stud` FOREIGN KEY (`mbrStud`) REFERENCES `stud` (`mbrStud`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.ispit: ~0 rows (approximately)
/*!40000 ALTER TABLE `ispit` DISABLE KEYS */;
INSERT INTO `ispit` (`mbrStud`, `sifPred`, `sifNastavnik`, `datIspit`, `ocjena`) VALUES
	(123456, 146, 1, '2017-04-14 23:10:52', 3),
	(654321, 111, 2, '2017-04-14 23:12:06', 2);
/*!40000 ALTER TABLE `ispit` ENABLE KEYS */;

-- Dumping structure for table fakultet.mjesto
CREATE TABLE IF NOT EXISTS `mjesto` (
  `pbr` int(11) NOT NULL,
  `nazMjesto` char(40) NOT NULL,
  `sifZupanija` smallint(6) NOT NULL,
  PRIMARY KEY (`pbr`),
  KEY `FK_zupanija` (`sifZupanija`),
  CONSTRAINT `FK_zupanija` FOREIGN KEY (`sifZupanija`) REFERENCES `zupanija` (`sifZupanija`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.mjesto: ~2 rows (approximately)
/*!40000 ALTER TABLE `mjesto` DISABLE KEYS */;
INSERT INTO `mjesto` (`pbr`, `nazMjesto`, `sifZupanija`) VALUES
	(31000, 'Osijek', 31),
	(32564, 'Zupanja', 32);
/*!40000 ALTER TABLE `mjesto` ENABLE KEYS */;

-- Dumping structure for table fakultet.nastavnik
CREATE TABLE IF NOT EXISTS `nastavnik` (
  `sifNastavnik` int(11) NOT NULL,
  `imeNastavnik` char(25) NOT NULL,
  `prezNastavnik` char(25) NOT NULL,
  `pbrStan` int(11) NOT NULL,
  `sifOrgjed` int(11) NOT NULL,
  `koef` decimal(3,2) NOT NULL,
  PRIMARY KEY (`sifNastavnik`),
  KEY `FK_mje` (`pbrStan`),
  KEY `FK_orgjed` (`sifOrgjed`),
  CONSTRAINT `FK_mje` FOREIGN KEY (`pbrStan`) REFERENCES `mjesto` (`pbr`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_orgjed` FOREIGN KEY (`sifOrgjed`) REFERENCES `orgjed` (`sifOrgjed`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.nastavnik: ~2 rows (approximately)
/*!40000 ALTER TABLE `nastavnik` DISABLE KEYS */;
INSERT INTO `nastavnik` (`sifNastavnik`, `imeNastavnik`, `prezNastavnik`, `pbrStan`, `sifOrgjed`, `koef`) VALUES
	(1, 'Ivo', 'Ivic', 31000, 1, 2.00),
	(2, 'Pero', 'Peric', 32564, 1, 1.00);
/*!40000 ALTER TABLE `nastavnik` ENABLE KEYS */;

-- Dumping structure for table fakultet.orgjed
CREATE TABLE IF NOT EXISTS `orgjed` (
  `sifOrgjed` int(11) NOT NULL,
  `nazOrgjed` char(60) NOT NULL,
  `sifNadorgjed` int(11) NOT NULL,
  PRIMARY KEY (`sifOrgjed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.orgjed: ~1 rows (approximately)
/*!40000 ALTER TABLE `orgjed` DISABLE KEYS */;
INSERT INTO `orgjed` (`sifOrgjed`, `nazOrgjed`, `sifNadorgjed`) VALUES
	(1, 'Matematika', 2),
	(2, 'nemem blage', 2);
/*!40000 ALTER TABLE `orgjed` ENABLE KEYS */;

-- Dumping structure for table fakultet.pred
CREATE TABLE IF NOT EXISTS `pred` (
  `sifPred` int(11) NOT NULL,
  `kratPred` char(8) NOT NULL,
  `nazPred` char(60) NOT NULL,
  `sifOrgjed` int(11) NOT NULL,
  `upisanoStud` int(11) NOT NULL,
  `brojSatiTjedno` int(11) NOT NULL,
  PRIMARY KEY (`sifPred`),
  KEY `FKOrgJed2` (`sifOrgjed`),
  CONSTRAINT `FKOrgJed2` FOREIGN KEY (`sifOrgjed`) REFERENCES `orgjed` (`sifOrgjed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.pred: ~0 rows (approximately)
/*!40000 ALTER TABLE `pred` DISABLE KEYS */;
INSERT INTO `pred` (`sifPred`, `kratPred`, `nazPred`, `sifOrgjed`, `upisanoStud`, `brojSatiTjedno`) VALUES
	(111, 'OBRM', 'Obrada materijala', 2, 5, 2),
	(146, 'ZUU', 'zujanje', 2, 55, 12);
/*!40000 ALTER TABLE `pred` ENABLE KEYS */;

-- Dumping structure for table fakultet.rezervacija
CREATE TABLE IF NOT EXISTS `rezervacija` (
  `oznDvorana` char(5) NOT NULL,
  `oznVrstaDan` char(2) NOT NULL,
  `sat` smallint(6) NOT NULL,
  `sifPred` int(11) NOT NULL,
  KEY `FK_dvor` (`oznDvorana`),
  KEY `FK_pred2` (`sifPred`),
  CONSTRAINT `FK_dvor` FOREIGN KEY (`oznDvorana`) REFERENCES `dvorana` (`oznDvorana`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pred2` FOREIGN KEY (`sifPred`) REFERENCES `pred` (`sifPred`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.rezervacija: ~0 rows (approximately)
/*!40000 ALTER TABLE `rezervacija` DISABLE KEYS */;
/*!40000 ALTER TABLE `rezervacija` ENABLE KEYS */;

-- Dumping structure for table fakultet.stud
CREATE TABLE IF NOT EXISTS `stud` (
  `mbrStud` int(11) NOT NULL,
  `imeStud` char(25) NOT NULL,
  `prezStud` char(25) NOT NULL,
  `pbrRod` int(11) NOT NULL,
  `pbrStan` int(11) NOT NULL,
  `datRodStud` date NOT NULL,
  `jmbgStud` char(13) NOT NULL,
  PRIMARY KEY (`mbrStud`),
  KEY `FK_pbr` (`pbrStan`),
  KEY `FK_pbr2` (`pbrRod`),
  CONSTRAINT `FK_pbr` FOREIGN KEY (`pbrStan`) REFERENCES `mjesto` (`pbr`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pbr2` FOREIGN KEY (`pbrRod`) REFERENCES `mjesto` (`pbr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.stud: ~2 rows (approximately)
/*!40000 ALTER TABLE `stud` DISABLE KEYS */;
INSERT INTO `stud` (`mbrStud`, `imeStud`, `prezStud`, `pbrRod`, `pbrStan`, `datRodStud`, `jmbgStud`) VALUES
	(123456, 'Ana', 'Pribadalo', 31000, 32564, '1995-06-13', '28099693032'),
	(654321, 'Ivka', 'Zanovjetalo', 32564, 32564, '1997-09-28', '1234567890');
/*!40000 ALTER TABLE `stud` ENABLE KEYS */;

-- Dumping structure for table fakultet.zupanija
CREATE TABLE IF NOT EXISTS `zupanija` (
  `sifZupanija` smallint(6) NOT NULL,
  `nazZupanija` char(40) NOT NULL,
  PRIMARY KEY (`sifZupanija`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakultet.zupanija: ~3 rows (approximately)
/*!40000 ALTER TABLE `zupanija` DISABLE KEYS */;
INSERT INTO `zupanija` (`sifZupanija`, `nazZupanija`) VALUES
	(1, 'Zagrebacka zupanija'),
	(31, 'Osjecko-baranjska zupanija'),
	(32, 'Vukovarsko-srijemska zupanija');
/*!40000 ALTER TABLE `zupanija` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
