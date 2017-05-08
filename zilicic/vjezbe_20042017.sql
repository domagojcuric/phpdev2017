USE fakultet;
SELECT ispit.mbrStud
FROM ispit
GROUP BY mbrstud; /* samo oni izasli na ispite*/
USE fakultet;
SELECT ispit.mbrStud,
count(*) broj_izlazaka FROM ispit
GROUP BY mbrstud; /* samo oni izasli na ispite*/

USE fakultet;
SELECT ispit.mbrStud,
count(*)broj_izlazaka,
avg(ispit.ocjena) as prosjek,
(0.8*avg(ispit.ocjena)+count(*)*0.2) as RANK,
year(ispit.datIspit) as godina
FROM ispit
WHERE ispit.ocjena>1
AND YEAR(ispit.datIspit)=2002
GROUP BY mbrstud
ORDER BY RANK DESC
; /* samo oni izasli na ispite i prosjek ocjena, samo za 2002 godinu, */


USE fakultet;
SELECT count(stud.mbrStud) AS Ukupan_broj_studenata FROM stud; /*svi studenti*/