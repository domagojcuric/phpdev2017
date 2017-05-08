USE polaznici;

UPDATE tecajevi t
SET t.naziv_tecaja='Osnove obrade teksta - MS Word'
WHERE t.naziv_tecaja='Microsoft Word';



UPDATE upisi
SET sifra_tecaja='O03'
WHERE sifra_polaznika=6;



DELETE FROM upisi
WHERE sifra_tecaja='P01';



USE fakultet;

CREATE TABLE IF NOT EXISTS predDvorana
SELECT oznDvorana, nazPred, sat
FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred;


CREATE VIEW IF NOT EXISTS Stanovanje AS
SELECT imeNastavnik, preZNastavnik, nazMjesto
FROM nastavnik
JOIN mjesto ON nastavnik.pbrStan=mjesto.pbr;


SELECT * FROM stanovanje;


CREATE VIEW IF NOT EXISTS prolaznostIspita AS
SELECT
	imeStud, prezStud, nazPred, ocjena,
	imeNastavnik, prezNastavnik
FROM stud
JOIN ispit
ON stud.mbrStud=ispit.mbrStud
JOIN nastavnik
ON nastavnik.sifNastavnik=ispit.sifNastavnik
JOIN pred
ON pred.sifPred=ispit.sifPred;


SELECT * FROM prolaznostIspita;


SELECT imeStud, prezStud, nazMjesto
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrRod
WHERE LEFT(imeStud,1)='F';


SELECT imeStud, prezStud, nazMjesto
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrRod
WHERE imeStud LIKE 'F%';


SELECT imeNastavnik, prezNastavnik, nazMjesto
FROM nastavnik n
JOIN mjesto m oN m.pbr=n.pbrStan
WHERE SUBSTRING(nazMjesto,3,1)='z';


SELECT imeStud, prezStud, imeNastavnik, prezNastavnik
FROM stud s
JOIN ispit i
ON i.mbrStud=s.mbrStud
JOIN nastavnik n
ON i.sifNastavnik=n.sifNastavnik
WHERE
SUBSTRING(imeStud,3,1)=SUBSTRING(imeNastavnik,5,1);


SELECT nazZupanija FROM zupanija z
WHERE LENGTH(nazZupanija) BETWEEN 13 AND 20;


SELECT DISTINCT imeStud, prezStud FROM stud s
WHERE DATE_FORMAT(datRodStud, '%M'='May';


SELECT DISTINCT imeStud, prezStud FROM stud
WHERE DATE_FORMAT(datRodStud, '%M')='May';




SELECT DISTINCT imeStud, prezStud FROM stud
WHERE MONTH(datRodStud)=5;


SELECT DISTINCT imeStud, prezStud FROM stud s
JOIN ispit i ON s.mbrStud=i.mbrStud
WHERE DAY(datIspit) BETWEEN 10 AND 20;



SELECT imeNastavnik, prezNastavnik, m1.nazMjesto,
		imeStud, prezStud, m2.nazMjesto
FROM nastavnik
JOIN ispit i ON i.sifNastavnik=nastavnik.sifNastavnik
JOIN mjesto m1 ON m1.pbr=nastavnik.pbrStan
JOIN stud ON stud.mbrStud=i.mbrStud
JOIN mjesto m2 ON m2.pbr=stud.pbrRod
WHERE MONTH(datIspit)=6 AND m1.nazMjesto=m2.nazMjesto;



