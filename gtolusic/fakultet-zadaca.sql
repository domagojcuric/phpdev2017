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


-- Dumping database structure for FAKULTET
CREATE DATABASE IF NOT EXISTS `fakultet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `FAKULTET`;

-- Dumping structure for table FAKULTET.nastavnik
CREATE TABLE IF NOT EXISTS `nastavnik` (
  `id_nastavnika` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime` char(50) NOT NULL DEFAULT '0',
  `prezime` char(50) NOT NULL DEFAULT '0',
  `adresa` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_nastavnika`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table FAKULTET.nastavnik: ~0 rows (approximately)
/*!40000 ALTER TABLE `nastavnik` DISABLE KEYS */;
INSERT INTO `nastavnik` (`id_nastavnika`, `ime`, `prezime`, `adresa`) VALUES
	(1, 'Bruno', 'Brunic', 'Osijek'),
	(2, 'Marijan', 'Maric', 'Zupanja'),
	(3, 'Davor', 'Davidovic', 'Slavonski Brod');
/*!40000 ALTER TABLE `nastavnik` ENABLE KEYS */;

-- Dumping structure for table FAKULTET.studenti
CREATE TABLE IF NOT EXISTS `studenti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime_s` char(50) NOT NULL DEFAULT '0',
  `prezime_s` char(50) NOT NULL DEFAULT '0',
  `adresa_s` char(50) NOT NULL DEFAULT '0',
  `oib_s` int(15) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table FAKULTET.studenti: ~0 rows (approximately)
/*!40000 ALTER TABLE `studenti` DISABLE KEYS */;
INSERT INTO `studenti` (`id`, `ime_s`, `prezime_s`, `adresa_s`, `oib_s`) VALUES
	(1, 'bimbo', 'klein', 'djakovo', 5465412),
	(2, 'bilbo', 'baggins', 'shire', 1239856),
	(3, 'bruce', 'wayne', 'gotham', 9563671);
/*!40000 ALTER TABLE `studenti` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
