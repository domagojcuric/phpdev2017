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


-- Dumping database structure for polaznici
CREATE DATABASE IF NOT EXISTS `polaznici` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `polaznici`;

-- Dumping structure for table polaznici.polaznici
CREATE TABLE IF NOT EXISTS `polaznici` (
  `sifra_polaznika` int(5) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `mjesto` char(25) DEFAULT NULL,
  PRIMARY KEY (`sifra_polaznika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table polaznici.polaznici: ~6 rows (approximately)
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto`) VALUES
	(1, 'Ana', 'Milic', 'Zagreb'),
	(2, 'Sanja', 'Gork', 'Osijek'),
	(3, 'Mladen', 'Matkic', 'Split'),
	(4, 'Ivana', 'Anic', 'OSijek'),
	(5, 'Marina', 'Tarak', 'Osijek'),
	(6, 'Ivica', 'Limac', 'Split');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;

-- Dumping structure for table polaznici.tecajevi
CREATE TABLE IF NOT EXISTS `tecajevi` (
  `sifra_tecaja` char(3) NOT NULL,
  `naziv_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table polaznici.tecajevi: ~6 rows (approximately)
/*!40000 ALTER TABLE `tecajevi` DISABLE KEYS */;
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES
	('N01', 'SQL osnove'),
	('O01', 'Racunalni operator'),
	('O02', 'Specijalist primjene racunala'),
	('O03', 'Graficki dizajner'),
	('P01', 'Osnove rada PC racunala'),
	('P02', 'Microsoft Word');
/*!40000 ALTER TABLE `tecajevi` ENABLE KEYS */;

-- Dumping structure for table polaznici.upisi
CREATE TABLE IF NOT EXISTS `upisi` (
  `sifra_polaznika` int(11) DEFAULT NULL,
  `sifra_tecaja` char(3) DEFAULT NULL,
  KEY `ibfk1` (`sifra_polaznika`),
  KEY `ibfk2` (`sifra_tecaja`),
  CONSTRAINT `ibfk1` FOREIGN KEY (`sifra_polaznika`) REFERENCES `polaznici` (`sifra_polaznika`),
  CONSTRAINT `ibfk2` FOREIGN KEY (`sifra_tecaja`) REFERENCES `tecajevi` (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table polaznici.upisi: ~6 rows (approximately)
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES
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
