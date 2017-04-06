<?php


$a = 22.5;
$b = 5.25 ;

$c = (double)($a + $b);
echo var_dump($c);
echo "<hr>";

$c =$a - $b;
echo var_dump($c);
echo "<hr>";

$c =$a / $b;
echo var_dump($c);
echo "<hr>";

$c =$a * $b;
echo var_dump($c);
echo "<hr>";

$c= $a % $b ;
echo var_dump($c);
echo "<hr>";

$POLJEasocijacije = array('modric' => 'nogometas','draganja'=>'plivac' );
print_r ($POLJEasocijacije);

echo "<hr>";

$indexirani=array('modric', 'draganja', 'perkovic');
print_r($indexirani);

echo "<hr>";

echo "sto je modric:".$POLJEasocijacije['modric'];
echo "<hr>";

echo "Ispisi mi 3.-eg u nizu-".$indexirani['2'];
echo "<hr>";


$posao='tenisac';
$NADIMAK='Div_sa_salate';

echo "Ivo Karlović ima nadimak ".$NADIMAK." i profesionalni je ".$posao;
echo "<hr>";


$stringich = "Ovo je moj string koji je string";
$duzina_stringa = strlen($stringich);
echo "String je dugačak $duzina_stringa znaka";

echo "<hr>";




$polje = range(0,776);

for($i=0; $i<=776; $i+=5)
{
echo $polje[$i]."<br>";
}

?>