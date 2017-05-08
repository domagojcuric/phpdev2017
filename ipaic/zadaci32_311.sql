//zadatak 3.2
use fakultet;
select ime_nastavnik,prezime_nastavnik from nastavnik;
//zadatak 3.3
select mbroj,
CONCAT (ime,' ',prezime) AS 'ime i prezime'
from student;
//zadatak 3.4
select distinct ime from student
order by ime aesc;
//zadatak 3.5
select polozili from predmet where predmet_ID=146;
//zadatak 3.6 i 3.7
select ime_nastavnik,prezime_nastavnik,(koeficijent*0.4)*800 AS 'placa'
from nastavnik where ((koeficijent*0.4)*800<3500 OR (koeficijent*0.4)*800>8000);
//zadatak 3.8
select * from student
where left(ime,1) in ('a','e','i','o','u') and right(ime,1) in ('a','e','i','o','u');
//zadatak 3.9
select * from student
where left(ime,1)  not in ('a','e','i','o','u') and right(ime,1) not in ('a','e','i','o','u');
//zadatak 3.10
select * from student
where left(ime,1) in ('a','e','i','o','u') or right(ime,1) in ('a','e','i','o','u');
//zadatak 3.11
select * from student
where ime like '%na%' or prezime like '%na%';