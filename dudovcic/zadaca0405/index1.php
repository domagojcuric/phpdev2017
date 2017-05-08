<?php 

include("db_connection1.php");


if ( isset($_GET['id']) && $_GET['id'] == 1 ) {
	
	$template = "SELECT mbrStud, prezStud FROM stud WHERE imeStud=?";
	$ime = "Ivan";

	if ( $stmt = $mysqli->prepare($template) ) {
		$mbr = ""; $prezStud = "";
		$stmt->bind_param("s", $ime);
		$stmt->execute();
		$stmt->bind_result($mbr, $prezStud);
		while ( $stmt->fetch() ) {
			echo $mbr, " - " ,$prezStud."<br>";
		}
		$stmt->close();



	}
	$mysqli->close(); echo "<br><br><br>";



}





if ( isset($_GET['id']) && $_GET['id'] == 2 ) {
	

	$template = "SELECT nazPred FROM pred ORDER BY nazPred ASC";


	if ( $stmt = $mysqli->prepare($template) ) {
		$pred  = "";
		// $stmt->bind_param("s", $ime);
		$stmt->execute();
		$stmt->bind_result($pred);
		while ( $stmt->fetch() ) {
			echo $pred ."<br>";
		}
		$stmt->close();



	}
	$mysqli->close(); echo "<br><br><br>";


}






if ( isset($_GET['id']) && $_GET['id'] == 3 ) {
	

	$template = "SELECT imeStud, prezStud FROM stud WHERE prezStud LIKE ?";
	$prez = "B%";


	if ( $stmt = $mysqli->prepare($template) ) {
		$ime  = ""; $prezStud = "";
		$stmt->bind_param("s", $prez);
		$stmt->execute();
		$stmt->bind_result($ime, $prez);
		while ( $stmt->fetch() ) {
			echo $ime, " ", $prez ."<br>";
		}
		$stmt->close();



	}
	$mysqli->close(); echo "<br><br><br>";


}






if ( isset($_GET['id']) && $_GET['id'] == 4 ) {
	
	$template = "SELECT imeStud, prezStud FROM stud WHERE pbrRod=?";
	$pbrRod = "10000";


	if ( $stmt = $mysqli->prepare($template) ) {
		$ime = ""; $prez = "";
		$stmt->bind_param("s", $pbrRod);
		$stmt->execute();
		$stmt->bind_result($ime, $prez);
		while ( $stmt->fetch() ) {
			echo $ime, " ", $prez ."<br>";
		}
		$stmt->close();



	}
	$mysqli->close(); echo "<br><br><br>";

}





if ( isset($_GET['id']) && $_GET['id'] == 5 ) {
	

	$template = "SELECT imeStud FROM stud WHERE imeStud LIKE ?";
	$ime = "A%";


	if ( $stmt = $mysqli->prepare($template) ) {
		$imeStud = 0;
		$stmt->bind_param("s", $ime);
		$stmt->execute();
		$stmt->store_result();
		
		echo $stmt->num_rows;

		$stmt->close();



	}
	$mysqli->close(); echo "<br><br><br>";


}






if ( isset($_GET['id']) && $_GET['id'] == 6 ) {
	

	$template = "SELECT COUNT(prezNastavnik) FROM nastavnik WHERE prezNastavnik LIKE ?" ;
	$like = "M%";


	if ( $stmt = $mysqli->prepare($template) ) {
		$count = 0;
		$stmt->bind_param("s", $like);
		$stmt->execute();
		$stmt->bind_result($count);
		$stmt->fetch(); echo $count;
		$stmt->close();



	}
	$mysqli->close(); echo "<br><br><br>";



}




