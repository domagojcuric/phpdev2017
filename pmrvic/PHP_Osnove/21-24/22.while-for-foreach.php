<?php
/**
22.
Prikazati rad s while petljom. Prikazati obije verzije sintakse.
Prikazati do
-while petlju. Prikazati rad s for petljom.
Prikazati obije verzije sintakse. 


*/



// Nađi i kod kojeg 
// je ukupan zbroj <= 100.000


$zbroj=0;
$i=1;  

while($i<=1000){

	$zbroj+=$i;
	if($zbroj>=100000){
		break;
	}
	$i++;
}

echo $zbroj." <br>";
echo "stali smo kod broja ".($i-1)." <br>";

////
// Pokušati ćemo isto sa do-while

$zbroj=0;
$i=1;  

do{
	$zbroj+=$i;
	if($zbroj>=100000){
		break;
	}
	$i++;
}
while($i<=1000);
    
echo $zbroj." <br>";
echo "DO-WHILE stali smo kod broja ".($i-1)." <br>";

///
//  Ispisi sve x <10 i y do max 5
$x=0;$y=0;

while($x<10){
  $x++;
  echo "x:$x ";
  while($y<=10){
  	echo "<br>y:$y ";
   if($y==5){
   	continue 2;
   }
   $y++;
  }
}

echo "<br> x je $x y je $y";


?>