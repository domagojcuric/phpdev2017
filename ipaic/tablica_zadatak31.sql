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


-- Dumping database structure for zbirkazadaci
CREATE DATABASE IF NOT EXISTS `zbirkazadaci` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `zbirkazadaci`;

-- Dumping structure for table zbirkazadaci.polaznici
CREATE TABLE IF NOT EXISTS `polaznici` (
  `Šifra_polaznika` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Prebivaliste` varchar(50) NOT NULL,
  PRIMARY KEY (`Šifra_polaznika`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table zbirkazadaci.polaznici: ~6 rows (approximately)
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` (`Šifra_polaznika`, `Ime`, `Prezime`, `Prebivaliste`) VALUES
	(1, 'Ana', 'Milic', 'Zagreb'),
	(2, 'Sanja', 'Tarak', 'Split'),
	(3, 'Mladen', 'Gork', 'Osijek'),
	(4, 'Ivana', 'Matkic', 'Split'),
	(5, 'Marina', 'Anic', 'Osijek'),
	(6, 'Ivica', 'Limac', 'Split');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;

-- Dumping structure for table zbirkazadaci.tečajevi
CREATE TABLE IF NOT EXISTS `tečajevi` (
  `ID_tecaja` varchar(50) NOT NULL,
  `Naziv_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table zbirkazadaci.tečajevi: ~6 rows (approximately)
/*!40000 ALTER TABLE `tečajevi` DISABLE KEYS */;
INSERT INTO `tečajevi` (`ID_tecaja`, `Naziv_tecaja`) VALUES
	('N01', 'SQL - osnove'),
	('O01', 'Racunalni operator - uredsko poslovanje'),
	('O02', 'Specijalist poslovne primjene racunala'),
	('O03', 'Graficki dizajner'),
	('P01', 'Osnove rada PC racunala'),
	('P02', 'Microsoft Word');
/*!40000 ALTER TABLE `tečajevi` ENABLE KEYS */;

-- Dumping structure for table zbirkazadaci.upisi
CREATE TABLE IF NOT EXISTS `upisi` (
  `Sifra_polaznika` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_polaznika`,`ID_tecaja`),
  KEY `fk_ID_tecaja` (`ID_tecaja`),
  CONSTRAINT `fk_ID_tecaja` FOREIGN KEY (`ID_tecaja`) REFERENCES `tečajevi` (`ID_tecaja`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sifra_polaznika` FOREIGN KEY (`Sifra_polaznika`) REFERENCES `polaznici` (`Šifra_polaznika`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table zbirkazadaci.upisi: ~6 rows (approximately)
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` (`Sifra_polaznika`, `ID_tecaja`) VALUES
	(1, 'P01'),
	(2, 'P02'),
	(3, 'N01'),
	(4, 'O01'),
	(5, 'O02'),
	(6, 'P01');
/*!40000 ALTER TABLE `upisi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
