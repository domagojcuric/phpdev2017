/*
Zadatak 3.12
imena i prezimena studenata koji su pali na ispitu, barem jednom iz predmenta sa siframa od 220 do 240
*/

SELECT stud.imeStud,stud.prezStud
FROM stud JOIN ispit
ON stud.mbrStud=ispit.mbrStud
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