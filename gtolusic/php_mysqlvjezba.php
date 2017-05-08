<?php

//spajanje na bazu

$spajanje=mysqli_connect('localhost', 'root','');
$baza=mysqli_select_db($spajanje, 'fakultet');
mysqli_set_charset($spajanje,"utf8");

if ($spajanje && $baza)
    
    echo "uspješno ste spojeni na database";

else
    echo "ništa to";
//igranje sa bazom

$result=mysqli_query($spajanje, "SELECT * FROM stud");

echo "<br>";

if ($result)
{ echo "studenti";
echo "broj redova:".mysqli_num_rows($result);}

else
    
    echo "nema studenata";


$query="select * from stud";
$results=mysqli_query($spajanje, $query);
$row= mysqli_fetch_object($results);

foreach ($row as $rows)
  
{echo"<pre>";
   echo $rows;
echo "</pre>";}
    



    
