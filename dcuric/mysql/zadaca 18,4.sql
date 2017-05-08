/*3.2*/
SELECT stud.mbrStud,
CONCAT (stud.imeStud," ",stud.prezStud) "ime i prezime"
FROM stud
;

/*3.3 */
SELECT stud.imeStud
FROM stud
GROUP BY stud.imeStud
ORDER BY stud.imeStud ASC
;

/*3.4 */
SELECT ispit.mbrStud
FROM ispit 
WHERE ispit.sifPred = 146
;

/*3.5 */
SELECT nastavnik.imeNastavnik,nastavnik.prezNastavnik,(koef+0.4)*800 AS "placa"
FROM nastavnik
;

/*3.6 */
SELECT nastavnik.imeNastavnik,nastavnik.prezNastavnik,(koef+0.4)*800 AS "placa"
FROM nastavnik
WHERE ((koef+0.4)*800 < 3500) OR ((koef+0.4)*800 > 8000)
;

/* 3.7*/
SELECT stud.imeStud,stud.prezStud
FROM stud,ispit
WHERE stud.mbrStud=ispit.mbrStud
AND ocjena = 1
AND ispit.sifPred BETWEEN 220 AND 240
;

/* 3.8 */
SELECT  stud.imeStud, stud.prezStud,ispit.ocjena
FROM stud
JOIN ispit ON stud.mbrStud=ispit.mbrStud
WHERE ocjena=3
;

/* 3.9 */
SELECT pred.nazPred
FROM pred JOIN ispit ON ispit.sifPred=pred.sifPred
;

/*3.10*/
SELECT pred.nazPred
FROM pred LEFT JOIN ispit ON ispit.sifPred=pred.sifPred
WHERE ispit.datIspit is NULL
ORDER BY pred.nazPred
;

/*3.11*/
SELECT * 
FROM stud
WHERE LEFT(stud.imeStud,1) IN ("a","e","i","o","u")
AND RIGHT(stud.imeStud,1) IN ("a","e","i","o","u")
;

/*3.12 */
SELECT * 
FROM stud
WHERE LEFT(stud.imeStud,1) NOT IN ("a","e","i","o","u")
AND RIGHT(stud.imeStud,1) NOT IN ("a","e","i","o","u")
;

/*3.13*/
SELECT * 
FROM stud
WHERE LEFT(stud.imeStud,1) IN ("a","e","i","o","u")
or RIGHT(stud.imeStud,1) IN ("a","e","i","o","u")
;

/*3.14*/
SELECT * 
FROM stud
WHERE stud.imeStud LIKE "%nk%"
OR stud.prezStud LIKE "%nk%"
;


/* 3.15 */
SELECT stud.imeStud,stud.prezStud,pred.nazPred,ispit.ocjena
FROM ispit
JOIN stud  ON  stud.mbrStud=ispit.mbrStud
JOIN pred  ON  pred.sifPred=ispit.sifPred
;

/* 3.16 */
SELECT stud.imeStud,stud.prezStud,mjesto.nazMjesto AS "mjesto rođenja",zupanija.sifZupanija AS "zupanija rođenja",mjesto.nazMjesto AS "mjesto prebivalista",zupanija.nazZupanija AS "zupanija prebivališta"
FROM stud 
JOIN mjesto ON mjesto.pbr=stud.pbrRod
JOIN zupanija ON zupanija.sifZupanija=mjesto.sifZupanija
JOIN mjesto m1 ON m1.pbr=stud.pbrStan
JOIN zupanija z1 ON z1.sifZupanija=mjesto.sifZupanija
;



/*3.17*/
SELECT pred.nazPred,orgjed.nazOrgjed
FROM pred
JOIN orgjed ON pred.sifOrgjed=orgjed.sifOrgjed
WHERE pred.upisanoStud>20
;

/*3.18*/
SELECT DISTINCT mjesto.nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan
;

/* 3.19 */
SELECT DISTINCT mjesto.nazMjesto
FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan
WHERE stud.pbrStan=stud.pbrRod
;

/* 3.20 */
SELECT rezervacija.oznDvorana,pred.nazPred,pred.brojSatiTjedno
FROM pred
 JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
WHERE pred.brojSatiTjedno>2
;

/*3.21*/
SELECT DISTINCT pred.nazPred,rezervacija.oznDvorana,orgjed.nazOrgjed
FROM pred
JOIN rezervacija ON pred.sifPred=rezervacija.sifPred
JOIN orgjed ON pred.sifOrgjed=orgjed.sifOrgjed
;

/*3.22*/
SELECT stud.imeStud,stud.prezStud
FROM stud
JOIN mjesto m1 ON stud.pbrRod = m1.pbr
JOIN mjesto m2 ON stud.pbrStan = m2.pbr
WHERE stud.pbrRod != stud.pbrStan
AND m1.sifZupanija=m2.sifZupanija
;

/*3.23*/
SELECT DISTINCT nastavnik.imeNastavnik,stud.imeStud,nastavnik.pbrStan,stud.pbrStan
FROM nastavnik
JOIN ispit ON ispit.sifNastavnik=nastavnik.sifNastavnik
JOIN stud ON ispit.mbrStud=stud.mbrStud
JOIN mjesto m1 ON m1.pbr=stud.pbrStan
JOIN mjesto m2 ON m2.pbr=stud.pbrStan
WHERE m1.sifZupanija=m2.sifZupanija
;


/*3.24*/
SELECT * 
FROM stud,nastavnik
WHERE stud.prezStud=nastavnik.prezNastavnik
;








