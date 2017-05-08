<?php


include ("db_connection.php");

$query= "SELECT * FROM stud WHERE pbrStan=10040";
$result=mysqli_query($conn,$query);

echo "broj pronađenih zapisa: ".mysqli_affected_rows($conn);

$br_result= mysqli_affected_rows($conn);


if($br_result<=0)
{
    echo "<br>ne postoji niti jedan rezultat";
    
}

else
{
    while($student= mysqli_fetch_array($result));
}


?>