USE fakultet;
CREATE VIEW v_top_studenti_2003 AS
SELECT ispit.mbrStud,
count(*)broj_izlazaka,
avg(ispit.ocjena) as prosjek,
(0.8*avg(ispit.ocjena)+count(*)*0.2) as RANK,
year(ispit.datIspit) as godina
FROM ispit
WHERE ispit.ocjena>1
AND YEAR(ispit.datIspit)=2003
GROUP BY mbrstud
ORDER BY RANK DESC
LIMIT 5
; /* samo oni izasli na ispite i prosjek ocjena, samo za 2002 godinu,najbolji studenti po ocjeni i broju izlazaka */