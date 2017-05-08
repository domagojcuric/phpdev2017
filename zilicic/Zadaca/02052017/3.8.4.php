<?php

// mysqli_num_fields 
//mysqli_field_count
include("db_connection.php");
$query1="SELECT imeStud,prezStud FROM stud WHERE pbrStan=10040";
//$query1.="FROM stud";
//$query1.="WHERE pbrStan=10040";
    $result1= mysqli_query($conn, $query1);
   echo 'Broj polja u zapisu: '. mysqli_num_fields($result1);
   
