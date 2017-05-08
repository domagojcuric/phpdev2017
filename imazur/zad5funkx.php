<?php

//predavanje-primjer
function inc_a()
{ 
  static $a=0;
    $a++;
    echo $a;

}
inc_a();
inc_a();
inc_a();
echo "<hr>";

//zadaća

//zbroj

function zbr ($w, $q) {
return $w+$q;
}
$w=5;
$q=6;
echo zbr($w, $q);
echo "<hr>" ;


//razlika

function razl(&$c, &$n) {
	$c -= $n;
       
}
$c = 25;
$n = 15;
razl($c, $n); 
echo $c;
echo "<hr>" ;


//umnožak

function mno($f, $g)
{
    static $ff=0;
    static $gg=0;
if  ($ff<$f) {
    $ff++;
    $gg+=$g;
    mno($f, $g);
}
return $gg;
    
}
echo mno (4,5);


echo "<hr>";

//količnik 

$aa=30;
$bb=6;
function dij()
{
    global $aa;
    global $bb;
    $zz= ($aa/$bb); // ili $aa /=$bb !
    echo $zz;
    
}
echo dij ();
echo "<hr>";




        
        
        
        
        
        
        
        
        





/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

