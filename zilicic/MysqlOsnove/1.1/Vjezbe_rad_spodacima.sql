/*UPDATE fakultet.stud set stud.imeStud='Mirjana' WHERE stud.mbrStud=1408;
SELECT * FROM stud WHERE stud.mbrStud=1408;
*/

/*
INSERT INTO stud(imeStud,prezStud,pbrStan) VALUES('xxxyyy','qqqqqwwwwww',31000);

DELETE FROM stud WHERE stud.mbrStud=11537;
*/
USE fakultet;
CREATE TABLE studmjesto /*kreira novu tablicu ali sa kopiranim podacima */ 
SELECT 
stud.imeStud,
stud.prezStud,
stud.pbrStan,
mjesto.nazMjesto,
mjesto.sifZupanija
FROM stud INNER JOIN mjesto
ON stud.pbrRod=mjesto.pbr
/*WHERE mjesto.nazMjesto LIKE 'Sp%' */
ORDER BY stud.prezStud ASC, stud.imeStud ASC, stud.pbrStan ASC
/* LIMIT 5,7 */
/*
LIMIT 10
LIMIT 11,10
*/;