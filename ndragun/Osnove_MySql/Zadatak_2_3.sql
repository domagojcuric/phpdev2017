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


-- Dumping database structure for videoteka_2_3
CREATE DATABASE IF NOT EXISTS `videoteka_2_3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `videoteka_2_3`;

-- Dumping structure for table videoteka_2_3.cjenik
CREATE TABLE IF NOT EXISTS `cjenik` (
  `Sifra_cjenika` int(10) unsigned NOT NULL,
  `Kategorija` varchar(50) NOT NULL,
  `Cijena` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Sifra_cjenika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka_2_3.cjenik: ~5 rows (approximately)
/*!40000 ALTER TABLE `cjenik` DISABLE KEYS */;
INSERT INTO `cjenik` (`Sifra_cjenika`, `Kategorija`, `Cijena`) VALUES
	(1, 'Hit DVD', 30),
	(2, 'DVD', 20),
	(3, 'Hit VHS', 25),
	(4, 'VHS', 15),
	(5, 'Stari VHS', 10);
/*!40000 ALTER TABLE `cjenik` ENABLE KEYS */;

-- Dumping structure for table videoteka_2_3.clanovi
CREATE TABLE IF NOT EXISTS `clanovi` (
  `Clanski_broj` int(10) unsigned NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Adresa` varchar(50) NOT NULL,
  `Telefon` varchar(50) NOT NULL,
  `Datum_uclanjenja` date NOT NULL,
  PRIMARY KEY (`Clanski_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka_2_3.clanovi: ~0 rows (approximately)
/*!40000 ALTER TABLE `clanovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `clanovi` ENABLE KEYS */;

-- Dumping structure for table videoteka_2_3.filmovi
CREATE TABLE IF NOT EXISTS `filmovi` (
  `Sifra_filma` int(10) unsigned NOT NULL,
  `Naziv` varchar(50) NOT NULL,
  `Reziser` varchar(50) NOT NULL,
  `Glavni_glumci` varchar(50) NOT NULL,
  `Godina_izdanja` year(4) NOT NULL,
  `Kolicina_DVD` int(11) NOT NULL,
  `Kolicina_VH5` int(11) NOT NULL,
  `Slika_naslovnice` varbinary(50) NOT NULL,
  `Sifra_zanra` int(11) NOT NULL,
  PRIMARY KEY (`Sifra_filma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka_2_3.filmovi: ~0 rows (approximately)
/*!40000 ALTER TABLE `filmovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `filmovi` ENABLE KEYS */;

-- Dumping structure for table videoteka_2_3.posudba
CREATE TABLE IF NOT EXISTS `posudba` (
  `Clanski_broj` int(10) unsigned NOT NULL,
  `Sifra_filma` int(10) unsigned NOT NULL,
  `Datum_posudbe` int(10) unsigned NOT NULL,
  `Datum_povrata` date NOT NULL,
  `Sifra_cjenika` int(11) NOT NULL,
  PRIMARY KEY (`Clanski_broj`,`Sifra_filma`,`Datum_posudbe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka_2_3.posudba: ~0 rows (approximately)
/*!40000 ALTER TABLE `posudba` DISABLE KEYS */;
/*!40000 ALTER TABLE `posudba` ENABLE KEYS */;

-- Dumping structure for table videoteka_2_3.zanr
CREATE TABLE IF NOT EXISTS `zanr` (
  `Sifra_zanra` int(10) unsigned NOT NULL,
  `Naziv` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_zanra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table videoteka_2_3.zanr: ~0 rows (approximately)
/*!40000 ALTER TABLE `zanr` DISABLE KEYS */;
/*!40000 ALTER TABLE `zanr` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
