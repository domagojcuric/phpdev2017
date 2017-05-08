<!doctype html>
<html>
    <head>
	<title>DZ 163</title>
</head>
<?php

for($i=1;$i<=5;$i++)
{

   echo "<a href='skripta.php?broj=$i'> $i</a>";

}
             if(isset($_GET["broj"])) 
                 {  
                 echo "<br>";
                 echo $_GET["broj"];
                 }
     ?>

<html/>
