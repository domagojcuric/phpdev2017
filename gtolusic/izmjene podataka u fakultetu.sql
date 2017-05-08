use fakultet;
/*create table PredmetiDvorane
select oznDvorana, nazPred, sat From pred
inner join rezervacija on pred.sifPred=rezervacija.sifPred;
create view stanovanje as select imeNastavnik, prezNastavnik, nazMjesto from nastavnik
inner join mjesto on nastavnik.pbrStan=mjesto.pbr
select * from stanovanje;
create view proalznostispita as
select
imestud, prezstud, nazpred, ocjena, imeNastavnik, prezNAstavnik from stud
join ispit on stud.mbrStud=ispit.mbrStud
join nastavnik on nastavnik.sifNastavnik=ispit.sifNastavnik
join pred on pred.sifPred=ispit.sifPred;*/
select * from proalznostispita;