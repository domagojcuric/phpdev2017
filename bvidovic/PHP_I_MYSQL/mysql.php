<?php
include ("db_connection.php");

function begin()
{
  global $conn;
  $query ="begin";
  $result = mysqli_query($conn, $query);
}

function commit()
{
   global $conn;
   $query = "commit";
   $result = mysqli_query($conn, $query);
}  
function rollback()
{
    global $conn;
    $query = "rollback";
    $result = mysqli_query($conn, $query);
    
}
begin();

$error_num = 0;

$query = "insert into mjesto2(pbr,nazMjesto,sifZupanija)";
$query.= "values('00000','Zadar',13)";
$result = mysqli_query($conn, $query);

if(!$result)
    $error_num++;

$query = "insert into mjesto2(pbr,nazMjesto,sifZupanija)";
$query.= "values('51000','Rijeka',8)";
$result = mysqli_query($conn, $query);

if(!$result)
    $error_num++;

$query = "insert into mjesto2(pbr,nazMjesto,sifZupanija)";
$query.= "values('10000','Zagreb',21)";
$result = mysqli_query($conn, $query);

if(!$result)
    $error_num++;

if($error_num <=0){
    commit();
    echo "+";
}
else {
    rollback();
echo "-";
}

 






?>