<?php

include ("db_connection.php");
$query1="SELECT imeStud,prezStud FROM stud WHERE pbrStan=10000";
//$query1="SELECT imeStud,prezStud";
//$query1.="FROM stud";
//$query1.="WHERE pbrStan=10000";
$result1= mysqli_query($conn, $query1);

echo 'Broj zapisa: '. mysqli_num_rows($result1);
echo '<br/>';

$br_result= mysqli_num_rows($result1);

if($br_result<=0)
{
    echo 'Ne postoji niti jedan rezultat';
    }
 else
     {
     while($student= mysqli_fetch_array($result1, MYSQLI_NUM))   
     {
         print_r($student);
         echo '<br/>';
     }
     
     }
