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
CREATE DATABASE IF NOT EXISTS `trgovina` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trgovina`;

-- Dumping structure for table trgovina.gradja
CREATE TABLE IF NOT EXISTS `gradja` (
  `materijal` char(55) NOT NULL,
  `id_skladista` int(11) unsigned NOT NULL,
  KEY `FK_gradja_skladista` (`id_skladista`),
  CONSTRAINT `FK5` FOREIGN KEY (`id_skladista`) REFERENCES `skladista` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table trgovina.gradja: ~4 rows (approximately)
/*!40000 ALTER TABLE `gradja` DISABLE KEYS */;
INSERT INTO `gradja` (`materijal`, `id_skladista`) VALUES
	('stolica', 1),
	('stol', 1),
	('lampa', 2),
	('tepih', 2);
/*!40000 ALTER TABLE `gradja` ENABLE KEYS */;

-- Dumping structure for table trgovina.skladista
CREATE TABLE IF NOT EXISTS `skladista` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `skladiste` char(55) NOT NULL,
  `voditelj` char(55) NOT NULL,
  `adresa_skladista` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table trgovina.skladista: ~2 rows (approximately)
/*!40000 ALTER TABLE `skladista` DISABLE KEYS */;
INSERT INTO `skladista` (`id`, `skladiste`, `voditelj`, `adresa_skladista`) VALUES
	(1, 'skladiste1', 'andro andric', 'osijek jug'),
	(2, 'skladiste2', 'marko markic', 'osijek centar');
/*!40000 ALTER TABLE `skladista` ENABLE KEYS */;

-- Dumping structure for table trgovina.zaposlenici
CREATE TABLE IF NOT EXISTS `zaposlenici` (
  `zaposlenik` char(55) NOT NULL,
  `id_skladista` int(11) unsigned NOT NULL AUTO_INCREMENT,
  KEY `FK2` (`id_skladista`),
  CONSTRAINT `FK2` FOREIGN KEY (`id_skladista`) REFERENCES `skladista` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table trgovina.zaposlenici: ~4 rows (approximately)
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` (`zaposlenik`, `id_skladista`) VALUES
	('ante antic', 1),
	('ivica ivić', 2),
	('božo božić', 1),
	('jura jurić', 2);
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
