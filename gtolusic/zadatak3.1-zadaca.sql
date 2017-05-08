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


-- Dumping database structure for Upisi_polaznika
CREATE DATABASE IF NOT EXISTS `upisi_polaznika` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Upisi_polaznika`;

-- Dumping structure for table Upisi_polaznika.polaznici
CREATE TABLE IF NOT EXISTS `polaznici` (
  `Šifra polaznika` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime polaznika` char(50) CHARACTER SET latin1 NOT NULL,
  `Prezime polaznika` char(50) CHARACTER SET latin1 NOT NULL,
  `Mjesto stanovanja` char(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`Šifra polaznika`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table Upisi_polaznika.polaznici: ~6 rows (approximately)
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` (`Šifra polaznika`, `Ime polaznika`, `Prezime polaznika`, `Mjesto stanovanja`) VALUES
	(1, 'Ana', 'Milic', 'Zagreb'),
	(2, 'Sanja', 'Tarak', 'Split'),
	(3, 'Mladen', 'Gork', 'Osijek'),
	(4, 'Ivana', 'Matkic', 'Split'),
	(5, 'Marina', 'Anic', 'Osijek'),
	(6, 'Ivica', 'Limac', 'Split');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;

-- Dumping structure for table Upisi_polaznika.tečajevi
CREATE TABLE IF NOT EXISTS `tečajevi` (
  `Šifra tečaja` char(50) NOT NULL,
  `Naziv tečaja` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Šifra tečaja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table Upisi_polaznika.tečajevi: ~6 rows (approximately)
/*!40000 ALTER TABLE `tečajevi` DISABLE KEYS */;
INSERT INTO `tečajevi` (`Šifra tečaja`, `Naziv tečaja`) VALUES
	('P01', 'Osnove rada Pc racunala'),
	('P02', 'Microsoft Word'),
	('P03', 'SQL - osnove'),
	('P04', 'Racunalni operator - uredsko poslovanje'),
	('P05', 'Specijalist poslovne primjene racunala'),
	('P06', 'Graficki dizajner');
/*!40000 ALTER TABLE `tečajevi` ENABLE KEYS */;

-- Dumping structure for table Upisi_polaznika.upisi
CREATE TABLE IF NOT EXISTS `upisi` (
  `Šifra polaznika` int(10) unsigned NOT NULL,
  `Šifra tečaja` char(50) NOT NULL,
  KEY `FK__polaznici` (`Šifra polaznika`),
  KEY `FK_Upisi_tečajevi` (`Šifra tečaja`),
  CONSTRAINT `FK_Upisi_tečajevi` FOREIGN KEY (`Šifra tečaja`) REFERENCES `tečajevi` (`Šifra tečaja`),
  CONSTRAINT `FK__polaznici` FOREIGN KEY (`Šifra polaznika`) REFERENCES `polaznici` (`Šifra polaznika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table Upisi_polaznika.upisi: ~0 rows (approximately)
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` (`Šifra polaznika`, `Šifra tečaja`) VALUES
	(1, 'P01'),
	(2, 'P02'),
	(3, 'P03'),
	(4, 'P04'),
	(5, 'P05'),
	(6, 'P06');
/*!40000 ALTER TABLE `upisi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
