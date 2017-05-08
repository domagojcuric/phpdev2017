USE fakultet;
/*SELECT LOWER(
CONCAT(
RIGHT(
REVERSE(v_studmjesto.imeStud),3),
LEFT(v_studmjesto.prezStud,3)))AS username FROM v_studmjesto ;
*/
/*
SELECT CAST(mbrStud AS char) AS mbrstudtxt FROM v_studmjesto;
*/
/*SELECT MONTH(stud.datRodStud) AS rodjos, stud.imeStud,stud.prezStud FROM stud
HAVING rodjos=4;
*/
SELECT AVG(ispit.ocjena) AS prosjek FROM ispit
WHERE ispit.sifPred=37;