<?php


include "studenti.php";

//print_r ($stud);

echo "<table border='1'>";
echo "<tr><th>rbr</th><th>IME</th><th>prezime</th><th>godina</th>";

foreach ($stud as $key => $value) 
    { 
        echo '<tr>';
        echo '<th>' . $key . '</th>';
        echo '<td>' . $value['imeStud'] . '</td>';
        echo '<td>' . $value['prezStud'] . '</td>';
        echo '<td>' . $value['datRodStud'] . '</td>';
       
        echo '</tr>';
    }

   

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

