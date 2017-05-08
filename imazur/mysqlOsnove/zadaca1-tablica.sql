/* zadatak 2.1

*/

CREATE DATABASE `gbm`;
CREATE TABLE `odjeli` (
	`ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`odjel` VARCHAR(55) NOT NULL,
	`voditelj` VARCHAR(66) NOT NULL,
	PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
;
CREATE TABLE `zaposlenici` (
	`ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`odjel` VARCHAR(55) NOT NULL,
	`ime` VARCHAR(55) NOT NULL,
	`prezime` VARCHAR(77) NOT NULL,
	PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
AUTO_INCREMENT=10
;
CREATE TABLE `voditelji` (
	`ID` INT(11) NOT NULL,
	`ime` VARCHAR(55) NOT NULL,
	`prezime` VARCHAR(79) NOT NULL,
	`odjel` VARCHAR(79) NOT NULL,
    PRIMARY KEY (`ID`)

)
ENGINE=InnoDB
;
INSERT INTO `zaposlenici` (`ID`,`odjel`, `ime`, `prezime`) VALUES

    -> (1, 'market', 'ivo','ivoo'),
    -> (2, 'market', 'pero', 'perin'),
    -> (3, 'market', 'ana', 'anina'),
    -> (4, 'racun', 'eva', 'evina'),
    -> (5, 'sklad', 'simo', 'simic'),
    -> (6, 'sklad', 'kaja', 'katicina'),
    -> (7, 'sklad', 'joka', 'joke'),
    -> (8, 'racun', 'ivan', 'ivin'),
    -> (9, 'market', 'maja', 'majic');

INSERT INTO `voditelji` (`ID`, `ime`, `prezime`, `odjel`) VALUES
    -> (1, 'ivo', 'ivoo', 'market'),
    -> (2, 'kaja', 'katicina', 'sklad'),
    -> (3, 'eva', 'evina', 'racun');

INSERT INTO `odjeli` (`ID`, `odjel`) VALUES
    -> (1, 'market'),
    -> (2, 'racun'),
    -> (3, 'sklad');

--------------------------------------------

/* zadatak 2.2

*/

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE trgovina
Database changed

MariaDB [trgovina]> CREATE TABLE `skladiste1` 
    (`ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    ->  `materijal` VARCHAR(55) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.28 sec)

MariaDB [trgovina]> CREATE TABLE `skladiste2` 
    (`ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    ->  `alat` VARCHAR(55) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.42 sec)

MariaDB [trgovina]> CREATE TABLE `skladiste3` 
    (`ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    ->  `ostalo` VARCHAR(55) NOT NULL,
    ->
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.34 sec)

MariaDB [trgovina]>Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Korisnik>cd..

C:\Users>cd..

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd b
The system cannot find the path specified.

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE trgovina
Database changed
MariaDB [trgovina]> CREATE TABLE `odjeli` (
    ->  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMEN;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MariaDB server version for the right syntax to use near '' a
t line 2
MariaDB [trgovina]> CREATE TABLE `skladiste1` (`ID` INT(10) UNSIGNED NOT NULL AU
TO_INCREMENT,
    ->  `materijal` VARCHAR(55) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.28 sec)

MariaDB [trgovina]> CREATE TABLE `skladiste2` (`ID` INT(10) UNSIGNED NOT NULL AU
TO_INCREMENT,
    ->  `alat` VARCHAR(55) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.42 sec)

MariaDB [trgovina]> CREATE TABLE `skladiste3` (`ID` INT(10) UNSIGNED NOT NULL AU
TO_INCREMENT,
    ->  `ostalo` VARCHAR(55) NOT NULL,
    ->
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.34 sec)

MariaDB [trgovina]> CREATE TABLE `zaposlenici` (
    ->  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    -> `ime` VARCHAR(55) NOT NULL,
    -> `prezime` VARCHAR(77) NOT NULL,
    -> `skladiste` VARCHAR(55) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> )
    -> ENGINE=InnoDB
    -> ;
Query OK, 0 rows affected (0.69 sec)

MariaDB [trgovina]> CREATE TABLE `voditelji` (
    -> `ID` INT(11) NOT NULL,
    -> `skladiste` VARCHAR(79) NOT NULL,
    -> `ime` VARCHAR(55) NOT NULL,
    -> `prezime` VARCHAR(79) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> )
    -> ;
Query OK, 0 rows affected (0.25 sec)


MariaDB [trgovina]> INSERT INTO `zaposlenici` (`ID`, `ime`, `prezime`, `skladist
e`) VALUES
    -> (1, 'ivo','ivoo', 'skladiste1'),
    -> (2, 'maja','aio', 'skladiste1'),
    -> (3, 'eva','evo', 'skladiste1'),
    -> (4, 'simo','evo', 'skladiste2'),
    -> (5, 'rudi','evo', 'skladiste2'),
    -> (6, 'pero','evic', 'skladiste2'),
    -> (7, 'stipo','evic', 'skladiste3'),
    -> (8, 'dodo','ivic', 'skladiste3'),
    -> (9, 'ana','ivic', 'skladiste3');
Query OK, 9 rows affected (0.08 sec)
Records: 9  Duplicates: 0  Warnings: 0

MariaDB [trgovina]>INSERT INTO `voditelji` (`ID`,`skladiste`, `ime`, `prezime`)
 VALUES
    -> (1,'skladiste3', 'ana','ivic'),
    -> (2,'skladiste2', 'pero','evic'),
    -> (3,'skladiste1', 'eva','evo');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

INSERT INTO `skladiste1` (`ID`, `materijal`) VALUES
    -> (1, 'cigle'),
    -> (2, 'blokovi'),
    -> (3, 'crijep'),
    -> (4, 'daska'),
    -> (5, 'greda');
Query OK, 5 rows affected (0.16 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [trgovina]> INSERT INTO `skladiste2` (`ID`, `alat`) VALUES
    -> (1, 'cekic'),
    -> (2, 'busilica'),
    -> (3, 'kutomjer'),
    -> (4, 'klijesta');
Query OK, 4 rows affected (0.05 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [trgovina]> INSERT INTO `skladiste3` (`ID`, `ostalo`) VALUES
    -> (1, 'cavli'),
    -> (2, 'vijci'),
    -> (3, 'ljepilo');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

--------------------------------------------

/*

zadatak 2.3

*/

USE videoteka
Database changed

CREATE TABLE `filmovi` (`oznaka_filma` int(10) unsigned NOT
 NULL AUTO_INCREMENT,
    -> `naziv_filma` varchar(50) NOT NULL,
    -> `zanr` varchar(50) NOT NULL,
    -> `kolicinaDVD` int(50) NOT NULL,
    -> `kolicinaBlueRay` int(50) NOT NULL,
    -> PRIMARY KEY (`oznaka_filma`));

CREATE TABLE `cjenik` (`ID`int(10) unsigned NOT NULL AUTO_I
NCREMENT,
    -> `vrsta` varchar(20) NOT NULL,
    -> `cijena` varchar(20) NOT NULL,
    -> PRIMARY KEY (`ID`)
    -> );

INSERT INTO `cjenik` (`ID`, `vrsta`, `cijena`) VALUES
    -> (1, 'hitBlueRay', '12,00 kn'),
    -> (2, 'hitDVD', '10,00 kn'),
    -> (3, 'BlueRay', '9,00 kn'),
    -> (4, 'DVD', '8,00 kn'),
    -> (5, 'SBlueRay', '5,00 kn'),
    -> (6, 'SDVD', '3,00 kn');
Query OK, 6 rows affected (0.05 sec)

INSERT INTO `filmovi` (`oznaka_filma`, `naziv_filma`, `zanr
`, `kolicinaDVD`, `kolicinaBlueRay`) VALUES
    -> (123, 'ratovi zvijezda', 'sf', 5,5),
    -> (223, 'james bond','akcija', 3, 5),
    -> (323, 'casablanca','drama', 5, 1);


CREATE TABLE `članovi` (
	`clanskiBR` INT(50) NOT NULL AUTO_INCREMENT,
	`ime` VARCHAR(50) NOT NULL,
	`prezime` VARCHAR(50) NOT NULL,
	`adresa` VARCHAR(50) NOT NULL,
	`telefon` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`clanskiBR`)
)
ENGINE=InnoDB
AUTO_INCREMENT=10

CREATE TABLE `žanr` (
	`ID` INT(22) NOT NULL AUTO_INCREMENT,
	`oznaka_filma` INT(22) NOT NULL DEFAULT '0',
	`nazivz` VARCHAR(50) NOT NULL DEFAULT '0',
	PRIMARY KEY (`ID`),
	INDEX `oznaka_filma` (`oznaka_filma`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB

CREATE TABLE `posudba` (
	`ID` INT(20) NOT NULL,
	`clanskiBR` INT(20) NOT NULL,
	`oznaka_filma` INT(20) NOT NULL,
	`datum` DATE NOT NULL,
	`zakasnina` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`ID`),
	INDEX `clanskiBR` (`clanskiBR`),
	INDEX `oznaka_filma` (`oznaka_filma`)
)
ENGINE=InnoDB