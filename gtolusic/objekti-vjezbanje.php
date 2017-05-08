<?php

/*
$mjesec=date('n');


switch($mjesec)

{
    case '1':echo "siječanj";break;
case '2': echo "veljača";break;
case '3': echo "ožujak";break;
case '4': echo "travanj"; break;
case '5': echo "svibanj"; break;
case '6': echo "lipanj"; break;
case '7': echo "lipanj"; break;
case '8': echo "lipanj"; break;
case '9': echo "lipanj"; break;
case '10': echo "lipanj"; break;
case '11': echo "lipanj"; break;
case '12': echo "lipanj"; break;
}

echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";

$ucenici=array ("goran"=>"tolusic","marko"=>"filipovic","ivan"=>"juric");
echo "<pre>";
print_R($ucenici);
echo "</pre>";

function tablica($array)
{
   echo "<table border='1'>
 <tr>
    <th>Ime</th>
    <th>Prezime</th>
  </tr>";
    
foreach ($array as $key=>$value)
    
{ 
  echo "<tr>
    <td>".$key."</td><td>".$value.
   
    "</td></tr>";
          
}
          
         echo "</table>";
   
    
       
    
}

tablica ($ucenici);
echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";





function parametri()

{
    $a=func_get_args();
    
    foreach ($a as $b)
    {
    if (is_int($b)){echo $b."je broj<br>";}
    else{echo $b."je string<br>";}
    }
}





parametri (2,3, "kupus", "gljiva", 10);

$a="string";
$b=is_int($a);
echo $b;
echo "<br>";echo "<br>";echo "<br>";


function stanje($b, $a="prazan")

{
    
    echo $b."frizider je".$a;
    
}

$bca="pun";
stanje("bajaga", $bca);
 

$polje=array (1,2,3,4,5,6,7,8,9,10);
print_r(count($polje));
array_push($polje, 11);
echo"<br>";
print_r($polje);

 */

include "covjek_class.php";

$covjek = new Covjek(1,2);
/*
$covjek->broj2="goran bokte";
$covjek->broj="1235456";
 
*/

echo "<pre>";
print_R($covjek);
echo "<pre>";
echo "<br>";
$covjek->poruka();
$covjek->poruka2();



 
?>



