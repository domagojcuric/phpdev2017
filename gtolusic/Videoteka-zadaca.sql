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


-- Dumping database structure for Videoteka
CREATE DATABASE IF NOT EXISTS `videoteka` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Videoteka`;

-- Dumping structure for table Videoteka.clanovi
CREATE TABLE IF NOT EXISTS `clanovi` (
  `br_isk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ime_i_prezime` char(50) NOT NULL DEFAULT '0',
  `adresa` char(50) NOT NULL DEFAULT '0',
  `broj_tel` char(50) NOT NULL DEFAULT '0',
  `oib` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`br_isk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table Videoteka.clanovi: ~4 rows (approximately)
/*!40000 ALTER TABLE `clanovi` DISABLE KEYS */;
INSERT INTO `clanovi` (`br_isk`, `ime_i_prezime`, `adresa`, `broj_tel`, `oib`) VALUES
	(1, 'goran goranovic', 'osijek', '546654', '65465465464'),
	(2, 'marinko marinkovic', 'zagreb', '1232132', '87951654566'),
	(3, 'marko markovic', 'nasice', '798541', '56465798536'),
	(4, 'ante antić', 'osijek', '425852', '12589225955');
/*!40000 ALTER TABLE `clanovi` ENABLE KEYS */;

-- Dumping structure for table Videoteka.filmovi
CREATE TABLE IF NOT EXISTS `filmovi` (
  `Naziv` char(50) NOT NULL,
  `Vrsta/Genre` char(50) NOT NULL,
  `Godina izdanja` char(50) NOT NULL,
  PRIMARY KEY (`Naziv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Videoteka.filmovi: ~3 rows (approximately)
/*!40000 ALTER TABLE `filmovi` DISABLE KEYS */;
INSERT INTO `filmovi` (`Naziv`, `Vrsta/Genre`, `Godina izdanja`) VALUES
	('Lethal weapon', 'Action', '1987'),
	('Policijska akademija', 'Comedy', '1982'),
	('TErminator', 'Action/Sci fi', '1984');
/*!40000 ALTER TABLE `filmovi` ENABLE KEYS */;

-- Dumping structure for table Videoteka.hit/obicni
CREATE TABLE IF NOT EXISTS `hit/obicni` (
  `hit/-` char(50) NOT NULL,
  PRIMARY KEY (`hit/-`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Videoteka.hit/obicni: ~2 rows (approximately)
/*!40000 ALTER TABLE `hit/obicni` DISABLE KEYS */;
INSERT INTO `hit/obicni` (`hit/-`) VALUES
	('-'),
	('HIT');
/*!40000 ALTER TABLE `hit/obicni` ENABLE KEYS */;

-- Dumping structure for table Videoteka.medij
CREATE TABLE IF NOT EXISTS `medij` (
  `medij` char(50) NOT NULL,
  PRIMARY KEY (`medij`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Videoteka.medij: ~2 rows (approximately)
/*!40000 ALTER TABLE `medij` DISABLE KEYS */;
INSERT INTO `medij` (`medij`) VALUES
	('BLUE-ray'),
	('DVD');
/*!40000 ALTER TABLE `medij` ENABLE KEYS */;

-- Dumping structure for table Videoteka.posudba
CREATE TABLE IF NOT EXISTS `posudba` (
  `Korisnik` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Hit/-` char(50) DEFAULT '0',
  `Film` char(50) DEFAULT '0',
  `medij` char(50) DEFAULT '0',
  `datum` char(50) DEFAULT '0',
  KEY `Korisnik` (`Korisnik`),
  KEY `FK_posudba_hit/obicni` (`Hit/-`),
  KEY `FK_posudba_filmovi` (`Film`),
  KEY `FK_posudba_medij` (`medij`),
  CONSTRAINT `FK_posudba_clanovi` FOREIGN KEY (`Korisnik`) REFERENCES `clanovi` (`br_isk`),
  CONSTRAINT `FK_posudba_filmovi` FOREIGN KEY (`Film`) REFERENCES `filmovi` (`Naziv`),
  CONSTRAINT `FK_posudba_hit/obicni` FOREIGN KEY (`Hit/-`) REFERENCES `hit/obicni` (`hit/-`),
  CONSTRAINT `FK_posudba_medij` FOREIGN KEY (`medij`) REFERENCES `medij` (`medij`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table Videoteka.posudba: ~0 rows (approximately)
/*!40000 ALTER TABLE `posudba` DISABLE KEYS */;
/*!40000 ALTER TABLE `posudba` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
