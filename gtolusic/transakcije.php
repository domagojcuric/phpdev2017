<?php

$server = 'localhost';
$username = 'root';
$password = '';
$database = 'fakultet';

$conn = mysqli_connect($server, $username, $password) or die (mysqli_error($conn));
mysqli_set_charset($conn,"utf8");

if($conn)
{
	mysqli_select_db($conn, $database);
}
else
{
	echo 'Unable to connect to the database $database'; // -> Test
	echo mysqli_error($conn);
}


$query="insert into mjesto(pbr,nazMjesto,sifZupanija)";
$query.="Values ('23000', 'zadar', 13)";
$result=mysqli_query($query);

$query="insert into mjesto(pbr,nazmjesto,sifZupanija)";
$query.="values('51000', 'rijeka', 8)";
$result= mysqli_query($query);



/*

$query="Begin";
$result=mysql_query($query);
$query="insert into mjesto(pbr,nazmjesto,sifzupanija)";
$query.="values('23000','zadar',13)";
$result=mysql_query($query);

$query="insert int mjesto(pbr,nazmjesto,sifzupanija)";
$query.="values ('51000','rijeka',8)";
$result=mysql_query($query);
$query="Commit";
$result=mysql_query($query);
 */
 
/*
$error_num=0;

$query="begin";
$result=mysql_query($query);

$query="insert into mjesto(pbr,nazmjesto,sifzupanija)";
$query.="values ('23000', 'zadar',13)";
$result=mysql_query($query);


if(!$result)
    $error_num++;

$query="insert into mjesto(pbr,nazmjesto,sifzupanija)";
$query.="values ('51000','rijeka',8)";
$result=mysql_query($query);

if(!$result)
    $error_num++;

$query="insert into mjesto(pbr,nazmjesto,sifzupanija)";
$query.="values ('10000','zagreb',21)";
$result=mysql_query($query);

if (!$result)
    $error_num++;

if ($error_num<=0)
    $query="commit";
else
    $query="rollback";
$result=mysql_query($query);

*/
