<!DOCTYPE html>
<html>
    <head>
        <title>zadatak 1.6_3</title>
        <meta charset="UTF-8">
       
    </head>
    <body>
        
        
        <?php
         for ( $i = 1; $i <= 5; $i ++) 
           {
	     echo "<a href='skripta.php?broj=$i'>$i</a>";
           }
         ?>
        <br>
       
   
    </body>
</html>

       <?php 
         if(  isset($_GET["broj"]))
            {
 		echo "Odabrali ste broj ". $_GET["broj"];
 	
 	    }
          