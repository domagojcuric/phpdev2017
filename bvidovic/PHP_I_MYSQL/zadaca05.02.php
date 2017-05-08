<?php
include 'db_connection.php';echo "<br>";
//mysqli_affected_rows

$guery = "select * from stud where pbrStan=10040";
$result = mysqli_query($conn, $guery);

echo 'Broj pronadjenih zapisa :' . mysqli_affected_rows($conn);echo "<br>";



$guery = "select * from stud where pbrStan=10040";
$result = mysqli_query($conn, $guery);

$br_result = mysqli_affected_rows($conn);

if($br_result <= 0){
    
    echo "Ne postoji niti jedan rezultat";
} else {
    
    while ($student = mysqli_fetch_array($conn)){
        
    }
}
echo "<br>";

  //mysgli_close

if(mysqli_close($conn)){
    
    echo 'Konekcija zatvorena';
} else {
     
    echo 'Doslo je do greske';
}


   




   ?>