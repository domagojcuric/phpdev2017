<?php 

include("db_connection.php");
function begin($db) {
	$query = "BEGIN";
	$result = mysqli_query($db, $query);
	echo "<br>begin <br>";

}

function commit($db) {
	$query = "COMMIT";
	$result = mysqli_query($db, $query);
	echo "<br>OKcommit <br>";
}


function rollback($db) {
	$query = "ROLLBACK";
	$result = mysqli_query($db, $query);
	echo "<br>rollback <br>";
}

begin($db);


$error_num = 0;



$query = "INSERT INTO mjesto(pbr, nazMjesto, sifZupanija)";
$query .= " VALUES ('10000', 'Zagreb', 13)";
$result = mysqli_query($db, $query);

if($result) {
	$error_num++;
}


$query = "INSERT INTO mjesto(pbr, nazMjesto, sifZupanija)";
$query .= " VALUES ('35000', 'Slavonskii Brod', 35)";
$result = mysqli_query($db, $query);

if($result) $error_num++;

if($error_num <= 0) commit($db);
else rollback($db);


echo "gotovo";
echo $error_num;






