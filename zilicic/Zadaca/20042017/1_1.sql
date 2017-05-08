/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 19, 2017
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


-- Dumping database structure for tvrtka
CREATE DATABASE IF NOT EXISTS `tvrtka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tvrtka`;

-- Dumping structure for table tvrtka.odjel
CREATE TABLE IF NOT EXISTS `odjel` (
  `sifra_odjela` varchar(50) CHARACTER SET utf8 NOT NULL,
  `naziv_odjela` varchar(77) CHARACTER SET utf8 NOT NULL,
  `lokacija_odjela` varchar(77) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- Dumping data for table tvrtka.odjel: ~4 rows (approximately)
/*!40000 ALTER TABLE `odjel` DISABLE KEYS */;
INSERT INTO `odjel` (`sifra_odjela`, `naziv_odjela`, `lokacija_odjela`) VALUES
	('N01', 'nabava1', 'Nasice'),
	('N02', 'nabava2', 'Osijek'),
	('P01', 'prodaja1', 'Osijek'),
	('P02', 'prodaja2', 'Vinkovci');
/*!40000 ALTER TABLE `odjel` ENABLE KEYS */;

-- Dumping structure for table tvrtka.sefovi
CREATE TABLE IF NOT EXISTS `sefovi` (
  `sifra_odjela` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sifra_zaposlenika` varchar(55) CHARACTER SET utf8 NOT NULL,
  KEY `sef_FK` (`sifra_zaposlenika`),
  KEY `odj_FK` (`sifra_odjela`),
  CONSTRAINT `sef_FK` FOREIGN KEY (`sifra_zaposlenika`) REFERENCES `zaposlenici` (`sifra_zaposlenika`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- Dumping data for table tvrtka.sefovi: ~4 rows (approximately)
/*!40000 ALTER TABLE `sefovi` DISABLE KEYS */;
INSERT INTO `sefovi` (`sifra_odjela`, `sifra_zaposlenika`) VALUES
	('NO1', '3'),
	('NO2', '1'),
	('PO1', '6'),
	('PO2', '2');
/*!40000 ALTER TABLE `sefovi` ENABLE KEYS */;

-- Dumping structure for table tvrtka.zaposlenici
CREATE TABLE IF NOT EXISTS `zaposlenici` (
  `sifra_zaposlenika` varchar(55) CHARACTER SET utf8 NOT NULL,
  `ime` varchar(55) CHARACTER SET utf8 NOT NULL,
  `prezime` varchar(77) CHARACTER SET utf8 NOT NULL,
  `sifra_odjela` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sifra_zaposlenika`),
  KEY `sifra_odjel` (`sifra_odjela`),
  CONSTRAINT `od_FK` FOREIGN KEY (`sifra_odjela`) REFERENCES `odjel` (`sifra_odjela`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- Dumping data for table tvrtka.zaposlenici: ~6 rows (approximately)
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` (`sifra_zaposlenika`, `ime`, `prezime`, `sifra_odjela`) VALUES
	('1', 'Sanja', 'Tarak', 'P02'),
	('2', 'Ana', 'Milic', 'P02'),
	('3', 'Mladen', 'Gork', 'N01'),
	('4', 'Ivan', 'Matkic', 'N01'),
	('5', 'Marina', 'Anic', 'N02'),
	('6', 'Ivica', 'Limac', 'P01');
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
