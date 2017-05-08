<?php

session_start();

$_SESSION['var1'] = 1234;
$_SESSION['var2'] = 'Algebra';
$_SESSION['brojevi'] = array(1,4,6,7,8);
$naziv = 'Algebra';
$_SESSION['var_naziv'] = $naziv;
$key = 'naziv';
$val = 'Algebra';
$_SESSION[$key] = $val;

echo $_SESSION['var1'];
echo $_SESSION['var2'];

$var1 = $_SESSION['var1'];
$var2 = $_SESSION['var2'];

foreach($_SESSION['brojevi'] as $key => $val)
{
    echo $val."<br>";
}



?>