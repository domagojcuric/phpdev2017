/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 19, 2017
 */

/*3.2
imena i prezimena nastavnika
*/
USE fakultet;
SELECT imeNastavnik, prezNastavnik FROM nastavnik;
/*
3.3
maticni broj, imei prezime svih studenata.
Ime i prezime zajedno u jednom stupcu
 */
 USE fakultet;
SELECT mbrStud, CONCAT(imeStud,' ',prezStud) AS 'Ime i prezime' FROM stud;
/*
3.4
sva imena studenata tako da se ni jedno ne pojavi dva puta.
Sortirati silazno po abecedi
 */

SELECT  imeStud FROM stud GROUP BY imeStud  ORDER BY imeStud DESC;

/*
3.5
maticni brojevi studenata koji su polozili ispit iz predmeta sa sifrom 146
 */
SELECT mbrStud FROM ispit WHERE sifPred=146;

/*
3.6
imena i prezimena nastavnika,njihovu placu dobivenu formulom:(koeficijent+0.4)*800
 */
SELECT imeNastavnik, prezNastavnik, (koef+0.4)*800 AS 'Placa' FROM nastavnik;

/*
3.7
imena i prezimena nastavnika iz predhodnog zadatka koji imaju placu manju od3500 ili vecu od 8000
 */
SELECT imeNastavnik, prezNastavnik, (koef+0.4)*800 AS 'Placa' FROM nastavnik
 WHERE ((koef+0.4)*800<3500) OR ((koef+0.4)*800>8000);

 /*
3.8
podatke o studentima cije ime pocinje i zavrsava samoglasnicima
 */
 
 SELECT * FROM stud WHERE LEFT(imeStud,1) IN ('a','e','i','o','u')
AND RIGHT(imeStud,1) IN ('a','e','i','o','u');
/*
3.9
sve podatke o studentima kojima ime pocinje i zavrsava bilo kojim znakom osim samoglasnikom
 */
SELECT * FROM stud WHERE LEFT(imeStud,1) NOT IN ('a','e','i','o','u')
AND RIGHT(imeStud,1) NOT IN ('a','e','i','o','u');

/*
3.10
 sve podatke o studentima kojima ime ili prezime  bilo gdje sadrzi slova "n" i "k" jedno iza drugog
 */

SELECT * FROM stud WHERE imeStud LIKE '%nk%' OR prezStud LIKE '%nk%';

/*
3.11
 */
 
 SELECT nazPred
 FROM pred
 WHERE nazPred NOT IN (SELECT DISTINCT nazPred FROM pred, ispit
 WHERE ispit.sifPred=pred.sifPred);
 
 /*
Zadatak 3.12
imena i prezimena studenata koji su pali na ispitu, barem jednom iz predmenta sa siframa od 220 do 240
*/

SELECT
stud.imeStud,
stud.prezStud
FROM stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud
WHERE ocjena=1
AND ispit.sifPred BETWEEN 220 AND 240
; 

/*
Zadatak 3.13
imena i prezimena studenata koji su na nekom ispitu dobili 3
*/

SELECT DISTINCT stud.imeStud,stud.prezStud
FROM stud JOIN ispit
ON stud.mbrStud=ispit.mbrStud
WHERE ocjena=3
;

/*
Zadatak 3.14
nazivi predmeta na koje je izasao barem jedan student
*/

SELECT DISTINCT pred.nazPred
FROM pred JOIN ispit
ON ispit.sifPred=pred.sifPred
;

/*
Zadatak 3.15
nazivi predmeta na koje ni jedan student nije izasao
*/

SELECT DISTINCT pred.nazPred
FROM pred LEFT JOIN ispit
ON pred.sifPred=ispit.sifPred
WHERE ispit.datIspit IS NULL
ORDER BY pred.nazPred
;
/* Rjesenje 2
*/

SELECT pred.nazPred
FROM pred
 WHERE pred.nazPred
 NOT IN (SELECT DISTINCT pred.nazPred
FROM pred,ispit
WHERE ispit.sifPred=pred.sifPred)
;


/*
Zadatak 3.16
ispisi oznake dvorana i nazivi kolegija za kolegije koji imaju vise od 2 sata predavanja
*/

SELECT pred.nazPred,rezervacija.oznDvorana
FROM pred
LEFT JOIN rezervacija
ON pred.sifPred=rezervacija.sifPred
WHERE pred.brojSatiTjedno >2 
;

/* Zadatak 3.17
ispisi nazive predmeta i organizacijske jedinice kojima pripadaju za one kolegije 
koji imaju vise od 20 upisanih studenata
*/

SELECT pred.nazPred,orgjed.nazOrgjed, pred.upisanoStud
FROM pred
JOIN orgjed
ON pred.sifOrgjed=orgjed.sifOrgjed
WHERE pred.upisanoStud >20
;

/* Zadatak 3.18
ispisi sve nazive  mjesta u kojima barem jedan student stanuje.
Imena mjesta smiju se pojaviti samo jednom
*/

SELECT DISTINCT mjesto.nazMjesto
FROM mjesto
JOIN stud 
ON mjesto.pbr=stud.pbrStan
;

/* Zadatak 3.19
ispisi ime i prezime studenta, naziv i ocjenu za svaki ispit
*/

SELECT stud.imeStud,stud.prezStud, pred.nazPred,ispit.ocjena
FROM ispit
JOIN stud
ON ispit.mbrStud=stud.mbrStud
JOIN pred
ON ispit.sifPred=pred.sifPred
;
/* Zadatak 3.20
nazivi kolegija i oznake dvorana u kojima imaju rezervirane 
termine i nazivi organizacijskih jedinica kojima pripada
*/
SELECT pred.nazPred, rezervacija.oznDvorana,orgjed.nazOrgjed
FROM pred
JOIN rezervacija on rezervacija.sifPred=pred.sifPred
JOIN orgjed ON orgjed.sifOrgjed=pred.sifOrgjed
;

/* Zadatak 3.21
podaci o studentima i njihovim mjestima stanovanja za studente koji su barem jednom 
pali na ispitu"Osnove baze podataka"
*/
SELECT DISTINCT stud.imeStud,stud.prezStud,mjesto.nazMjesto
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrStan
JOIN ispit ON stud.mbrStud=ispit.mbrStud
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE pred.nazPred='Osnove baza podataka' AND ispit.ocjena=1
;

/* Zadatak 3.22
ime i prezime nastavnika, mjesto stanovanja i zupanija nastavnika te naziv kolegija za nastavnike koji su ispitivali
studente koji su dobili ocjenu 2ili3 iz tog  kolegija
*/
SELECT 
nastavnik.imeNastavnik,
nastavnik.prezNastavnik,
mjesto.nazMjesto,
zupanija.nazZupanija,
pred.nazPred
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
JOIN zupanija ON zupanija.sifZupanija=mjesto.sifZupanija
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE ispit.ocjena=2 OR ispit.ocjena=3
ORDER BY pred.nazPred
;
/* Zadatak 3.23
ime i prezime studenata, mjesto i zupanija rodjenja.
Nakon toga mjesto i zupanija stanovanja
*/
USE fakultet;
SELECT stud.imeStud,stud.prezStud,
m.nazMjesto AS 'Mjesto rođenja',
z.nazZupanija AS 'Županija rođenja',
m2.nazMjesto AS 'Mjesto boravka',
z2.nazZupanija AS 'Županija boravka'
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrRod 
JOIN zupanija z ON z.sifZupanija =m.sifZupanija 
JOIN mjesto m2 ON s.pbrStan=m2.pbr 
JOIN zupanija z2 ON z2.sifZupanija=m2.sifZupanija 
;

/* Zadatak 3.24
nazive mjesta u kojima je barem jedan student i rođen i stanuje.Imena se smiju pojaviti samo jednom
*/
SELECT DISTINCT mjesto.nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan
WHERE stud.pbrStan=stud.pbrRod
;

/* Zadatak 3.25
podatke o nastavnicima koji su ispitivali studente koji stanuju u istoj 
zupaniji u kojoj stanuje i nastavnik
*/

SELECT nastavnik.imeNastavnik,nastavnik.prezNastavnik
FROM nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m1 ON m1.pbr=stud.pbrStan
JOIN mjesto m2 ON m2.pbr=nastavnik.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija
;
/* Zadatak 3.26
podatke o studentima koji studiraju u mjestu razlicitom od mjesta rodjenja
ali koje se nalazi u istoj zupaniji u kojoj su i rodjeni
*/
SELECT stud.imeStud,stud.prezStud
FROM stud
JOIN mjesto m ON stud.pbrRod=m.pbr
JOIN mjesto m2 ON stud.pbrStan=m2.pbr
WHERE stud.pbrRod<> stud.pbrStan
AND m.sifZupanija=m2.sifZupanija
;

/* Zadatak 3.27
podatke o studentima i nastavnicima koji imaju ista prezimena
*/
SELECT stud.*,nastavnik.*
FROM stud,nastavnik
WHERE stud.prezStud=nastavnik.prezNastavnik
;

/* Zadatak 4.1
u bazi Upisi_polaznika u tablici Tecajevi promjeniti naziv tecaja
PO2 iz Microsoft Word u Osnove obrade teksta-MS Word.
*/
USE Upisi_polaznika;
UPDATE tecajevi
SET naziv_tecaja='Osnove obrade teksta-MS Word'
WHERE naziv_tecaja='Microsoft Word'
;

/* Zadatak 4.2
u tablici Upisi za polaznika sa sifrom 6 promjenite sifru tecaja u O03
*/
use Upisi_polaznika;
UPDATE upisi
SET sifra_tecaja='O03'
WHERE sifra_polaznika=6
;

/* Zadatak 4.3
iz tablice upisi izbrisati sve zapise gdje je sifra tecaja P01
*/
USE Upisi_polaznika;
DELETE FROM upisi 
WHERE sifra_tecaja='P01'
;
/* Zadatak 4.4
u bazi fakultet kreirati novu tablicu PredmetiDvorane u kojoj cemo imati informacije o predmetima
i dvoranama u kojima se odrzavaju predavanja
*/

USE fakultet;
CREATE TABLE PredmetiDvorane
SELECT oznDvorana, nazPred, sat
FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
;

/* Zadatak 4.5
kreirati pogled Stanovanje koji ispisuje imena i prezimena nastavnika 
s nazivom mjesta u kojem stanuju
*/
USE fakultet;
CREATE VIEW Stanovanje AS
SELECT
 nastavnik.imeNastavnik,
 nastavnik.prezNastavnik,
 mjesto.nazMjesto
FROM nastavnik
JOIN mjesto ON nastavnik.pbrStan=mjesto.pbr
;
SELECT * FROM Stanovanje;
/* Zadatak 4.6
kreirati pogled ProlaznostIspita koji ispisuje ime ,prezime studenata,
naziv i ocjenu za svaki ispit, te ime i prezime profesora koji je odrzao ispit
*/
USE fakultet;
CREATE VIEW ProlaznostIspita AS
SELECT
stud.imeStud,
stud.prezStud,
pred.nazPred,
ispit.ocjena,
nastavnik.imeNastavnik,
nastavnik.prezNastavnik
FROM stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud
JOIN nastavnik ON nastavnik.sifNastavnik=ispit.sifNastavnik
JOIN pred ON pred.sifPred=ispit.sifPred
;
SELECT * FROM Prolaznostispita;

/* Zadatak 5.1
ime i prezime, mjesto rodjenja studenata kojima ime pocinje slovom F

*/

SELECT 
stud.imeStud,
stud.prezStud,
mjesto.nazMjesto
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrRod
WHERE LEFT (stud.imeStud,1)='F'
;
/* verzija2 */
SELECT 
stud.imeStud,
stud.prezStud,
mjesto.nazMjesto
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrRod
WHERE stud.imeStud LIKE 'F%'
;

/* Zadatak 5.2
ime i prezime nastavnika koji zivi u mjestu koje na trecem mjestu ima slovo Z
*/

SELECT
nastavnik.imeNastavnik,
nastavnik.prezNastavnik
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
WHERE SUBSTRING (mjesto.nazMjesto,3,1)='Z'
;

/* Zadatak 5.3
ime i prezime studenta te ime i prezime nastavnika koji u imenu na petom mjestu imaju isto slovo
*/

SELECT
stud.imeStud,
stud.prezStud,
nastavnik.imeNastavnik,
nastavnik.prezNastavnik
FROM stud
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN nastavnik ON ispit.sifNastavnik=nastavnik.sifNastavnik
WHERE SUBSTRING (stud.imeStud,5,1)=SUBSTRING(nastavnik.imeNastavnik,5,1)
; 

/* Zadatak 5.4
nazivi zupanija kojima je duljina imena duza od 13 znakova a kraca od20 
*/
SELECT zupanija.nazZupanija
FROM zupanija
WHERE LENGTH(zupanija.nazZupanija) BETWEEN 13 AND 20
;

/* Zadatak 5.5
ime i prezime studenata  koji su rodjeni u svibnju 
*/

SELECT
stud.imeStud,
stud.prezStud,
stud.datRodStud
FROM stud
WHERE DATE_FORMAT(stud.datRodStud,'%M')='May'
;
/* Rjesenje 2*/
SELECT
stud.imeStud,
stud.prezStud
FROM stud
WHERE MONTH(stud.datRodStud)=5
;
/* Zadatak 5.6
ime i prezime studenata  koji su na ispit izasli
izmedju 10 i 20 u mjesecu
*/
SELECT
stud.imeStud,
stud.prezStud
FROM stud
JOIN ispit ON ispit.mbrStud=stud.mbrStud
WHERE DAY (ispit.datIspit) BETWEEN 10 AND 20
;

/* Zadatak 5.7
podaci o nastavnicima koji su u lipnju ispitivali studente cije je mjesto rodjenja isto mjestu nastavnikovog
stanovanja.Ispisati ime i prezime nastavnika, naziv mjesta u kojem stanuje, ime i prezime studenta te naziv
mjesta u kojem je rodjen
*/
SELECT
nastavnik.imeNastavnik,
nastavnik.prezNastavnik,
m1.nazMjesto,
stud.imeStud,
stud.prezStud,
m2.nazMjesto
FROM nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN mjesto m1 ON m1.pbr=nastavnik.pbrStan
JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m2 ON m2.pbr=stud.pbrRod
WHERE MONTH(ispit.datIspit)=6 AND m1.nazMjesto=m2.nazMjesto
;
