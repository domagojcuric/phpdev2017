<?php

/*include("db_connection.php");


$query="INSER INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES('23000','Zadar',13)";
$result= mysqli_query($query);

$query="INSER INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES('51000','Rijeka',8)";
$result= mysqli_query($query);

$query="BEGIN";
$result=mysqli_query($query);

$query="INSER INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES('23000','Zadar',13)";
$result= mysqli_query($query);

$query="INSER INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES('51000','Rijeka',8)";
$result= mysqli_query($query);

$query="COMMIT";
$result= mysqli_query($query);

$query="ROLLBACK";
$result= mysqli_query($query);

$error_num=0;

$query="BEGIN";
$result=mysqli_query($query);

$query="INSER INTO mjesto(pbr,nazMjesto,sifZupanija)";
$query.=" VALUES('23000','Zadar',13)";
$result= mysqli_query($query);

if(!$result)
    $error_num++;

if($error_num<=0)
    $querry="COMMIT";
else 
 $query="ROLLBACK";
$result= mysqli_query($query);

if(!$result){}
else
    $error_num++;

if(!$result)
    $error_num++;

*/
include("dbconn.php");

function begin()

{
    global $db;
    $query="BEGIN";
$result=mysqli_query($db,$query);
    
}

function commit()

{global $db;
    $query="COMMIT";
$result= mysqli_query($db,$query);
}

function rollback()
{global $db;
    $query="ROLLBACK";
$result= mysqli_query($db,$query);
}
begin();

$error_num=0;

$query="INSER INTO mjesto(pbr, nazMjesto, sifZupanija)";
$query.=" VALUES ('23999', 'Zadarr', 13)";
$result = mysqli_query($db,$query);

if(!$result)
    $error_num++;

$query="INSER INTO mjesto(pbr, nazMjesto, sifZupanija)";
$query.=" VALUES ('51999', 'Rijekaa', 8)";
$result = mysqli_query($db,$query);

if(!$result)
    $error_num++;

$query="INSER INTO mjesto(pbr, nazMjesto, sifZupanija)";
$query.=" VALUES ('10999', 'Zagrebb', 21)";
$result = mysqli_query($db,$query);

if(!$result)
    $error_num++;

if($error_num<=0){
    commit();
echo 'uspjesno commit';
}
else{ echo ' greska commit '.$error_num;    
    rollback();
}


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

