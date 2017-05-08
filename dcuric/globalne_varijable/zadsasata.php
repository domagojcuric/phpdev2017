<?php
//global,static,vrijednost,referenca

$a=25;
$b=10;
function zbrajanje($x,$y)
{
    return $x+$y;
}

echo zbrajanje(5, 6);
function oduzimanje(&$x,&$y){
    
    $x=$x-$y;
    
    
    
}
echo oduzimanje($a,$b)." ";
echo $a. " ";


function dijeljenje(){
    global $a;
    global $b;
    return $a/$b;
    
}
$a=30;
$b=6;
echo dijeljenje()." ";

function mnozenje($a,$b){
    static $brojac=0;
    static $total=0;
    
    if($brojac<$a){
        $brojac++;
        $total += $b;
        mnozenje($a,$b);
    }
    return $total;
    
}







?>