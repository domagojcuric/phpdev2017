<!DOCTYPE html>
<html>
    <head>
        <title>3.zadatak</title>   
    </head>
    <body>
        
        
        <?php
         for ( $i = 1; $i <= 5; $i++) 
           {
	     echo "<a href='skripta.php?broj=".$i."'>".$i."</a><br>";
           }
         ?>
        <br>
       
   
    

       <?php 
         if(  isset($_GET['broj']))
            {
 		echo "Odabrali ste broj ". $_GET['broj'];
 	
 	    }
            
            ?>
    </body>
</html>

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

