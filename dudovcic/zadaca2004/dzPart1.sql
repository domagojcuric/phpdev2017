USE Fakultet;

SELECT imeNastavnik, prezNastavnik FROM nastavnik;

SELECT mbrStud,
CONCAT(imeStud,' ', prezStud) AS 'Ime i Prezime'
FROM stud;

SELECT DISTINCT imeStud FROM stud
ORDER BY imeStud DESC;

SELECT imeStud FROM stud
GROUP BY imeStud
ORDER BY imeStud DESC;

SELECT
	imeNastavnik,
	prezNastavnik,
	(koef + 0.4)*800 AS 'Placa'
FROM nastavnik;

SELECT
	imeNastavnik,
	prezNastavnik,
	(koef+0.4)*800 AS 'Placa'
FROM nastavnik
WHERE ((koef+0.4)*800<3500) OR ((koef+0.4)*800>8000);


SELECT * FROM stud
WHERE LEFT(imeStud, 1) IN ('a', 'e', 'i', 'o', 'u' )
AND RIGHT(imeStud, 1) IN ('a', 'e', 'i', 'o', 'u' );



SELECT * FROM stud
WHERE LEFT(imeStud, 1) NOT IN ('a', 'e', 'i', 'o', 'u' )
AND RIGHT(imeStud, 1) NOT IN ('a', 'e', 'i', 'o', 'u' );



SELECT * FROM stud
WHERE LEFT(imeStud, 1) IN ('a', 'e', 'i', 'o', 'u' )
OR RIGHT(imeStud, 1) IN ('a', 'e', 'i', 'o', 'u' );



SELECT * FROM stud
WHERE
	imeStud LIKE '%nk%'
	OR
	prezStud LIKE '%nk%';



SELECT imeStud, prezStud
FROM stud, ispit
WHERE stud.mbrStud = ispit.mbrStud
AND
ocjena = 1
AND
(sifPred BETWEEN 220 AND 240);



SELECT imeStud, prezStud
FROM stud INNER JOIN ispit
WHERE stud.mbrStud = ispit.mbrStud
AND
ocjena = 1
AND
(sifPred BETWEEN 220 AND 240);



SELECT DISTINCT imeStud, prezStud
FROM stud JOIN ispit ON stud.mbrStud = ispit.mbrStud
WHERE ocjena=3;



SELECT DISTINCT nazPred
FROM pred JOIN ispit ON ispit.sifPred = pred.sifPred;



SELECT nazPred
FROM pred LEFT JOIN ispit ON pred.sifPred = ispit.sifPred
WHERE datIspit IS NULL
ORDER BY nazPred;



SELECT nazPred
FROM pred
WHERE nazPred NOT IN
(SELECT DISTINCT nazPred
	FROM pred, ispit
	WHERE ispit.sifPred=pred.sifPred);
	

	
SELECT nazPred
FROM pred
WHERE nazPred NOT IN
(SELECT DISTINCT nazPred
	FROM pred INNER JOIN ispit
	WHERE ispit.sifPred=pred.sifPred);
	


SELECT nazPred, oznDvorana
FROM pred
LEFT JOIN rezervacija
	ON pred.sifPred=rezervacija.sifPred
WHERE brojSatiTjedno<2;



SELECT nazPred, nazOrgjed, upisanoStud
FROM pred
JOIN orgjed ON pred.sifOrgjed=orgjed.sifOrgjed
WHERE upisanoStud>20;



SELECT DISTINCT nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan;



SELECT imeStud, prezStud, nazPred, ocjena
FROM ispit i
JOIN stud s ON i.mbrStud=s.mbrStud
JOIN pred p ON p.sifPred=i.sifPred;



SELECT nazPred, oznDvorana, nazOrgjed
FROM pred
JOIN rezervacija r ON pred.sifPred=r.sifPred
JOIN orgjed o ON o.sifOrgjed= pred.sifOrgjed;



SELECT DISTINCT imeStud, prezStud, nazMjesto
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrStan
JOIN ispit i ON s.mbrStud=i.mbrStud
JOIN pred p ON p.sifPred = i.sifPred
WHERE nazPred='Osnove baza podataka' AND ocjena=1;



SELECT imeNastavnik, prezNastavnik,
		nazMjesto, nazZupanija, nazPred, ocjena
FROM nastavnik n
JOIN mjesto m
ON m.pbr=n.pbrStan
JOIN zupanija z
ON z.sifZupanija=m.sifZupanija
JOIN ispit i
ON i.sifNastavnik=n.sifNastavnik
JOIN pred p
ON p.sifPred=i.sifPRed
WHERE ocjena=2 OR ocjena=3
ORDER BY nazPred;



SELECT imeStud, prezStud,
		m.nazMjesto AS 'Mjesto rodjenja',
		z.nazZupanija AS 'Zupanija rodjenja',
		m2.nazMjesto AS 'Mjesto boravka',
		z2.nazZupanija AS 'Zupanija boravka'
FROM stud s
JOIN mjesto m ON m.pbr=s.pbrRod
JOIN zupanija z ON z.sifZupanija=m.sifZupanija
JOIN mjesto m2 ON s.pbrStan=m2.pbr
JOIN zupanija z2 ON z2.sifZupanija=m2.sifZupanija;



SELECT DISTINCT nazMjesto
FROM mjesto m
JOIN stud s ON m.pbr=s.pbrStan
WHERE pbrStan=pbrRod;



SELECT DISTINCT imeNastavnik, prezNastavnik
FROM nastavnik n
JOIN ispit i ON i.sifNastavnik=n.sifNastavnik
JOIN stud s ON i.mbrStud=s.mbrStud
JOIN mjesto m1 ON m1.pbr=s.pbrStan
JOIN mjesto m2 ON m2.pbr=n.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija;



SELECT imeStud, prezStud
FROM stud s
JOIN mjesto m1 ON s.pbrRod=m1.pbr
JOIN mjesto m2 ON s.pbrStan=m2.pbr
WHERE s.pbrRod<>s.pbrStan
AND m1.sifZupanija = m2.sifZupanija;


