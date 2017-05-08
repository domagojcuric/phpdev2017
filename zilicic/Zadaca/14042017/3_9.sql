/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 13, 2017
 */

SELECT * FROM stud WHERE LEFT(imeStud,1) NOT IN ('a','e','i','o','u')
AND RIGHT(imeStud,1) NOT IN ('a','e','i','o','u');