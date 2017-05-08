use fakultet;
select imestud, prezstud, nazMjesto from stud
join mjesto on mjesto.pbr=stud.pbrRod where stud.imeStud like "F%";
select imeNastavnik, prezNAstavnik, nazMjesto from nastavnik
inner join mjesto on mjesto.pbr=nastavnik.pbrstan where substring(nazMjesto,3,1)='Z';
select imestud, prezstud, imeNastavnik, prezNastavnik from stud
join nastavnik on nastavnik.pbrStan=stud.pbrStan
where substring(imeStud,5,1)=substring(imeNastavnik,5,1);
select zupanija.nazZupanija from zupanija where length(zupanija.nazZupanija) between 13 and 20;
select imestud, prezstud from stud where month(datrodstud) =5;
select imestud,prezstud from stud inner join ispit on ispit.mbrStud=stud.mbrStud where day(ispit.datIspit) between 10 and 20;
select imeNastavnik, prezNastavnik, m1.nazMjesto, imestud, prezstud, m2.nazMjesto from nastavnik
join ispit on ispit.sifNastavnik=nastavnik.sifNastavnik
join mjesto m1 on m1.pbr=nastavnik.pbrStan
join stud on stud.mbrStud=ispit.mbrStud
join mjesto m2 on m2.pbr=stud.pbrRod
where month(datIspit)=6 and m1.nazMjesto=m2.nazMjesto;
