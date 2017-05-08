CREATE TABLE `odjeli` (
	`Sifra_odjela` CHAR(10) NOT NULL,
	`Naziv_odjela` VARCHAR(50) NOT NULL,
	`Lokacija_odjela` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`Sifra_odjela`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
CREATE TABLE `proizvod` (
	`Sifra_proizvoda` INT(11) NOT NULL,
	`Naziv` CHAR(30) NULL DEFAULT NULL,
	`Sifra_skladista` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`Sifra_proizvoda`),
	INDEX `Sifra_skladista` (`Sifra_skladista`),
	CONSTRAINT `Proizvod_ibfk_1` FOREIGN KEY (`Sifra_skladista`) REFERENCES `skladisno_mjesto` (`Sifra_skladista`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;


