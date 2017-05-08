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


-- Dumping database structure for skladiste_trgovine_2_2
CREATE DATABASE IF NOT EXISTS `skladiste_trgovine_2_2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `skladiste_trgovine_2_2`;

-- Dumping structure for table skladiste_trgovine_2_2.proizvod
CREATE TABLE IF NOT EXISTS `proizvod` (
  `Sifra_proizvoda` int(10) unsigned NOT NULL,
  `Naziv` varchar(50) NOT NULL,
  `Sifra_skladista` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_proizvoda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table skladiste_trgovine_2_2.proizvod: ~0 rows (approximately)
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;

-- Dumping structure for table skladiste_trgovine_2_2.radnik
CREATE TABLE IF NOT EXISTS `radnik` (
  `Sifra_radnika` int(10) unsigned NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Sifra_skladista` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_radnika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table skladiste_trgovine_2_2.radnik: ~0 rows (approximately)
/*!40000 ALTER TABLE `radnik` DISABLE KEYS */;
/*!40000 ALTER TABLE `radnik` ENABLE KEYS */;

-- Dumping structure for table skladiste_trgovine_2_2.skladisno_mjesto
CREATE TABLE IF NOT EXISTS `skladisno_mjesto` (
  `Sifra_skladista` int(10) unsigned NOT NULL,
  `Naziv` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table skladiste_trgovine_2_2.skladisno_mjesto: ~0 rows (approximately)
/*!40000 ALTER TABLE `skladisno_mjesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `skladisno_mjesto` ENABLE KEYS */;

-- Dumping structure for table skladiste_trgovine_2_2.voditelji
CREATE TABLE IF NOT EXISTS `voditelji` (
  `Sifra_radnika` int(10) unsigned NOT NULL,
  `Sifra_skladista` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Sifra_radnika`,`Sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table skladiste_trgovine_2_2.voditelji: ~0 rows (approximately)
/*!40000 ALTER TABLE `voditelji` DISABLE KEYS */;
/*!40000 ALTER TABLE `voditelji` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
