<?php

include ("db_connection.php");

$query1="SELECt imeStud,prezStud";
$query1 .= " FROM stud";
$query1 .=" WHERE pbrStan=10040";

$result1= mysqli_query($conn,$query1);

echo "Broj polja u zapisu: ".mysqli_num_fields($result1);

?>