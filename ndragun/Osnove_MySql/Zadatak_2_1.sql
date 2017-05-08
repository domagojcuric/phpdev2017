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


-- Dumping database structure for tvrtka_zadatak2_1
CREATE DATABASE IF NOT EXISTS `tvrtka_zadatak2_1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tvrtka_zadatak2_1`;

-- Dumping structure for table tvrtka_zadatak2_1.odjeli
CREATE TABLE IF NOT EXISTS `odjeli` (
  `Sifra_odjela` varchar(6) NOT NULL,
  `Naziv_odjela` varchar(50) NOT NULL,
  `Lokacija_odjela` varchar(50) NOT NULL,
  PRIMARY KEY (`Sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table tvrtka_zadatak2_1.odjeli: ~3 rows (approximately)
/*!40000 ALTER TABLE `odjeli` DISABLE KEYS */;
INSERT INTO `odjeli` (`Sifra_odjela`, `Naziv_odjela`, `Lokacija_odjela`) VALUES
	('N01', 'Nabava 1', 'Varaždin'),
	('P01', 'Prodaja 1', 'Zagreb'),
	('P02', 'Prodaja 2', 'Split');
/*!40000 ALTER TABLE `odjeli` ENABLE KEYS */;

-- Dumping structure for table tvrtka_zadatak2_1.sefovi
CREATE TABLE IF NOT EXISTS `sefovi` (
  `Sifra_zaposlenika` int(10) unsigned NOT NULL,
  `Sifra_odjela` varchar(6) NOT NULL,
  PRIMARY KEY (`Sifra_zaposlenika`,`Sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table tvrtka_zadatak2_1.sefovi: ~3 rows (approximately)
/*!40000 ALTER TABLE `sefovi` DISABLE KEYS */;
INSERT INTO `sefovi` (`Sifra_zaposlenika`, `Sifra_odjela`) VALUES
	(2, 'N01'),
	(3, 'P01'),
	(4, 'P02');
/*!40000 ALTER TABLE `sefovi` ENABLE KEYS */;

-- Dumping structure for table tvrtka_zadatak2_1.zaposlenici
CREATE TABLE IF NOT EXISTS `zaposlenici` (
  `Sifra_zaposlenika` int(10) unsigned NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Sifra_odjela` varchar(6) NOT NULL,
  PRIMARY KEY (`Sifra_zaposlenika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table tvrtka_zadatak2_1.zaposlenici: ~6 rows (approximately)
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` (`Sifra_zaposlenika`, `Ime`, `Prezime`, `Sifra_odjela`) VALUES
	(1, 'Ivo', 'Marković', 'P01'),
	(2, 'Marko', 'Anić', 'N01'),
	(3, 'Anita', 'Marić', 'P01'),
	(4, 'Mirjana', 'Galić', 'P02'),
	(5, 'Anita', 'Krivaj', 'P02'),
	(6, 'Matej', 'Fedor', 'N01');
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
