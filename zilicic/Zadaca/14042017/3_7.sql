/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Korisnik
 * Created: Apr 13, 2017
 */

SELECT imeNastavnik, prezNastavnik, (koef+0.4)*800 AS 'Placa' FROM nastavnik WHERE ((koef+0.4)*800<3500) OR ((koef+0.4)*800>8000);