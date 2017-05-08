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


-- Dumping database structure for zatatak1
CREATE DATABASE IF NOT EXISTS `zatatak1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `zatatak1`;

-- Dumping structure for table zatatak1.odjeli
CREATE TABLE IF NOT EXISTS `odjeli` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `odjel` varchar(55) NOT NULL,
  `zaposlenikID` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table zatatak1.odjeli: ~3 rows (approximately)
/*!40000 ALTER TABLE `odjeli` DISABLE KEYS */;
INSERT INTO `odjeli` (`id`, `odjel`, `zaposlenikID`) VALUES
	(1, 'PR', 'A1'),
	(2, 'HR', 'B3'),
	(3, 'Marketing', 'C6');
/*!40000 ALTER TABLE `odjeli` ENABLE KEYS */;

-- Dumping structure for table zatatak1.radnici
CREATE TABLE IF NOT EXISTS `radnici` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ime` varchar(55) NOT NULL,
  `Prezime` varchar(55) NOT NULL,
  `zaposlenikID` varchar(55) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table zatatak1.radnici: ~3 rows (approximately)
/*!40000 ALTER TABLE `radnici` DISABLE KEYS */;
INSERT INTO `radnici` (`ID`, `Ime`, `Prezime`, `zaposlenikID`) VALUES
	(1, 'Marko', 'Marulic', 'A1'),
	(2, 'Neko', 'Drugi', 'B3'),
	(3, 'Josip', 'Broz', 'C6');
/*!40000 ALTER TABLE `radnici` ENABLE KEYS */;

-- Dumping structure for table zatatak1.sefovi
CREATE TABLE IF NOT EXISTS `sefovi` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zaposlenikID` varchar(55) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table zatatak1.sefovi: ~3 rows (approximately)
/*!40000 ALTER TABLE `sefovi` DISABLE KEYS */;
INSERT INTO `sefovi` (`ID`, `zaposlenikID`) VALUES
	(1, 'A1'),
	(2, 'B3'),
	(3, 'C6');
/*!40000 ALTER TABLE `sefovi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
