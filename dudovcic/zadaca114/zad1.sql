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

-- Dumping structure for table tvrtka.zaposlenici
CREATE TABLE IF NOT EXISTS `zaposlenici` (
  `sifra_zaposlenika` int(5) NOT NULL AUTO_INCREMENT,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(25) NOT NULL,
  `sifra_odjela` varchar(5) NOT NULL,
  PRIMARY KEY (`sifra_zaposlenika`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.zaposlenici: ~3 rows (approximately)
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` (`sifra_zaposlenika`, `ime`, `prezime`, `sifra_odjela`) VALUES
	(1, 'Ivo', 'Markic', 'P01'),
	(2, 'Sanja', 'Tarak', 'N01'),
	(3, 'Mladen', 'Gork', 'P01');
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;

-- Dumping structure for table tvrtka.odjeli
CREATE TABLE IF NOT EXISTS `odjeli` (
  `sifra_odjela` varchar(5) NOT NULL,
  `naziv_odjela` varchar(55) NOT NULL,
  `lokacija_odjela` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.odjeli: ~0 rows (approximately)
/*!40000 ALTER TABLE `odjeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `odjeli` ENABLE KEYS */;

-- Dumping structure for table tvrtka.sefovi
CREATE TABLE IF NOT EXISTS `sefovi` (
  `sifra_odjela` varchar(5) NOT NULL,
  `sifra_zaposlenika` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tvrtka.sefovi: ~0 rows (approximately)
/*!40000 ALTER TABLE `sefovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sefovi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

INSERT INTO `odjeli` (`sifra_odjela`, `naziv_odjela`, `lokacija_odjela`) VALUES
  ('P01', 'Prodaja 1', 'Zagreb'),
  ('N01', 'Nabava 1', 'Varazdin'),
  ('P02', 'Prodaja 2', 'Split');