<?php

function hipo($a,$b){
    return $c=sqrt($a*$a+$b*$b);
    
}

echo hipo(-3,-3);
echo "<hr>";

function kvadrat($x){
    return $x*$x;
}

function polje_kvadrata($array1){
    for($i=0;$i<count($array1);$i++){
        $fa=$array1[$i]*$array1[$i];
        echo $fa." ";
    }
}

$p1=array(8,5,6,7,23,45,6,7,89,99,0,1,999);
echo polje_kvadrata($p1);

echo "<hr>";

function text($string){ 
  $string = preg_replace('/(?:[aeiou]|(?<=[bcdfghjklmnpqrstvwxyz]))/','', $string); 
   return $string;
 }

echo text("aeiou ovo bi trebalo izbrisati sve samoglasnike hahahhahahahah");

echo "<hr>";














?>