
--zadatak 3.20

select nazPred, oznDvorana, nazOrgjed
from pred
join rezervacija on pred.sifPred=rezervacija.sifPred
join orgjed on orgjed.sifOrgjed=pred.sifOrgjed;

--zadatak 3.21

select distinct imeStud,prezStud,nazMjesto
from stud
join mjesto on mjesto.pbr=stud.pbrStan
join ispit on stud.mbrStud=ispit.sifPred
join pred on pred.sifPred=ispit.sifPred
where nazPred='Osnove baza podataka' and ocjena=1;

--zadatak 3.22

select imeNastavnik, prezNastavnik,nazMjesto,
       nazZupanija, nazPred, ocjena
from nastavnik
join mjesto
     on mjesto.pbr=nastavnik.pbrStan
join zupanija
     on zupanija.sifZupanija=mjesto.sifZupanija
join ispit
     on ispit.sifNastavnik=nastavnik.sifNastavnik
join pred
     on pred.sifPred=ispit.sifPred
where ocjena=2 or ocjena=3
order by nazPred;

--zadatak 3.23

select imeStud,prezStud,
m.nazMjesto as 'Mjesto rodjenja',
z.nazZupanija as 'Zupanija rodjenja',
m2.nazMjesto as 'Mjesto boravka',
z2.nazZupanija as 'Zupanija boravka'
from stud s
join mjesto m on m.pbr=s.pbrRod
join zupanija z on z.sifZupanija=m.sifZupanija
join mjesto m2 on s.pbrStan=m2.pbr
join zupanija z2 on z2.nazZupanija=m2.sifZupanija;

--zadatak 3.24

select distinct nazMjesto
from mjesto
join stud on mjesto.pbr=stud.pbrStan
where pbrStan=pbrRod;

--zadatak 3.25

select distinct imeNastavnik,prezNastavnik
from nastavnik
join ispit on ispit.sifNastavnik=nastavnik.sifNastavnik
join stud on ispit.mbrStud=stud.mbrStud
join mjesto  m1 on m1.pbr=stud.pbrStan
join mjesto m2 on m2.pbr=nastavnik.pbrStan
where m1.sifZupanija=m2.sifZupanija;

--zadatak 3.26

select imeStud, prezStud
from stud
join mjesto m1 on stud.pbrRod=m1.pbr
join mjesto m2 on stud.pbrStan=m2.pbr
where stud.pbrRod <> stud.pbrStan
and m1.sifZupanija=m2.sifZupanija;

--zadatak 3.27

select stud. *, nastavnik. *
from stud,nastavnik
where stud.prezStud=nastavnik.prezNastavnik;

--izmjene u bazi podataka zadatak 4.1

use upisi_polaznika;
update tecajevi
set naziv_tecaja='Osnove obrade teksta - MS Word'
where naziv_tecaja='Microsoft Word';

--zadatak 4.2

use upisi_polaznika;
update upisi
set sifra_tecaja='O03'
where sifra_polaznika=6;

--zadatak 4.3

use upisi_polaznika;
delete from upisi
where sifra_tecaja='P01';

--zadatak 4.4

use fakultet;
create table PredmetiDvorane
select oznDvoranfakultet, nazPred, sat from pred
join rezervacija on pred.sifPred=rezervacija.sifPred;

--zadatak 4.5

use fakultet;
create view Stanovanje as
select imeNastavnik,prezNastavnik,nazMjesto
from nastavnik
join mjesto on nastavnik.pbrStan=mjesto.pbr;

--zadatak 4.6

use fakultet;
create view ProlaznostIspita as
select imeStud,prezStud,nazPred,ocjena,
       imeNastavnik,prezNastavnik
from stud 
join ispit on stud.mbrStud=ispit.mbrStud
join nastavnik on nastavnik.sifNastavnik=ispit.sifNastavnik
join pred on pred.sifPred=ispit.sifPred;

--funkcije zad 5.1

select imestud,prezStud,nazMjesto
from stud
join mjesto on mjesto.pbr=stud.pbrRod
where left (imestud,1)='F';

--rjesenje2

select imeStud,prezStud,nazMjesto
from stud 
join mjesto on mjesto.pbr=stud.pbrRod
where imeStud like 'F%';

--funkcije zad 5.2

select imeNastavnik,prezNastavnik
from nastavnik
join mjesto on mjesto.pbr=nastavnik.pbrStan
where substring(nazmjesto,3,1)='Z';

--funkcije zad 5.3

select imeStud,prezStud,imeNastavnik,prezNastavnik
from stud
join ispit on ispit.mbrStud=stud.mbrStud
join nastavnik on ispit.sifNastavnik=nastavnik.sifNastavnik
where substring(imestud,5,1)=substring(imeNastavnik,5,1);

--funkcije zad 5.4

select nazZupanija from zupanija
where length(nazZupanija) between 13 and 20;

--funkcije zad 5.5

select imeStud, prezStud, from stud
where month (datRodStud)=5;

--funkcije zad 5.6

select distinct imeStud,prezStud from stud
join ispit on stud.mbrStud=ispit.mbrStud
where day(datIspit) between 10 and 20;

--funkcije zad 5.7

select imeNastavnik,prezNastavnik, m1.nazMjesto,
       imeStud, prezStud, m2.nazMjesto
from nastavnik
join ispit on ispit.sifNastavnik=nastavnik.sifNastavnik
join mjesto m1 on m1.pbr=nastavnik.pbrStan
join stud on stud.mbrStud=ispit.mbrStud
join mjesto m2 on m2.pbr=stud.pbrRod
where month(datIspit)=6 and m1.nazMjesto=m2.nazMjesto;
