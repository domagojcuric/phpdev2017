<?php

include ("db_connection.php");

$query1="INSERT INTO dvorana (oznDvorana,kapacitet)";
$query1.= " VALUES ('M2','14')";
$result1= mysqli_query($conn, $query1);

echo "zadnje pohranjeni ID: ".mysqli_insert_id($conn);

?>

