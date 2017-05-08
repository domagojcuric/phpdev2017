<?php

session_start();
/*
$_SESSION["var1"] = 1234;
$_SESSION["var2"] = "Algebra";

$_SESSION["brojevi"] = array(1,4,6,7,8);


$naziv = "Algebra";

$_SESSION["var_naziv"] = $naziv;

$key = "naziv";
$val = "Algebra";

$_SESSION[$key] = $val;
 */


$_SESSION["var1"] = 1234;
$_SESSION["var2"] = "Algebra";

echo $_SESSION["var1"];
echo "<hr>";
echo $_SESSION["var2"];
echo "<hr>";

$var1 = $_SESSION["var1"];
$var2 = $_SESSION["var2"];

$_SESSION["brojevi"] = array(1,4,6,7,8);

foreach($_SESSION["brojevi"] as $key => $val)
{
    echo $val.'<br/>';
}
setcookie('var1', '1234', time()+60);

setcookie('var2', 'Algebra', time()+5*24*60*60);

setcookie('var2', 'Algebra');
echo "<hr> Cookies:";
print_r($_COOKIE);
echo "<hr> Cookies: ";
echo $_COOKIE["var2"];

function setcookielive($name, $value='', $expire)
{
    $_COOKIE[$name] = $value;
    return setcookie($name,$value,$expire);
}
echo "<hr> Cookies: ";
setcookielive('naziv', 'Algebra', time()+60);

echo $_COOKIE["naziv"];

$_COOKIE["naziv"] = 'Algebra';

echo "<hr>";

$_SERVER["DOCUMENT_ROOT"];
$_SERVER["HTTP_HOST"];
$_SERVER["HTTP_USER_AGENT"];
$_SERVER["REMOTE_ADDR"];
$_SERVER["REQUEST_URI"];

echo "<pre>";
print_r($_SERVER);
echo "</pre>";
