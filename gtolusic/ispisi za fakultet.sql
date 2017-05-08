use fakultet;
select stud.mbrStud, concat (stud.imeStud,' ',stud.prezStud) as 'ime i prezime' from stud;
select stud.imeStud from stud group by stud.imeStud order by stud.imeStud desc;
select ispit.mbrStud from ispit where ispit.sifPred=146;
select nastavnik.imeNastavnik, nastavnik.prezNAstavnik, (nastavnik.koef +0.4)*800 AS 'PLaca' from nastavnik;
select nastavnik.imeNastavnik, nastavnik.prezNAstavnik, (nastavnik.koef +0.4)*800 as 'Placa' from nastavnik
 where ((nastavnik.koef+0.4)*800)<3500 or ((nastavnik.koef+0.4)*800)>8000;
 select stud.imeStud, stud.prezStud from stud inner join ispit on ispit.mbrStud=stud.mbrStud where ispit.ocjena=3;
 select pred.nazPred from pred where pred.upisanoStud=0;
select pred.nazPred from pred where pred.upisanoStud not in (0);
select * from stud where left (stud.imeStud,1) in ('a', 'e', 'i', 'o', 'u') and right (stud.imeStud,1) in ('a','e','i','o','u');
select * from stud where left (stud.imeStud,1) not in ('a', 'e', 'i', 'o', 'u') and right (stud.imeStud,1) not in ('a','e','i','o','u');