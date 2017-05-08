<?php

$a = (int) $a = 100.99;  
$b = 99.09;

echo $a;
echo "<br>";
echo $b;
echo "<br>";
echo $c = ($a+$b);
echo "<br>";
echo $c = ($a-$b);
echo "<br>"; 
echo $c = ($a*$b);
echo "<br>";
echo $c = ($a/$b);
echo "<br>";
echo $c = ($a%$b);
echo "<br>";
echo "<hr>";

$clubs = array ("cfc", "afc", "whu");

$points = array ("chelsea"=>"65", "arsenal"=>"60", "westham"=>"50");

print_r ("cfc");
echo "<br>";
print_r ("afc");
echo "<br>";
print_r ("whu");
echo "<br>";
print_r ($points);
echo "<br>";
echo count ($clubs);
echo "<hr>";

$ime = "ivan";
$prezime = "mazur";

echo "koje ime je najčešće u obitelji ".$prezime;echo "?";
echo "<br>".$ime;
echo "<hr>";
echo strlen ("Ivan Mazur");
echo "<hr>";

$num777=777;
for ($w=0; $w<=$num777; $w +=5)
{
echo "svaki peti je: $w <br>";
}
  

