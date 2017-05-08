<?php

function hipo($a,$b){
    return $c=sqrt($a*$a+$b*$b);
    
}

echo hipo(-3,-3);
echo "<hr>";

function kvadrat($x){
    return $x*$x;
}


function polje_kvadrata($array1)
{
    for($i=0;$i<count($array1);$i++)
    {
         $array1[$i]=$array1[$i]*$array1[$i];
    }
    return $array1;
}

$p1=array(1,2,3,4,5,6,7,8,9);
echo "<br>";
echo print_r($p1);
echo "<br>";
print_r(polje_kvadrata($p1));
 
  

echo "<hr>";

function text($string){ 
  $string = preg_replace('/(?:[aeiou]|(?<=[bcdfghjklmnpqrstvwxyz]))/','', $string); 
   return $string;
 }

echo text("aeiou ovo bi trebalo izbrisati sve samoglasnike hahahhahahahah");

echo "<hr>";














?>
