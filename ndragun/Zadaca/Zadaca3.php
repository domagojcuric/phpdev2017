<?php

// Zadatak 1 - Unijeti polje s 10 studenata, sve malim slovima
$student = array("prvi"=>"alen", 
                  "drugi"=>"nenad", 
                  "treci"=>"marko", 
                  "cetvrta"=>"natalija", 
                  "peti"=>"martin",
                  "sesta"=>"josipa",
                  "sedmi"=>"jura",
                  "osma"=>"mirta",
                  "deveti"=>"karlo",
                  "deseti"=>"leonardo");
        
foreach($student as $key=>$value){
    
   echo $key. " u dnevniku je " .$value. "!<br>";
}

echo "<hr>";
// Zadatak 2 - Pronaći sve studente čije ime je kraće od 5 znakova

foreach($student as $studenti) {
    
    if(strlen($studenti) < 5) 
        
	echo $studenti . "<br>";
    
}

echo "<hr>";

// Zadatak 3 - Dodati još 5 studenata
array_push($student, "marija", "stefan", "jurica", "kreso", "anica");

foreach($student as $key=>$value){
    
echo "student/ica - " .$value. "!<br>";

}

echo "<hr>";

// Zadatak 4 - Maknuti zadnja dva studenta
array_pop($student);
array_pop($student);

foreach($student as $studenti){
echo $studenti. "<br>";
}

echo "<hr>";

// Zadatak 5 - Nad svakim studentom pozvati funkciju ucfirst() koja će postaviti prvo slovo veliko
foreach($student as $studenti){
echo ucfirst($studenti). "<br>";
}

echo "<hr>";

// Zadatak 6 - Navedite dva polja, u jedno stavite studente s parnim brojem u drugo neparni
unset($student);

$student = array(1=>"alen", 
                  2=>"nenad", 
                  3=>"marko", 
                  4=>"natalija", 
                  5=>"martin",
                  6=>"josipa",
                  7=>"jura",
                  8=>"mirta",
                  9=>"karlo",
                  10=>"leonardo");

foreach ($student as $br => $st) {
    if ($br % 2 == 0) {
        $even[] = $st;
    }
    else {
        $odd[] = $st;
    }
}

print_r($even);

echo "<br/>";

print_r($odd);

echo "<hr>";

// Zadatak 7 - Unijeti polje sa 10 temperatura. Pronaći manju, najveću i srednju temperaturu

$temperatura = array(1,30,4,44,31,16,22,13,1,38,7);

$najmanja = min($temperatura);
$najveca = max($temperatura);


echo "Najmanja temperatura je ". $najmanja;
echo "<br/>";
echo "Srednja temperatura je : ";
echo number_format(array_sum($temperatura) / count($temperatura), 1);
echo "<br/>";
echo "Najveca temperatura je ". $najveca;
