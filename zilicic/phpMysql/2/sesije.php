<?php

session_start();

$_SESSION["var1"]=1234;
$_SESSION["var2"]="Algebra";
echo $_SESSION["var1"].'<br/>';
echo $_SESSION["var2"].'<br/>';

        
// nacin prvi
$_SESSION["brojevi"]=array(1,4,6,7,8);
print_r($_SESSION["brojevi"]);
echo '<br/>';

//nacin drugi
$_SESSION["brojevi_2"][]=1;
$_SESSION["brojevi_2"][]=4;
$_SESSION["brojevi_2"][]=6 ;
$_SESSION["brojevi_2"][]=7;
$_SESSION["brojevi_2"][]=8;

print_r($_SESSION["brojevi_2"]);

// vrijednosti sesije se mogu spremiti u varijable
$var1=$_SESSION["var1"];
$var2=$_SESSION["var2"];

//upotreba spremljenih varijabli(sesija)
foreach($_SESSION["brojevi"] as $key=>$val)
{
    echo $val.'<br/>';
}
