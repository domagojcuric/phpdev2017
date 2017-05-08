USE fakultet;

/* Zadatak - 5.1-1 */

SELECT stud.imeStud, stud.prezStud, mjesto.nazMjesto
FROM fakultet.stud
JOIN fakultet.mjesto
ON mjesto.pbr = stud.pbrRod
WHERE LEFT (stud.imeStud,1) = 'F';

/* Zadatak - 5.1-2 */

SELECT stud.imeStud, stud.prezStud, mjesto.nazMjesto
FROM fakultet.stud
JOIN fakultet.mjesto
ON mjesto.pbr = stud.pbrRod
WHERE stud.imeStud LIKE 'F%';

/* Zadatak - 5.3 */

SELECT stud.imeStud, stud.prezStud, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM fakultet.stud
JOIN fakultet.ispit
ON ispit.mbrStud = stud.mbrStud
JOIN nastavnik
ON ispit.sifNastavnik = nastavnik.sifNastavnik
WHERE SUBSTRING(stud.imeStud,5,1) = SUBSTRING(nastavnik.imeNastavnik,5,1);

/* Zadatak - 5.4 */

SELECT zupanija.nazZupanija
FROM fakultet.zupanija
WHERE LENGTH(zupanija.nazZupanija)
BETWEEN 13
AND 20;

/* Zadatak - 5.5-1 */

SELECT stud.imeStud, stud.prezStud
FROM fakultet.stud
WHERE DATE_FORMAT(stud.datRodStud, '%M') = 'May';

/* Zadatak - 5.5-2 */

SELECT stud.imeStud, stud.prezStud
FROM fakultet.stud
WHERE MONTH(stud.datRodStud)=5;

/* Zadatak - 5.6 */

SELECT DISTINCT stud.imeStud, stud.prezStud
FROM fakultet.stud
JOIN fakultet.ispit
ON stud.mbrStud = ispit.mbrStud
WHERE DAY(ispit.datIspit)
BETWEEN 10
AND 20;

/* Zadatak - 5.7 */

SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, m1.nazMjesto, stud.imeStud, stud.prezStud, m2.nazMjesto
FROM fakultet.nastavnik
JOIN fakultet.ispit
ON ispit.sifNastavnik = nastavnik.sifNastavnik
JOIN fakultet.mjesto m1
ON m1.pbr = nastavnik.pbrStan
JOIN fakultet.stud
ON stud.mbrStud = ispit.mbrStud
JOIN fakultet.mjesto m2
ON m2.pbr = stud.pbrRod
WHERE MONTH(ispit.datIspit)=6
AND m1.nazMjesto = m2.nazMjesto;