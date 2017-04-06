<?php

$studenti= array('ivan','marko','luka','mirko','juninho','vid','dundo','enrike','faruk','domagoj');


$b= count($studenti);
echo "Ima ".count($studenti)." studenata u polju<br>";

for($i=0;$i<=9;$i++){
    echo "<br>".$studenti[$i]."<br>";
}

for($i=0;$i<=9;$i++)
{
    if(strlen($studenti[$i])<= 5){
        echo "<br> ".$studenti[$i]." ima 5 ili manje znakova";
    }
}

echo "<hr><br>" ;

array_push($studenti,'ivor','marinko','valentin','gargamel','mario');
print_r($studenti);

echo "<hr><br>" ;

sort($studenti);
$c=count($studenti);
for($x = 0; $x < $c; $x++) {
    echo $studenti[$x];
    echo "<br>";
}
echo "<hr><br>";

unset($studenti[3],$studenti[8]);

$d=count($studenti);
//for($i = 0; $i < $d; $i++) {
//    echo $studenti[$j];
//    echo "<br>";



echo "<br>";
print_r($studenti);
echo "<br>";

echo "<hr>";
for($i = 0; $i< $d; $i++) {
    echo "<br>".ucfirst($studenti[$i]);
    echo "<br>";
}

echo "<br>";

$neparni = array();
$parni = array();
foreach ($studenti as $k => $v) {
    if ($k % 2 == 0) {
        $parni[$k] = $v;
    }
    else {
        $neparni[$k] = $v;
    }
}
echo "<br/>";
print_r($neparni);echo "<br/>";echo "<br/>";
print_r($parni);echo "<br/>";echo "<br/>";

$polje10temperatura=array(10,16.7,22,34,7,18.25,21,12,3,17.9);

sort($polje10temperatura);
echo "<br>najmanja temperatura je ".$polje10temperatura[0];

rsort($polje10temperatura);
echo "<br>najveca temperatura je ".$polje10temperatura[0];

$elementipolja= count($polje10temperatura);
$rezultat= array_sum($polje10temperatura)/$elementipolja;
echo "<br> srednja vrijednost polja je ".$rezultat;

?>