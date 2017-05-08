<?php

include ("db_connection.php");

$query1="SELECt imeStud,prezStud";
$query1 .= " FROM stud";
$query1 .=" WHERE pbrStan=10000";

$result1= mysqli_query($conn,$query1);

echo "Broj zapisu: ". mysqli_num_rows($result1);

$br_result= mysqli_num_rows($result1);

if($br_result<=0)
{
    echo "ne postoji ni jedan rezultata";
}
else
{
    while($student= mysqli_fetch_array($result1)){
        echo "ispis";
    }
    }
    
?>

    