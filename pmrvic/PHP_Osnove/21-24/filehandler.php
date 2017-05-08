<?php
echo "File handler";

$filename='ucenici.txt';

$handle=fopen($filename, 'r+');
$contents=fread($handle, 
        filesize($filename));

fwrite($handle, "UPIS NA POČETAK %%%%%%%%%%\n");
fclose($handle);

echo $contents;
/**/
// korištene funkcije
/*
fopen(filename, mode);
fread(handle, length);
fwrite(handle, string);
fclose(handle);
*/

$datoteka=file($filename);

echo "<pre>";
print_r($datoteka);

foreach ($datoteka as $key => $value) {
	echo "broj linije:".$key." value:".$value."<br/>";
}

?>