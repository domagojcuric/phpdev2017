use fakultet;
select * from stud where stud.imeStud like "%nk%" or stud.prezStud like "%nk%";
select stud.imeStud, stud.prezStud, pred.nazPred, ispit.ocjena from ispit inner join stud on ispit.mbrStud=stud.mbrStud inner join pred on pred.sifPred=ispit.sifPred;