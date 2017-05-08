USE fakultet;
CREATE VIEW v_studmjesto AS  /*kreira  novi pogled view */ 
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