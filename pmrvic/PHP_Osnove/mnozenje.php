<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function mno($a,$b){
    return $a*$b;
}
echo "<table>";
for ($i=1;$i<10;$i+=2){
     echo "<tr>";
    for ($j=1;$j<10;$j++){
        echo "<td>".max($i,$j)."</td>";
    }
     echo "</tr>";
    
}
echo "</table>";