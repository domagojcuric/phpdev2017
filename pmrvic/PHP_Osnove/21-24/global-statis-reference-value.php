<?php

// napravi nfunkciju koja zbraja dva broja a argumente prima po vrijednosti
function zbr($a, $b) {
	return $a + $b;
}
printf("zbroj a=%d i b=%d je %d<br>", $a=3,$b=9, zbr($a,$b));


// napravi nfunkciju koja zbraja dva broja a argumente prima po referenci
$a=25;
$b=15;
function razl(&$a, &$b) {
	$a -= $b;       // nije potrebno return, rezultat je već u globalnom $a
}
printf("razlika a=%d i b=%d", $a,$b);
razl($a,$b);
printf(" je %d<br>", $a);



// Pomoću static metode napraviti funkciju koja množi dva broja uz pomoć zbrajanja
function mno($a, $b=0) {  
    static $y=0;        // broj ponavljanja
    static $z=0;        // privremeni rezulat zbroja
    if($b!=0){          // Ukoliko je broj ponavljanja veći od nule 
     $y=$b;    
    }
    $z+=$a;             // pri svakom pozivu funkcije pribroji rezultatu
    $y--;               // umanji broj ponavljanja
    while($y>0){        // rekurzijom pozivaj funkciju
      mno($a);  
    }
    return $z;          // na kraju vrati ukupan zbroj (u biti konačni umnožak)
}

printf("umnožak <b>a=%d i b=%d</b> je %d<br>", $a=6,$b=7, mno($a,$b));



$a=56;
$b=8;
function dij() {
    global $a,$b;
    return $a /= $b;
}
printf("kvocijent od <b>a=%0.0f</b> i <b>b=%0.0f</b> je %f<br>", $a,$b, dij());
