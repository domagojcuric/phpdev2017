select * from crud;
select concat(stud.imeStud, '', stud.prezStud) AS "ime i prezime"
FROM stud INNER JOIN ispit
ON stud.mbrStud=ispit.mbrStud
from stud, ispit
where stud.