use fakultet;
select imeStud,prezStud,
m.nazMjesto as 'mjesto rodjenja',
z.nazZupanija as 'zupanija rodjenja',
m2.nazMjesto as 'mjesto boravka',
z2.nazZupanija as 'zupanija boravka'
from stud s
join mjesto m on m.pbr=s.pbrRod
join zupanija z on z.sifZupanija=m.sifZupanija
join mjesto m2 on s.pbrStan=m2.pbr
join zupanija z2 on z2.sifZupanija=m2.sifZupanija;
select nazPred, nazOrgjed, upisanoStud from pred
join orgjed on pred.sifOrgjed=orgjed.sifOrgjed where upisanoStud>20;
select distinct nazMjesto from mjesto join stud on mjesto.pbr=stud.pbrStan;

select distinct mjesto.nazMjesto from mjesto
inner join stud on mjesto.pbr=stud.pbrStan where pbrStan=pbrRod;
