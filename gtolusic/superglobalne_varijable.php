<?php

$polje_brojeva=array();
function show_polje()

{
    
    $polje_brojeva[]=11;
     $polje_brojeva[]=100;
      $polje_brojeva[]=111;
      
print_r($polje_brojeva);

}

show_polje();

/*
 $polje_brojeva[]=12;
  $polje_brojeva[]=23;
   $polje_brojeva[]=35;
   
   print_r($polje_brojeva);
   show_polje();*/
   
   


   
/*function show_polje()
   {
       global $polje_brojeva;
       
        $polje_brojeva[]=11;
         $polje_brojeva[]=11;
          $polje_brojeva[]=11;
       
          print_r($polje_brojeva);
       
   }
  */
 


/*


session_start();


*/






/*

session_start();
$_SESSION["var1"]=1234;
$_SESSION["var2"]="Algebra";




 */




/*
session_start();
$_SESSION["var1"]=1234;
$_SESSION["var2"]="Algebra";

echo $_SESSION["var1"];
echo $_SESSION["var2"];
  */
 




/*
$_SESSION["brojevi"]=array(1,4,6,7,8);

foreach ($_SESSION["brojevi"] as $key=> $val)
{
    
    echo $val.'<br>';
    
}
 
 */






/*setcookie('var1','1234', time()+60); */




/* setcookie ('naziv, 'Algebra', time()+60);
 * print_r($_COOKIE); */





/*setcookie ('naziv', 'Algebra', time()+60);
 * echo $_COOKIE ["naziv"];
 */




/*function setcookie($name, $value='',$expire)
 {
 $_COOKIE[$name]=$value;
 return setcookie($name, $value, $expire)
 }*/






/*setcookielive('naziv, 'Algebra', time()+60);
 echo $_COOKIE["naziv"];
 */