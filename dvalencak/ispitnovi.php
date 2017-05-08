<html>
    <head>
        <title>Php</title>
            
    </head>
    
    <body>
<?php include ("studenti.php")?>
 
<?php


/*print_r($stud);*/
echo "<br>";
echo "<br>";

echo "<table border 1px>";
  echo"<tr>";
  echo"<th>RBR</th>";
  echo"<th>IME</th>";
  echo"<th>PREZIME</th>";
  echo"<th>GODINA</th>";
  
echo "</tr>";
    foreach ($stud as $key =>$red) 
    { 
        echo '<tr>';
        echo '<th>' . $key . '</th>';
        echo '<td>' . $red['imeStud'] . '</td>';
        echo '<td>' . $red['prezStud'] . '</td>';
        echo '<td>' . substr($red['datRodStud'], 0, 4) . '</td>';
   
      }
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

