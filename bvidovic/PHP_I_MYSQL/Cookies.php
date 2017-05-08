<?php



setcookie('var1','1234',time()+60);
print_r($_COOKIE);


function setcookielive($name,$value='',$expire)
{
    $_COOKIE[$name] = $value;
    return setcookie($name,$value,$expire);
} 
setcookielive('naziv','Algebra',time()+60);
echo $_COOKIE['naziv'];

$_SERVER["DOCUMENT_ROOT"];

$_SERVER["HTTP_HOST"];

$_SERVER["HTTP_USER_AGENT"];

$_SERVER["REMOTE_ADDR"];





print_r($_SERVER);
?>