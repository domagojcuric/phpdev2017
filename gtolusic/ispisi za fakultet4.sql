use fakultet;
select  oznDvorana, pred.nazPred
from pred
left join rezervacija on rezervacija.sifPred=pred.sifPred where pred.brojSatiTjedno>2;
select nazPred, oznDvorana, nazOrgjed
from pred
inner join rezervacija on pred.sifPred=rezervacija.sifPred
inner join orgjed on orgjed.sifOrgjed=pred.sifPred;
select distinct imeNastavnik, prezNastavnik
from nastavnik
join ispit on ispit.sifNastavnik=nastavnik.sifNastavnik
join stud on ispit.mbrStud=stud.mbrStud
join mjesto m1 on m1.pbr=stud.pbrStan
join mjesto m2 on m2.pbr=nastavnik.pbrStan where m1.sifZupanija=m2.sifZupanija;