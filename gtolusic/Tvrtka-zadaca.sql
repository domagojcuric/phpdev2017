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


-- Dumping database structure for tvrtka
CREATE DATABASE IF NOT EXISTS `tvrtka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tvrtka`;

-- Dumping structure for table tvrtka.odjeli
CREATE TABLE IF NOT EXISTS `odjeli` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `odjeli` char(50) NOT NULL DEFAULT '0',
  `adresa` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.odjeli: ~2 rows (approximately)
/*!40000 ALTER TABLE `odjeli` DISABLE KEYS */;
INSERT INTO `odjeli` (`id`, `odjeli`, `adresa`) VALUES
	(1, 'odjel1', 'osijek'),
	(2, 'odjel2', 'zagreb');
/*!40000 ALTER TABLE `odjeli` ENABLE KEYS */;

-- Dumping structure for table tvrtka.radnici
CREATE TABLE IF NOT EXISTS `radnici` (
  `ID` int(11) NOT NULL,
  `Ime` char(50) NOT NULL,
  `prezime` char(50) NOT NULL,
  `adresa` char(50) NOT NULL,
  `odjel` int(10) unsigned NOT NULL,
  KEY `odjel` (`odjel`),
  CONSTRAINT `FK_radnici_odjeli` FOREIGN KEY (`odjel`) REFERENCES `odjeli` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.radnici: ~2 rows (approximately)
/*!40000 ALTER TABLE `radnici` DISABLE KEYS */;
INSERT INTO `radnici` (`ID`, `Ime`, `prezime`, `adresa`, `odjel`) VALUES
	(2, 'goran', 'goranic', 'djakovo', 1),
	(1, 'marko', 'markic', 'osijek', 2);
/*!40000 ALTER TABLE `radnici` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
