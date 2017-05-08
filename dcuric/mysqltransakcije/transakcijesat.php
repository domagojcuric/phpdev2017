<?php

include("db_connection.php");

function begin()
{
    global $conn;
    $query="BEGIN";
    $result= mysqli_query($conn,$query);
            
}

function commit()
{
    global $conn;
    $query="COMMIT";
    $result=mysqli_query($conn,$query);
    
}

function rollback()
{
    global $conn;
    $query="ROLLBACK";
    $result=mysqli_query($conn,$query);
    
}

begin();

$error_num=0;

$query=" INSERT INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES ('23000','Zadar','13')";
$result=mysqli_query($conn,$query);

if(!$result)
    $error_num++;

$query="INSERT INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES ('51000','Rijeka','8')";
$result=mysqli_query($conn,$query);

if(!$result)
    $error_num++;

$query="INSERT INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES ('10000','Zagreb','21')";
$result=mysqli_query($conn,$query);

if(!$result)
    $error_num++;

if($error_num <= 0){
    commit();
    echo "uspjesno";
}
else {
    rollback();
    echo "greska ".$error_num;
}

?>
    