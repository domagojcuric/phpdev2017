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


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Dumping structure for table test.table2
CREATE TABLE IF NOT EXISTS `table2` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(55) NOT NULL,
  `prezime` varchar(77) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table test.table2: ~5 rows (approximately)
/*!40000 ALTER TABLE `table2` DISABLE KEYS */;
INSERT INTO `table2` (`ID`, `ime`, `prezime`) VALUES
	(1, 'ana', 'anic'),
	(2, 'mara', 'maric'),
	(3, 'aanaaamarija', 'aaniacka'),
	(6, 'anaamarija', 'aanicka'),
	(7, 'anaaamarija', 'aanicka'),
	(8, 'anaaamarija', 'aaniacka');
/*!40000 ALTER TABLE `table2` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

PREDAVANJA

FOREIGN KEY
ALTER TABLE
-> ADD CONSTRAINT fk_zaposlenici_odjeli FOREIGN KEY

