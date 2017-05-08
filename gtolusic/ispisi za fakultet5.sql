use fakultet;
select imeStud, prezStud
From stud
join mjesto m1 on stud.pbrRod=m1.pbr
join mjesto m2 on stud.pbrStan= m2.pbr
where stud.pbrRod<>stud.pbrstan
and m1.sifzupanija = m2.sifZupanija;
select stud. *, nastavnik. * from stud, nastavnik where stud.prezstud=nastavnik.prezNastavnik;
select stud.imeStud, stud.prezStud, nazMjesto
from stud
inner join mjesto on mjesto.pbr=stud.pbrStan
inner join ispit on ispit.mbrStud=stud.mbrStud
inner join pred on pred.sifPred=ispit.sifPred
where nazPred='osnove baza podataka' and ispit.ocjena=1;