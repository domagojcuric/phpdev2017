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


-- Dumping database structure for diskovi
CREATE DATABASE IF NOT EXISTS `diskovi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `diskovi`;

-- Dumping structure for table diskovi.cd_dvd
CREATE TABLE IF NOT EXISTS `cd_dvd` (
  `izvodjac` char(50) DEFAULT '0',
  `tip_diska` char(50) DEFAULT '0',
  `godina_proizvodnje` char(50) DEFAULT '0',
  KEY `izvodjac` (`izvodjac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table diskovi.cd_dvd: ~3 rows (approximately)
/*!40000 ALTER TABLE `cd_dvd` DISABLE KEYS */;
INSERT INTO `cd_dvd` (`izvodjac`, `tip_diska`, `godina_proizvodnje`) VALUES
	('Metallica', 'CD', '1983'),
	('Terminator', 'DVD', '1984'),
	('Iron maiden', 'CD', '1979');
/*!40000 ALTER TABLE `cd_dvd` ENABLE KEYS */;

-- Dumping structure for table diskovi.imena
CREATE TABLE IF NOT EXISTS `imena` (
  `id_i` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime` char(50) DEFAULT '0',
  `prezime` char(50) DEFAULT '0',
  PRIMARY KEY (`id_i`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table diskovi.imena: ~3 rows (approximately)
/*!40000 ALTER TABLE `imena` DISABLE KEYS */;
INSERT INTO `imena` (`id_i`, `ime`, `prezime`) VALUES
	(1, 'Ante', 'Antić'),
	(2, 'Pero', 'Perić'),
	(3, 'Marko', 'Markić');
/*!40000 ALTER TABLE `imena` ENABLE KEYS */;

-- Dumping structure for table diskovi.posudba
CREATE TABLE IF NOT EXISTS `posudba` (
  `Korisnik` int(10) unsigned DEFAULT NULL,
  `Izvodjac` char(50) DEFAULT NULL,
  `datum_posudbe` date DEFAULT NULL,
  `datum_vracanja` date DEFAULT NULL,
  KEY `Korisnik` (`Korisnik`),
  KEY `Tip_diska` (`Izvodjac`),
  CONSTRAINT `FK_posudba_cd_dvd` FOREIGN KEY (`Izvodjac`) REFERENCES `cd_dvd` (`izvodjac`),
  CONSTRAINT `FK_posudba_imena` FOREIGN KEY (`Korisnik`) REFERENCES `imena` (`id_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table diskovi.posudba: ~0 rows (approximately)
/*!40000 ALTER TABLE `posudba` DISABLE KEYS */;
INSERT INTO `posudba` (`Korisnik`, `Izvodjac`, `datum_posudbe`, `datum_vracanja`) VALUES
	(1, 'Iron maiden', '2017-03-10', '2017-03-15'),
	(2, 'Metallica', '2017-02-20', '2017-02-28'),
	(3, 'Terminator', '2017-04-05', '2017-04-12');
/*!40000 ALTER TABLE `posudba` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
