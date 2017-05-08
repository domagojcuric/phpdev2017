-- zad 3.2:
use fakultet;

SELECT imeNastavnik, prezNastavnik
FROM nastavnik;

-- zad 3.3:
use fakultet;

 select mbrStud,
concat (imeStud,'',prezStud) as 'ime i prezime' from stud;

-- zad 3.4:
select distinct imeStud from stud order by imeStud desc;

-- zad 3.5:
select mbrStud from ispit where sifPred=146;

-- zad 3.6:
select imeNastavnik, prezNastavnik (koef + 0.4)*800 as 'placa' from nastavnik;

-- zad 3.7:
select imeNastavnik, prezNastavnik (koef + 0.4)*800 as 'placa' from nastavnik where 
((koef + 0.4)*800 < 3500) or ((koef + 0.4)*800 > 8000);

-- zad 3.8:
select * from student where left (imeStud,1) in ('a','e','i','o','u')
and right (imeStud,1) in ('a','e','i','o','u');

-- zad 3.9:
select * from stud where left (imeStud,1) not in ('a','e','i','o','u')
and  right (imeStud,1) not in ('a','e','i','o','u');

-- zad 3.10:
select * from stud where left (imeStud,1) in ('a','e','i','o','u')
or right (imeStud,1) in ('a','e','i','o','u');

-- zad 3.11;
select * from stud where imeStud like '%nk%' or prezStud like '%nk%';


CREATE DATABASE  `fakultet` 
  USE `fakultet`;

  CREATE TABLE  `dvorana` (
  `oznDvorana` char(5) NOT NULL,
  `kapacitet` int(11) NOT NULL,
  PRIMARY KEY (`oznDvorana`);
  
 
 
  CREATE TABLE  `ispit` (
  `mbrStud` int(11) NOT NULL,
  `sifPred` int(11) NOT NULL,
  `sifNastavnik` int(11) NOT NULL,
  `datIspit` datetime NOT NULL,
  `ocjena` smallint(6) NOT NULL,
  KEY `FK_stud` (`mbrStud`),
  KEY `FK_nast` (`sifNastavnik`),
  KEY `FK_pred` (`sifPred`);
  ALTER TABLE ispit
  ADD CONSTRAINT `FK_nast` FOREIGN KEY (`sifNastavnik`) REFERENCES `nastavnik` (`sifNastavnik`),
  ADD CONSTRAINT `FK_pred` FOREIGN KEY (`sifPred`) REFERENCES `pred` (`sifPred`) ,
  ADD CONSTRAINT `FK_stud` FOREIGN KEY (`mbrStud`) REFERENCES `stud` (`mbrStud`) ;
 
 
 
 INSERT INTO `ispit` (`mbrStud`, `sifPred`, `sifNastavnik`, `datIspit`, `ocjena`) VALUES
 	(123456, 150, 1, '2017-04-14 10:10:52', 4),
 	(234567, 121, 2, '2017-04-14 11:12:06', 5),
        (345678, 161, 3, '2017-04-14 09:12:06', 3);
 
 
 
 CREATE TABLE  `mjesto` (
   `pbr` int(11) NOT NULL,
   `nazMjesto` char(40) NOT NULL,
   `sifZupanija` smallint(6) NOT NULL,
   PRIMARY KEY (`pbr`),
   KEY `FK_zupanija` (`sifZupanija`);
   ALTER TABLE mjesto
   ADD CONSTRAINT `FK_zupanija` FOREIGN KEY (`sifZupanija`) REFERENCES `zupanija` (`sifZupanija`);
   
 

 INSERT INTO `mjesto` (`pbr`, `nazMjesto`, `sifZupanija`) VALUES
 	(31000, 'Osijek', 31),
 	(21000, 'Split', 21),
        (32000, 'Vukovar', 21);

 

 CREATE TABLE  `nastavnik` (
   `sifNastavnik` int(11) NOT NULL,
   `imeNastavnik` char(25) NOT NULL,
   `prezNastavnik` char(25) NOT NULL,
   `pbrStan` int(11) NOT NULL,
   `sifOrgjed` int(11) NOT NULL,
   `koef` decimal(3,2) NOT NULL,
  PRIMARY KEY (`sifNastavnik`),
   KEY `FK_mje` (`pbrStan`),
   KEY `FK_orgjed` (`sifOrgjed`);
  ALTER TABLE nastavnik
  ADD CONSTRAINT `FK_mje` FOREIGN KEY (`pbrStan`) REFERENCES `mjesto` (`pbr`),
  ADD CONSTRAINT `FK_orgjed` FOREIGN KEY (`sifOrgjed`) REFERENCES `orgjed` (`sifOrgjed`);
  
 

 INSERT INTO `nastavnik` (`sifNastavnik`, `imeNastavnik`, `prezNastavnik`, `pbrStan`, `sifOrgjed`, `koef`) VALUES
 	(1, 'Marko', 'Matic', 31000, 1, 1.95),
 	(2, 'Stjepan', 'Leko', 21000, 1, 1.75),
        (3, 'Ana', 'Anic', 32000, 1, 2.50);

  CREATE TABLE  `orgjed` (
  `sifOrgjed` int(11) NOT NULL,
  `nazOrgjed` char(60) NOT NULL,
  `sifNadorgjed` int(11) NOT NULL,
  PRIMARY KEY (`sifOrgjed`);
 
 
 
 INSERT INTO `orgjed` (`sifOrgjed`, `nazOrgjed`, `sifNadorgjed`) VALUES
 	(1, 'Biologija', 2),
 	(2, 'Kemija', 2),
        (3, 'Fizika', 2);

 

 CREATE TABLE  `pred` (
  `sifPred` int(11) NOT NULL,
  `kratPred` char(8) NOT NULL,
  `nazPred` char(60) NOT NULL,
  `sifOrgjed` int(11) NOT NULL,
  `upisanoStud` int(11) NOT NULL,
  `brojSatiTjedno` int(11) NOT NULL,
   PRIMARY KEY (`sifPred`),
   KEY `FKOrgJed2` (`sifOrgjed`);
   ALTER TABLE pred
   ADD CONSTRAINT `FKOrgJed2` FOREIGN KEY (`sifOrgjed`) REFERENCES `orgjed` (`sifOrgjed`);
  
  
  INSERT INTO `pred` (`sifPred`, `kratPred`, `nazPred`, `sifOrgjed`, `upisanoStud`, `brojSatiTjedno`) VALUES
 	(120, 'BIO', 'Uvod u biologiju', 2, 10, 4),
 	(130, 'KEM', 'Uvod u kemiju', 2, 15, 6),
        (140, 'FIZ', 'Uvod u fiziku', 2, 20, 8);


  CREATE TABLE  `rezervacija` (
  `oznDvorana` char(5) NOT NULL,
  `oznVrstaDan` char(2) NOT NULL,
  `sat` smallint(6) NOT NULL,
  `sifPred` int(11) NOT NULL,
  KEY `FK_dvor` (`oznDvorana`),
  KEY `FK_pred2` (`sifPred`);
  ALTER TABLE rezervacija
  ADD CONSTRAINT `FK_dvor` FOREIGN KEY (`oznDvorana`) REFERENCES `dvorana` (`oznDvorana`),
  ADD CONSTRAINT `FK_pred2` FOREIGN KEY (`sifPred`) REFERENCES `pred` (`sifPred`);
 

  CREATE TABLE  `stud` (
  `mbrStud` int(11) NOT NULL,
  `imeStud` char(25) NOT NULL,
  `prezStud` char(25) NOT NULL,
  `pbrRod` int(11) NOT NULL,
  `pbrStan` int(11) NOT NULL,
  `datRodStud` date NOT NULL,
  `jmbgStud` char(13) NOT NULL,
  PRIMARY KEY (`mbrStud`),
  KEY `FK_pbr` (`pbrStan`),
  KEY `FK_pbr2` (`pbrRod`);
  ALTER TABLE  stud
  ADD CONSTRAINT `FK_pbr` FOREIGN KEY (`pbrStan`) REFERENCES `mjesto` (`pbr`),
  ADD CONSTRAINT `FK_pbr2` FOREIGN KEY (`pbrRod`) REFERENCES `mjesto` (`pbr`);
 


INSERT INTO `stud` (`mbrStud`, `imeStud`, `prezStud`, `pbrRod`, `pbrStan`, `datRodStud`, `jmbgStud`) VALUES
	(124578, 'Mijo', 'Mijic', 31000, 32564, '1995-08-11', '3546564538263'),
	(346790, 'Ante', 'Marulic', 32000, 32564, '1996-05-18','1608977300066'),
        (452312, 'Denis', 'Ret', 21000, 32564, '1997-07-20', '4564739992333');

 CREATE TABLE `zupanija` (
  `sifZupanija` smallint(6) NOT NULL,
  `nazZupanija` char(40) NOT NULL,
  PRIMARY KEY (`sifZupanija`);
  
 

 INSERT INTO `zupanija` (`sifZupanija`, `nazZupanija`) VALUES
 	(21, 'Splitsko-dalmatinska zupanija'),
 	(31, 'Osjecko-baranjska zupanija'),
 	(32, 'Vukovarsko-srijemska zupanija');