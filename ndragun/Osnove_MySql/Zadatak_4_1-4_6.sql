USE Upisi_polaznika;

/* Zadatak - 4.1 */

UPDATE Upisi_polaznika.tecajevi
SET tecajevi.naziv_tecaja = 'Osnove obrade teksta - MS Word'
WHERE tecajevi.naziv_tecaja = 'Microsoft Word';

/* Zadatak - 4.2 */

UPDATE Upisi_polaznika.upisi
SET upisi.sifra_tecaja = 'O03'
WHERE upisi.sifra_polaznika = 6;

/* Zadatak - 4.3 */

DELETE FROM Upisi_polaznika.upisi
WHERE upisi.sifra_tecaja = 'P01';

/* Zadatak - 4.4 */

USE fakultet;

CREATE TABLE PredmetiDvorane
SELECT fakultet.rezervacija.oznDvorana, fakultet.pred.nazPred, fakultet.rezervacija.sat
FROM fakultet.pred
JOIN fakultet.rezervacija
ON fakultet.pred.sifPred = fakultet.rezervacija.sifPred;

/* Zadatak - 4.5 */

CREATE VIEW Stanovanje_view AS
SELECT nastavnik.imeNastavnik, nastavnik.prezNastavnik, mjesto.nazMjesto
FROM fakultet.nastavnik
JOIN fakultet.mjesto
ON nastavnik.pbrStan = mjesto.pbr;

/* Zadatak - 4.6 */

CREATE VIEW ProlaznostIspita_view AS
SELECT stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena, nastavnik.imeNastavnik, nastavnik.prezNastavnik
FROM fakultet.stud
JOIN fakultet.ispit
ON stud.mbrStud = ispit.mbrStud
JOIN fakultet.nastavnik
ON nastavnik.sifNastavnik = ispit.sifNastavnik
JOIN fakultet.pred
ON pred.sifPred = ispit.sifPred;

SELECT *
FROM fakultet.ProlaznostIspita_view;


