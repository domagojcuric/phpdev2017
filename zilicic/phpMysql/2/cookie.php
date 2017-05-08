<?php

setcookie('naziv','Algebra',time()+60);
print_r($_COOKIE); // gornja vrijednost nakon osvjezavanja stranice
echo '<br/>';
//drugi nacin
setcookie('naziv','Algebra',time()+60);
echo $_COOKIE["naziv"]; // gornja vrijednost nakon osvjezavanja stranice

//vlastita funkcija koja vrijednost prikazuje odmah

function setcookielive($name,$value='',$expire)
{
    $_COOKIE[$name]=$value;
    return setcookielive($name,$value,$expire);
    
}
echo $_COOKIE["naziv"];