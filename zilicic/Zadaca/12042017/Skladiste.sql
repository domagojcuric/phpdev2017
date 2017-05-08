/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 11, 2017
 */

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


-- Dumping database structure for skladiste
CREATE DATABASE IF NOT EXISTS `skladiste` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `skladiste`;

-- Dumping structure for table skladiste.proizvod
CREATE TABLE IF NOT EXISTS `proizvod` (
  `sifra_proizvoda` varchar(77) NOT NULL,
  `naziv_proizvoda` varchar(77) NOT NULL,
  `sifra_skladista` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_proizvoda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table skladiste.proizvod: ~2 rows (approximately)
/*!40000 ALTER TABLE `proizvod` DISABLE KEYS */;
INSERT INTO `proizvod` (`sifra_proizvoda`, `naziv_proizvoda`, `sifra_skladista`) VALUES
	('19.10.11.00', 'Mjesavina kolaca', 'VK1'),
	('D-2101', 'Profil za keramicke plocice', 'OS2');
/*!40000 ALTER TABLE `proizvod` ENABLE KEYS */;

-- Dumping structure for table skladiste.skladisno_mjesto
CREATE TABLE IF NOT EXISTS `skladisno_mjesto` (
  `sifra_skladista` varchar(50) NOT NULL,
  `naziv` varchar(77) NOT NULL,
  PRIMARY KEY (`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table skladiste.skladisno_mjesto: ~3 rows (approximately)
/*!40000 ALTER TABLE `skladisno_mjesto` DISABLE KEYS */;
INSERT INTO `skladisno_mjesto` (`sifra_skladista`, `naziv`) VALUES
	('OS1', 'Osijek rezervni dijelovi'),
	('OS2', 'Osijek keramika'),
	('VK1', 'Vinkovci prehrana');
/*!40000 ALTER TABLE `skladisno_mjesto` ENABLE KEYS */;

-- Dumping structure for table skladiste.voditelj
CREATE TABLE IF NOT EXISTS `voditelj` (
  `sifra_zaposlenik` varchar(55) NOT NULL,
  `sifra_skladista` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_zaposlenik`,`sifra_skladista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table skladiste.voditelj: ~0 rows (approximately)
/*!40000 ALTER TABLE `voditelj` DISABLE KEYS */;
INSERT INTO `voditelj` (`sifra_zaposlenik`, `sifra_skladista`) VALUES
	('2809969', 'OS1');
/*!40000 ALTER TABLE `voditelj` ENABLE KEYS */;

-- Dumping structure for table skladiste.zaposlenici
CREATE TABLE IF NOT EXISTS `zaposlenici` (
  `sifra_zaposlenik` varchar(55) NOT NULL,
  `ime` varchar(55) NOT NULL,
  `prezime` varchar(77) NOT NULL,
  `sifra_skladista` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_zaposlenik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table skladiste.zaposlenici: ~0 rows (approximately)
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` (`sifra_zaposlenik`, `ime`, `prezime`, `sifra_skladista`) VALUES
	('1314296', 'Mato', 'Matic', 'OS2'),
	('2809969', 'Zlatko', 'Ilicic', 'OS1'),
	('31121990', 'Ana', 'Milic', 'VK1');
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
