<?php

// zad1

$filename = "ucenici.txt";

$datoteka = file ($filename);
foreach ($datoteka as $line_num=> $line) {
    echo "Linija #<b>".$line_num."</b>: ".$line."<br/>";
}




echo "<hr>";


//zad2
echo ' < form method= "post" action="">
Tekst: <input type="text" name="txt" value=""/><br/>
<input type="submit" name="button" value="spremi" />
</form>';

if(isset($_POST["button"]))
{
$filenamee = "profesori.txt";

$handlee = fopen ($filenamee, "a+");
fwrite ($handlee, "Maja Maja");
fclose($handlee);
}

/*
if(isset($_POST["btn"]))
/* 
 * To change this license$handle, filesize header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

