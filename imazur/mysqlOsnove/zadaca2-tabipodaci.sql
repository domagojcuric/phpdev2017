/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 14, 2017
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


-- Dumping database structure for Upisi_polaznika
CREATE DATABASE IF NOT EXISTS `upisi_polaznika` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Upisi_polaznika`;

-- Dumping structure for table Upisi_polaznika.polaznici
CREATE TABLE IF NOT EXISTS `polaznici` (
  `sifra_polaznika` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(50) NOT NULL,
  `pezime` varchar(50) NOT NULL,
  `mjesto_stanovanja` char(25) NOT NULL,
  PRIMARY KEY (`sifra_polaznika`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table Upisi_polaznika.polaznici: ~6 rows (approximately)
/*!40000 ALTER TABLE `polaznici` DISABLE KEYS */;
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `pezime`, `mjesto_stanovanja`) VALUES
	(1, 'ana', 'milic', 'zagreb'),
	(2, 'sanja', 'tarak', 'split'),
	(3, 'mladen', 'gork', 'osijek'),
	(4, 'ivana', 'matkic', 'split'),
	(5, 'marina', 'anic', 'osijek'),
	(6, 'ivica', 'limic', 'osijek');
/*!40000 ALTER TABLE `polaznici` ENABLE KEYS */;

-- Dumping structure for table Upisi_polaznika.tecajevi
CREATE TABLE IF NOT EXISTS `tecajevi` (
  `sifra_tecaja` char(3) NOT NULL,
  `naziv_tecaja` varchar(50) NOT NULL,
  PRIMARY KEY (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Upisi_polaznika.tecajevi: ~6 rows (approximately)
/*!40000 ALTER TABLE `tecajevi` DISABLE KEYS */;
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES
	('001', 'računalno opreator - uredsko poslovaanje'),
	('002', 'specijalist poslovne primjene racunala'),
	('003', 'graficki dizajner'),
	('N01', 'SQL - osnove'),
	('P01', 'osnove rada PC racunala'),
	('P02', 'microsoft word');
/*!40000 ALTER TABLE `tecajevi` ENABLE KEYS */;

-- Dumping structure for table Upisi_polaznika.upisi
CREATE TABLE IF NOT EXISTS `upisi` (
  `sifra_polaznika` int(11) NOT NULL,
  `sifra_tecaja` char(3) NOT NULL,
  PRIMARY KEY (`sifra_polaznika`,`sifra_tecaja`),
  KEY `sifra_polaznika` (`sifra_polaznika`),
  KEY `sifra_tecaja` (`sifra_tecaja`),
  CONSTRAINT `upisi_ibfk_1` FOREIGN KEY (`sifra_polaznika`) REFERENCES `polaznici` (`sifra_polaznika`),
  CONSTRAINT `upisi_ibfk_2` FOREIGN KEY (`sifra_tecaja`) REFERENCES `tecajevi` (`sifra_tecaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table Upisi_polaznika.upisi: ~7 rows (approximately)
/*!40000 ALTER TABLE `upisi` DISABLE KEYS */;
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES
	(1, 'P01'),
	(2, 'P02'),
	(3, 'N01'),
	(4, '001'),
	(5, '002'),
	(6, 'P01');



/*zadatak 3.2.*/
USE fakultet;
SELECT imeNastavnik, prezNastavnik 
FROM nastavnik;

/*zadatak 3.3.*/
USE fakultet;
SELECT mbrStud,
CONCAT (imeStud, ' ', prezStud) AS 'ime i prezime'
FROM stud;

/*zadatak 3.4.*/
USE fakultet;
SELECT DISTINCT imeStud
FROM stud
ORDER BY imeStud DESC;

/*zadatak 3.5.*/
USE fakultet;
SELECT mbrStud FROM ispit
WHERE sifPred=146;

/*zadatak 3.6.*/
USE fakultet;
SELECT imeNastavnik, prezNastavnik,
(koef+0.4)*800 AS 'placa'
FROM nastavnik;

/*zadatak 3.7.*/
USE fakultet;
SELECT imeNastavnik, prezNastavnik,
(koef+0.4)*800 AS 'placa'
FROM nastavnik
WHERE ((koef+0.4)*800<3500) OR ((koef+0.4)*800>8000);

/*zadatak 3.8.*/
USE fakultet;
SELECT *
FROM stud
WHERE LEFT(imeSTUD,1) IN ('a', 'e', 'i', 'o', 'u')
AND RIGHT(imeSTUD,1) IN ('a', 'e', 'i', 'o', 'u')

/*zadatak 3.9.*/
USE fakultet;
SELECT *
FROM stud
WHERE LEFT(imeSTUD,1) NOT IN ('a', 'e', 'i', 'o', 'u')
AND RIGHT(imeSTUD,1) NOT IN ('a', 'e', 'i', 'o', 'u');

/*zadatak 3.10.*/
USE fakultet;
SELECT *
FROM stud
WHERE LEFT(imeSTUD,1) IN ('a', 'e', 'i', 'o', 'u')
AND RIGHT(imeSTUD,1) IN ('a', 'e', 'i', 'o', 'u');

/*zadatak 3.11.*/
USE fakultet;
SELECT * FROM stud
WHERE imeStud LIKE '%nk%'
OR prezStud LIKE '%nk%';
/*!40000 ALTER TABLE `upisi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
