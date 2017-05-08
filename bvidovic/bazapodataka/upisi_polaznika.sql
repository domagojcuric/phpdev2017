CREATE TABLE `polaznici` (
	`sifra_polaznika` INT(11) NOT NULL,
	`ime` VARCHAR(40) NOT NULL,
	`prezime` VARCHAR(40) NOT NULL,
	`mjesto_stanovanja` CHAR(30) NULL DEFAULT NULL,
	PRIMARY KEY (`sifra_polaznika`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto_stanovanja`) VALUES (1, 'Ana', 'Milic', 'Zagreb');
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto_stanovanja`) VALUES (2, 'Sanja', 'Tarak', 'Split');
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto_stanovanja`) VALUES (3, 'Mladen', 'Gork', 'Osijek');
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto_stanovanja`) VALUES (4, 'Ivana', 'Matkic', 'Split');
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto_stanovanja`) VALUES (5, 'Marina', 'Anic', 'Osijek');
INSERT INTO `polaznici` (`sifra_polaznika`, `ime`, `prezime`, `mjesto_stanovanja`) VALUES (6, 'Ivica', 'Limic', 'Split');

CREATE TABLE `tecajevi` (
	`sifra_tecaja` CHAR(3) NOT NULL,
	`naziv_tecaja` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`sifra_tecaja`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES ('N01', 'SQL - osnove');
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES ('O01', 'Racunalni operator - uredsko poslovanje');
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES ('O02', 'Specijalist poslovne primjene racunala');
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES ('O03', 'Graficki dizajner');
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES ('P01', 'Osnove rada PC racunala');
INSERT INTO `tecajevi` (`sifra_tecaja`, `naziv_tecaja`) VALUES ('P02', 'Microsoft Word');

CREATE TABLE `upisi` (
	`sifra_polaznika` INT(11) NOT NULL,
	`sifra_tecaja` CHAR(3) NOT NULL,
	PRIMARY KEY (`sifra_polaznika`, `sifra_tecaja`),
	INDEX `sifra_polaznika` (`sifra_polaznika`),
	INDEX `sifra_tecaja` (`sifra_tecaja`),
	CONSTRAINT `upisi_ibfk_1` FOREIGN KEY (`sifra_polaznika`) REFERENCES `polaznici` (`sifra_polaznika`),
	CONSTRAINT `upisi_ibfk_2` FOREIGN KEY (`sifra_tecaja`) REFERENCES `tecajevi` (`sifra_tecaja`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES (1, 'P01');
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES (2, 'P02');
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES (3, 'N01');
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES (4, 'O01');
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES (5, 'O02');
INSERT INTO `upisi` (`sifra_polaznika`, `sifra_tecaja`) VALUES (6, 'P01');
