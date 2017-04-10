<?php
$a = 2;

function inc_a()

{
    global $a;
    $a++;
    echo $a;
    
}

inc_a();
echo $a;
echo "<hr>";



    
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

