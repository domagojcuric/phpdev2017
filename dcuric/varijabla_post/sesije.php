<?php

session_start();

$_SESSION["var1"]=123;
$_SESSION["var2"]="algebra";

$_SESSION["brojevi"]=array(1,4,6,7,8);

foreach($_SESSION["brojevi"] as $key => $val)
{
    echo $val."<br/>";
}

$naziv="algebra";

$_SESSION["var_naziv"]= $naziv;

$key="naziv";
$val="algebra";

$_SESSION[$key]= $val;

echo $_SESSION["var1"];
echo $_SESSION["var2"];

$var1= $_SESSION["var1"];
$var2= $_SESSION["var2"];


setcookie("var1","1234",time()+60);

print_r($_COOKIE);

echo $_COOKIE["naziv"];

setcookie("var2","algebra",time()+5*24*60*60);

setcookie("var20","algebra");



function setcookielive($name,$value="",$expire)
{
   
}
?>