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


-- Dumping database structure for trgovina
CREATE DATABASE IF NOT EXISTS `trgovina` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `trgovina`;

-- Dumping structure for table trgovina.proizvod
CREATE TABLE IF NOT EXISTS `proizvod` (
  `sifra_proizvoda` int(10) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(55) NOT NULL,
  `sifra_skladista` int(5) NOT NULL,
  PRIMARY KEY (`sifra_proizvoda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table trgovina.proizvod: ~0 rows (approximately)
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;

-- Dumping structure for table trgovina.radnik
CREATE TABLE IF NOT EXISTS `radnik` (
  `sifra_radnika` int(10) NOT NULL AUTO_INCREMENT,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(25) NOT NULL,
  `sifra_skladista` int(5) NOT NULL,
  `voditelj_skladista` tinyint(1) NOT NULL,
  PRIMARY KEY (`sifra_radnika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table trgovina.radnik: ~0 rows (approximately)
/*!40000 ALTER TABLE `radnik` DISABLE KEYS */;
/*!40000 ALTER TABLE `radnik` ENABLE KEYS */;

-- Dumping structure for table trgovina.skladisno_mjesto
CREATE TABLE IF NOT EXISTS `skladisno_mjesto` (
  `sifra_skladista` int(5) NOT NULL,
  `naziv` varchar(55) NOT NULL,
  PRIMARY KEY (`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table trgovina.skladisno_mjesto: ~0 rows (approximately)
/*!40000 ALTER TABLE `skladisno_mjesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `skladisno_mjesto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
