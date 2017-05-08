USE fakultet;

/* Zadatak - 3.2 */

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik FROM fakultet.nastavnik;

/* Zadatak - 3.3 */

SELECT stud.mbrStud,
CONCAT(stud.imeStud, ' ',stud.prezStud)
AS 'Ime i prezime'
FROM stud;

/* Zadatak - 3.4 */

SELECT stud.imeStud
FROM fakultet.stud
ORDER BY stud.imeStud DESC;

/* Zadatak - 3.5 */

SELECT ispit.mbrStud
FROM fakultet.ispit
WHERE ispit.sifPred=146;

/* Zadatak - 3.6 */

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, (koef+0.4)+800
AS 'Plaća'
FROM fakultet.nastavnik;

/* Zadatak - 3.7 */

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, (koef+0.4)+800
AS 'Plaća'
FROM fakultet.nastavnik
WHERE ((koef+0.4)+800<3500) 
OR ((koef+0.4)+800>8000);

/* Zadatak - 3.8 */

SELECT * 
FROM fakultet.stud
WHERE LEFT(stud.imeStud,1) IN ('a','e','i','o','u')
AND RIGHT(stud.imeStud,1) IN ('a','e','i','o','u');

/* Zadatak - 3.9 */

SELECT * 
FROM fakultet.stud
WHERE LEFT(stud.imeStud,1) NOT IN ('a','e','i','o','u')
AND RIGHT(stud.imeStud,1) NOT IN ('a','e','i','o','u');

/* Zadatak - 3.10 */

SELECT * 
FROM fakultet.stud
WHERE LEFT(stud.imeStud,1) IN ('a','e','i','o','u')
AND RIGHT(stud.imeStud,1) IN ('a','e','i','o','u');

/* Zadatak - 3.11 */

SELECT * 
FROM fakultet.stud
WHERE stud.imeStud LIKE '%nk%'
OR stud.prezStud LIKE '%nk%';

/* Zadatak - 3.12-1 */

SELECT stud.imeStud, stud.prezStud
FROM fakultet.stud, fakultet.ispit
WHERE stud.mbrStud = ispit.mbrStud
AND ispit.ocjena=1
AND (ispit.sifPred BETWEEN 220 and 240);

/* Zadatak - 3.12-2 */

SELECT stud.imeStud, stud.prezStud
FROM fakultet.stud
JOIN fakultet.ispit
ON stud.mbrStud = ispit.mbrStud
WHERE ispit.ocjena=1
AND (ispit.sifPred BETWEEN 220 AND 240);

/* Zadatak - 3.13 */

SELECT DISTINCT stud.imeStud, stud.prezStud
FROM fakultet.stud
JOIN fakultet.ispit
ON stud.mbrStud = ispit.mbrStud
WHERE ispit.ocjena=3;

/* Zadatak - 3.14 */

SELECT DISTINCT pred.nazPred
FROM fakultet.pred
JOIN fakultet.ispit
ON ispit.sifPred = pred.sifPred;

/* Zadatak - 3.15-1 */

SELECT DISTINCT pred.nazPred
FROM fakultet.pred
LEFT JOIN fakultet.ispit
ON pred.sifPred = ispit.sifPred
WHERE ispit.datIspit IS NULL
ORDER BY pred.nazPred;

/* Zadatak - 3.15-2 */

SELECT DISTINCT pred.nazPred
FROM fakultet.pred
WHERE pred.nazPred
NOT IN (
SELECT DISTINCT pred.nazPred
FROM fakultet.pred, fakultet.ispit
WHERE ispit.sifPred = pred.sifPred);

/* Zadatak - 3.16 */

SELECT DISTINCT pred.nazPred, rezervacija.oznDvorana
FROM fakultet.pred
LEFT JOIN fakultet.rezervacija
ON pred.sifPred = rezervacija.sifPred
WHERE pred.brojSatiTjedno>2;

/* Zadatak - 3.17 */

SELECT DISTINCT pred.nazPred, orgjed.nazOrgjed, pred.upisanoStud
FROM fakultet.pred
JOIN fakultet.orgjed
ON pred.sifPred=orgjed.sifOrgjed
WHERE pred.upisanoStud>20;

/* Zadatak - 3.18 */

SELECT DISTINCT mjesto.nazMjesto
FROM fakultet.mjesto
JOIN fakultet.stud
ON mjesto.pbr = stud.pbrStan;

/* Zadatak - 3.19 */

SELECT imeStud, prezStud, nazPred, ocjena
FROM fakultet.ispit i
JOIN fakultet.stud s
ON i.mbrStud = s.mbrStud
JOIN fakultet.pred p
ON p.sifPred = i.sifPred;

/* Zadatak - 3.20 */

SELECT pred.nazPred, rezervacija.oznDvorana, orgjed.nazOrgjed
FROM fakultet.pred
JOIN fakultet.rezervacija
ON pred.sifPred = rezervacija.sifPred
JOIN fakultet.orgjed 
ON orgjed.sifOrgjed = pred.sifOrgjed;

/* Zadatak - 3.21 */

SELECT DISTINCT stud.imeStud, stud.prezStud, mjesto.nazMjesto
FROM fakultet.stud
JOIN fakultet.mjesto
ON mjesto.pbr = stud.pbrStan
JOIN fakultet.ispit
ON stud.mbrStud = ispit.mbrStud
JOIN fakultet.pred
ON pred.sifPred = ispit.sifPred
WHERE pred.nazPred = 'Osnove baza podataka'
AND ispit.ocjena=1;

/* Zadatak - 3.22 */

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, mjesto.nazMjesto, zupanija.nazZupanija, pred.nazPred, ispit.ocjena
FROM fakultet.nastavnik
JOIN fakultet.mjesto
ON mjesto.pbr = nastavnik.pbrStan
JOIN fakultet.zupanija
ON zupanija.sifZupanija = mjesto.sifZupanija
JOIN fakultet.ispit
ON ispit.sifNastavnik = nastavnik.sifNastavnik
JOIN fakultet.pred
ON pred.sifPred = ispit.sifPred
WHERE ispit.ocjena=2
OR ispit.ocjena=3
ORDER BY pred.nazPred;

/* Zadatak - 3.23 */

SELECT imeStud, prezStud,
m.nazMjesto AS 'Mjesto rođenja',
z.nazZupanija AS 'Županija rođenja',
m2.nazMjesto AS 'Mjesto Boravka',
z2.nazZupanija AS 'Županija boravka'
FROM fakultet.stud s
JOIN fakultet.mjesto m
ON m.pbr = s.pbrRod
JOIN fakultet.zupanija z
ON z.sifZupanija = m.sifZupanija
JOIN fakultet.mjesto m2
ON s.pbrStan = m2.pbr
JOIN fakultet.zupanija z2
ON z2.sifZupanija = m2.sifZupanija;

/* Zadatak - 3.24 */

SELECT DISTINCT mjesto.nazMjesto
FROM fakultet.mjesto
JOIN fakultet.stud
ON mjesto.pbr = stud.pbrStan
WHERE stud.pbrRod = stud.pbrRod;

/* Zadatak - 3.25 */

SELECT DISTINCT nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM fakultet.nastavnik
JOIN fakultet.ispit
ON ispit.sifNastavnik = nastavnik.sifNastavnik
JOIN fakultet.stud
ON ispit.mbrStud = stud.mbrStud
JOIN fakultet.mjesto m1
ON m1.pbr = stud.pbrStan
JOIN fakultet.mjesto m2
ON m2.pbr = nastavnik.pbrStan
WHERE m1.sifZupanija = m2.sifZupanija;

/* Zadatak - 3.26 */

SELECT stud.imeStud, stud.prezStud
FROM fakultet.stud
JOIN fakultet.mjesto m1
ON stud.pbrRod = m1.pbr
JOIN fakultet.mjesto m2
ON stud.pbrStan = m2.pbr
WHERE stud.pbrRod <> stud.pbrStan
AND m1.sifZupanija = m2.sifZupanija;

/* Zadatak - 3.27 */

SELECT stud.*, nastavnik.*
FROM fakultet.stud, fakultet.nastavnik
WHERE stud.prezStud = nastavnik.prezNastavnik;