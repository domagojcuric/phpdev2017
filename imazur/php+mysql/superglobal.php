
<?php
/*
$polje_brojeva = array();

function show_polje()
{
    $polje_brojeva[]=11;
    $polje_brojeva[]=100;
    $polje_brojeva[]=111;
    
print_r($polje_brojeva);
}

$polje_brojeva[]=12;
$polje_brojeva[]=23;
$polje_brojeva[]=35;

print_r($polje_brojeva);

show_polje();

?>
*/

function show_polje()
{ 
   global $polje_brojeva;
   
   $polje_brojeva[]=11;
   $polje_brojeva[]=100;
   $polje_brojeva[]=111;
    
print_r($polje_brojeva);
}

show_polje();

echo '<br/>';
session_start();


$_SESSION["var1"]=1234;
$_SESSION["var2"]="algebra";

$_SESSION["brojevi"]=array(1,4,6,7,8);

$_SESSION["brojevi"][]=1;
$_SESSION["brojevi"][]=4;
$_SESSION["brojevi"][]=6;
$_SESSION["brojevi"][]=7;
$_SESSION["brojevi"][]=8;

$naziv="algebra";

$_SESSION["var_naziv"]=$naziv;

$key="naziv";
$value="algebra";

$_SESSION[$key]=$value;


//session_start();

echo $_SESSION["var1"];
echo '<br/>';
echo $_SESSION["var2"];
echo '<br/>';
$var1=$_SESSION["var1"];
$var2=$_SESSION["var2"];

foreach($_SESSION["brojevi"] as $key => $value) {
    echo $value.'<br/>';
    
}

echo '<hr/>';
setcookie("var1", '1234', time()+60);

setcookie("var2", 'algebra', time()+60);


print_r($_COOKIE);

//setcookie('',serialize-provjeri što je to



/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

