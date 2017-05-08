/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 19, 2017
 */

/* zadatak 3.20.*/
USE fakultet;
SELECT pred.nazPred, orgjed.nazOrgjed, rezervacija.oznDvorana 
FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
JOIN orgjed ON orgjed.sifOrgjed=pred.sifOrgjed;

/* zadatak 3.21.*/
USE fakultet;
SELECT DISTINCT stud.imeStud, stud.prezStud, mjesto.nazMjesto
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrStan
JOIN ispit ON stud.mbrStud=ispit.mbrStud
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE nazPred='Osnove baza podataka' AND ocjena=1;

/* zadatak 3.22.*/
USE fakultet;
SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, mjesto.nazMjesto, zupanija.nazZupanija, pred.nazPred, ispit.ocjena
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
JOIN zupanija ON zupanija.sifZupanija=mjesto.sifZupanija
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN pred ON pred.sifPred=ispit.sifPred
WHERE ocjena=2 OR ocjena=3
ORDER BY nazPred;

/* zadatak 3.23.*/
USE fakultet;
SELECT stud.imeStud, stud.prezStud, 
m.nazMjesto AS 'mjesto rodenja',
z.nazZupanija AS 'zupanija rodenja',
m2.nazMjesto AS 'mjesto boravka',
z2.nazZupanija AS 'zupanija boravka',
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrRod
JOIN zupanija z ON z.sifZupanija=m.sifZupanija
JOIN mjesto m2 ON s.pbrStan=m2.pbr
JOIN zupanija z2 ON z2.sifZupanija=m2.sifZupanija;

/* zadatak 3.24.*/
USE fakultet;
SELECT DISTINCT mjesto.nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan
WHERE stud.pbrStan=stud.pbrRod;

/* zadatak 3.25.*/
USE fakultet;
SELECT DISTINCT nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m1 ON m1.pbr=stud.pbrStan
JOIN mjesto m2 ON m2.pbr=nastavnik.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija;

/* zadatak 3.26.*/
USE fakultet;
SELECT stud.imeStud, stud.prezStud 
FROM stud
JOIN mjesto m1 ON stud.pbrRod=m1.pbr
JOIN mjesto m2 ON stud.pbrStan=m2.pbr
WHERE stud.pbrRod <> stud.pbrStan
AND m1.sifZupanija=m2.sifZupanija;

/* zadatak 3.27.*/
USE fakultet;
SELECT stud.prezStud 
FROM stud, nastavnik
WHERE nastavnik.prezNastavnik=stud.prezStud;
/*ili*/
USE fakultet;
SELECT stud.prezStud 
FROM stud
JOIN nastavnik ON nastavnik.prezNastavnik=stud.prezStud
WHERE nastavnik.prezNastavnik=stud.prezStud;

/*zadatak 4.1*/
USE Upisi_polaznika;
UPDATE tecajevi
SET naziv_tecaja = 'osnove obrade teksta-ms word'
WHERE naziv_tecaja='Microsoft Word';

/*zadatak 4.2*/
USE Upisi_polaznika;
UPDATE upisi
SET sifra_tecaja='O03'
WHERE sifra_polaznika=6;

/*zadatak 4.3*/
USE Upisi_polaznika;
DELETE FROM upisi
WHERE sifra_tecaja='P01';

/*zadatak 4.4*/
USE fakultet;
CREATE TABLE predmetidvorane
SELECT rezervacija.oznDvorana, pred.nazPred, rezervacija.sat FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred;

/*zadatak 4.5*/
USE fakultet;
CREATE VIEW stanovanje AS
SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, mjesto.nazMjesto 
FROM  nastavnik
JOIN mjesto ON nastavnik.pbrStan=mjesto.pbr;


/*zadatak 4.6*/
USE fakultet;
CREATE VIEW prolaznostispita AS
SELECT stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM stud
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN pred ON ispit.sifPred=pred.sifPred
JOIN nastavnik ON ispit.sifNastavnik=nastavnik.sifNastavnik;

/*zadatak 5.1 */
USE fakultet;
SELECT stud.imeStud, stud.prezStud, mjesto.nazMjesto 
FROM stud
JOIN mjesto ON mjesto.pbr=stud.pbrRod
WHERE LEFT(stud.imeStud,1)='F';

/*zadatak 5.2 */
USE fakultet;
SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, mjesto.nazMjesto
FROM nastavnik
JOIN mjesto ON mjesto.pbr=nastavnik.pbrStan
WHERE SUBSTRING(mjesto.nazMjesto,1)='Z';

/*zadatak 5.3 */
USE fakultet;
SELECT stud.imeStud, stud.prezStud, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM stud
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN nastavnik ON ispit.sifNastavnik=nastavnik.sifNastavnik
WHERE 
SUBSTRING(stud.imeStud,5,1)=SUBSTRING(nastavnik.imeNastavnik,5,1);

/*zadatak 5.4 */
USE fakultet;
SELECT zupanija.nazZupanija FROM zupanija
WHERE LENGTH(zupanija.nazZupanija) BETWEEN 13 AND 20;

/*zadatak 5.5 */
USE fakultet;
SELECT stud.imeStud, stud.prezStud 
FROM stud
WHERE DATE_FORMAT(stud.datRodStud,'%M')='May';

/*zadatak 5.6 */
USE fakultet;
SELECT DISTINCT stud.imeStud, stud.prezStud 
FROM stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud
WHERE DAY(ispit.datIspit) BETWEEN 10 AND 20;

/*zadatak 5.7 */
USE fakultet;
SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, m1.nazMjesto,
	stud.imeStud, stud.prezStud, m2.nazMjesto
FROM nastavnik
JOIN ispit ON nastavnik.sifNastavnik=ispit.sifNastavnik
JOIN mjesto m1 ON m1.pbr=nastavnik.pbrStan
JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m2 ON m2.pbr=stud.pbrRod
WHERE MONTH(ispit.datIspit)=6 AND m1.nazMjesto=m2.nazMjesto;