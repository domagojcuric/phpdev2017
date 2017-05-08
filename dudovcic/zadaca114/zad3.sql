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


-- Dumping database structure for videoteka
CREATE DATABASE IF NOT EXISTS `videoteka` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `videoteka`;

-- Dumping structure for table videoteka.cjenik
CREATE TABLE IF NOT EXISTS `cjenik` (
  `sifra_cjenika` int(11) unsigned NOT NULL,
  `kategorija` varchar(55) DEFAULT NULL,
  `cijena` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sifra_cjenika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka.cjenik: ~0 rows (approximately)
/*!40000 ALTER TABLE `cjenik` DISABLE KEYS */;
/*!40000 ALTER TABLE `cjenik` ENABLE KEYS */;

-- Dumping structure for table videoteka.clanovi
CREATE TABLE IF NOT EXISTS `clanovi` (
  `clanski_broj` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `adresa` varchar(50) DEFAULT NULL,
  `telefon` int(20) DEFAULT NULL,
  `datum_uclanjenja` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`clanski_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka.clanovi: ~0 rows (approximately)
/*!40000 ALTER TABLE `clanovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `clanovi` ENABLE KEYS */;

-- Dumping structure for table videoteka.filmovi
CREATE TABLE IF NOT EXISTS `filmovi` (
  `sifra_filma` int(11) unsigned zerofill NOT NULL,
  `naziv` varchar(55) NOT NULL,
  `reziser` varchar(55) NOT NULL,
  `glavni_glumci` varchar(55) DEFAULT NULL,
  `godina_izdanja` date NOT NULL,
  `kolicina_DVD` double DEFAULT NULL,
  `kolicina_VHS` double DEFAULT NULL,
  `slika_naslovnice` varchar(255) DEFAULT NULL,
  `sifra_zanra` int(11) NOT NULL,
  PRIMARY KEY (`sifra_filma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka.filmovi: ~0 rows (approximately)
/*!40000 ALTER TABLE `filmovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `filmovi` ENABLE KEYS */;

-- Dumping structure for table videoteka.posudba
CREATE TABLE IF NOT EXISTS `posudba` (
  `clanski_broj` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sifra_filma` int(11) unsigned NOT NULL,
  `datum_posudbe` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datum_povrata` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sifra_cjenika` int(11) unsigned NOT NULL,
  PRIMARY KEY (`clanski_broj`),
  UNIQUE KEY `sifra_filma` (`sifra_filma`),
  KEY `datum_posudbe` (`datum_posudbe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka.posudba: ~0 rows (approximately)
/*!40000 ALTER TABLE `posudba` DISABLE KEYS */;
/*!40000 ALTER TABLE `posudba` ENABLE KEYS */;

-- Dumping structure for table videoteka.zanr
CREATE TABLE IF NOT EXISTS `zanr` (
  `sifra_zanra` int(11) unsigned NOT NULL,
  `naziv` varchar(55) NOT NULL,
  PRIMARY KEY (`sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka.zanr: ~0 rows (approximately)
/*!40000 ALTER TABLE `zanr` DISABLE KEYS */;
/*!40000 ALTER TABLE `zanr` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
