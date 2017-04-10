<?php 

echo "File handler";

$filename ="ucenici.txt";

$datoteka = file($filename);

echo "<pre>";

print_r($datoteka);