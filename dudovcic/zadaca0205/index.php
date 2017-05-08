<?php 


include("db_connection.php");

$query = "SELECT * FROM stud WHERE pbrStan=10040";
$result = mysqli_query($db, $query);


echo "Broj pronadjenih zapisa: ".mysqli_affected_rows($db)."<br>";

$br_result = mysqli_affected_rows($db);

if ( $br_result <= 0 ) {
	echo "Ne postoji niti jedan rezultat<br>";
} else {
	while ( $student = mysqli_fetch_array($result) ){
		echo print_r($student)."<br>";
	}
}

if ( mysqli_close($db) ) {
	echo "Konekcija zatvorena";
} else {
	echo "Doslo je do greskse";
}

$query1 = "INSERT INTO dvorana ( oznDvorana, kapacitet) ";
$query1 .= "VALUES('M2', '14')";
$result1 = mysqli_query($db, $query1);

echo "Zadnje porhanjeni ID: ".mysqli_insert_id($db)."<br>";


$query2 = "SELECT INTO imeStud, prezStud ";
$query2 .= "FROM stud ";
$query2 .= "WHERE pbrStan = 10040";


$query3 = "SELECT imeStud, prezStud ";
$query3 .= "FROM stud ";
$query3 .= "WHERE pbrStan=10000";
$result3 = mysqli_query($db, $query3);

echo "Broj zapisu: ".mysqli_num_rows($result3)."<br>";


$br_result = mysqli_num_rows($result3);

if( $br_result <= 0) {
	echo "Ne postoji niti jedan rezultat<br>";
} else {

	while ( $student = mysqli_fetch_array($result) ) {
		echo $student."<br>";
	}
}






