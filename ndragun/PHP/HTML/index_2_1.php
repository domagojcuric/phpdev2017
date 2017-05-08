<?php

$polje_brojeva = array();

function show_polje()
{
    global $polje_brojeva; // Includa files koje su izvaj funkcije
    
    $polje_brojeva[] = 11;
    $polje_brojeva[] = 100;
    $polje_brojeva[] = 111;
    
    print_r($polje_brojeva);
}

$polje_brojeva[] = 12;
$polje_brojeva[] = 23;
$polje_brojeva[] = 111;

echo "<pre>";
print_r($polje_brojeva);
echo "</pre>";

echo "<hr>";

echo "<pre>";
show_polje();
echo "</pre>";