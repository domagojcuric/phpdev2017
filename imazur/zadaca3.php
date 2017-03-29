<?php

$studenti = array (1 => "marko",
                   2 => "ivan",
                   3 => "noa",
                   4 => "maja",
                   5 => "iva",
                   6 => "sandra",
                   7 => "tonka",
                   8 => "jelena",
                   9 => "vanja",
                  10 => "mario");
echo "<hr>";
$f = array_filter(array_keys($studenti), function ($value){ return strlen($value)>5; });
print_r($studenti);

echo "<hr>";
array_push($studenti,"ivana","mirta","melita","miro","bruno" );
print_r($studenti);


echo "<hr>";
asort($studenti);
print_r($studenti);

echo "<hr>";
array_pop($studenti);
array_pop($studenti);

echo "<pre>";
print_r($studenti);
echo "</pre>";

array_walk($studenti, function(&$value)
{
  $value = ucfirst($value);
});
echo "<pre>";
print_r($studenti);
echo "</pre>";


$sneparni = array();
$sparni = array();
foreach( $studenti as $key => $value ) {
    if( 0 === $key%2) { //Even
        $sparni[] = $key;
    }
    else {
        $sneparni[] = $key;
    }
}
echo "<pre>";
print_r($sparni);
echo "</pre>";
echo "<pre>";
print_r($sneparni);
echo "</pre>";


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

