
--zadatak 3.13
select distinct imeStud, prezStud
from stud join ispit on stud.mbrStud = ispit.mbrStud
where ocjena=3;

--zadatak 3.14
select distinct nazPred
from pred join ispit on ispit.sifPred = pred.sifPred;

--zadatak 3.15
select nazPred
from pred
where nazPred not in (select distinct nazPred
from pred, ispit
where ispit.sifPred = pred.sifPred);

--zadatak 3.16
select nazPred, oznDvorana
from pred 
left join rezervacija
on pred.sifPred = rezervacija.sifPred
where brojSatiTjedno>2;

--zadatak 3.17
select nazPred, nazOrgjed, upisanoStud
from pred
join orgjed on pred.sifOrgjed = orgjed.sifOrgjed
where upisanoStud>20;

--zadatak 3.18
select distinct nazMjesto
from mjesto
join stud on mjesto.pbr=stud.pbrStan;

--zadatak 3.19
select imeStud,prezStud,nazPred,ocjena
from ispit i
join stud s on i.mbrStud=s.mbrStud
join pred p on p.sifPred=i.sifPred;