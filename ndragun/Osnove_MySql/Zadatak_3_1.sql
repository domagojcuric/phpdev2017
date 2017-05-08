-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for upisi_polaznika
CREATE DATABASE IF NOT EXISTS `upisi_polaznika` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `upisi_polaznika`;

-- Dumping structure for table upisi_polaznika.polaznici
CREATE TABLE IF NOT EXISTS `polaznici` (
  `sifra_polaznika` int(11) NOT NULL,
  `ime_polaznika` varchar(50) NOT NULL,
  `prezime_polaznika` varchar(50) NOT NULL,
  `mjesto_stanovanja` char(25) DEFAULT NULL,
  PRIMARY KEY (`sifra_polaznika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table upisi_polaznika.polaznici: ~0 rows (approximately)
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` (`sifra_polaznika`, `ime_polaznika`, `prezime_polaznika`, `mjesto_stanovanja`) VALUES
	(1, 'Pero', 'Peric', 'Perkovci'),
	(2, 'Mara', 'Maric', 'Markovci'),
	(3, 'Djuro', 'Djuric', 'Djurkovci'),
	(4, 'Ana', 'Anic', 'Atina'),
	(5, 'Tina', 'Tinesic', 'Zagreb'),
	(6, 'Splito', 'Splitic', 'Split');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;

-- Dumping structure for table upisi_polaznika.tecajevi
CREATE TABLE IF NOT EXISTS `tecajevi` (
  `sifra_tecaja` char(3) NOT NULL,
  `naziv_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table upisi_polaznika.tecajevi: ~0 rows (approximately)
/*!40000 ALTER TABLE `tecajevi` DISABLE KEYS */;
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES
	('N01', 'SQL osnove'),
	('O01', 'Racunalni operator'),
	('O02', 'Linux'),
	('O03', 'Frontend Master'),
	('P01', 'Osnove rada PC racunala'),
	('P02', 'Microsoft Office');
/*!40000 ALTER TABLE `tecajevi` ENABLE KEYS */;

-- Dumping structure for table upisi_polaznika.upisi
CREATE TABLE IF NOT EXISTS `upisi` (
  `sifra_polaznika` int(11) NOT NULL,
  `sifra_tecaja` char(3) NOT NULL,
  PRIMARY KEY (`sifra_polaznika`,`sifra_tecaja`),
  KEY `sifra_polaznika` (`sifra_polaznika`),
  KEY `sifra_tecaja` (`sifra_tecaja`),
  CONSTRAINT `upisi_1` FOREIGN KEY (`sifra_polaznika`) REFERENCES `polaznici` (`sifra_polaznika`),
  CONSTRAINT `upisi_2` FOREIGN KEY (`sifra_tecaja`) REFERENCES `tecajevi` (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table upisi_polaznika.upisi: ~0 rows (approximately)
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES
	(1, 'P01'),
	(2, 'P02'),
	(3, 'N01'),
	(4, 'O01'),
	(5, 'O02'),
	(6, 'O03');
/*!40000 ALTER TABLE `upisi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
