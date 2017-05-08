<?php

include ("db_mysqli.php");

echo " Zadatak 3.10.1<br/><br/>";

$query="SELECT mbrStud, prezStud FROM stud WHERE imeStud='Ivan'";

if($stmt=$mysqli->prepare($query)){

	$stmt->execute();
	$stmt->bind_result($col1,$col2);  

	while($stmt->fetch()){
		echo $col1." ".$col2;
		echo "<br/>";
	}
}

echo "<br/> Zadatak 3.10.2<br/><br/>";

$querry1="SELECT nazPred FROM pred ORDER BY nazPred";

if($stmt=$mysqli->prepare($querry1)){

	$stmt->execute();
	$stmt->bind_result($col1);  

	while($stmt->fetch()){
		echo $col1;
		echo "<br/>";
	}
}

echo "<br/> Zadatak 3.10.3<br/><br/>";

$query1="SELECT imeStud,prezStud FROM stud WHERE prezStud like 'b%' ORDER BY imeStud ASC";

if($stmt=$mysqli->prepare($query1)){

	$stmt->execute();
	$stmt->bind_result($col1,$col2);  

	while($stmt->fetch()){
		echo $col1." ".$col2;
		echo "<br/>";
	}
}

echo "<br/> Zadatak 3.10.4<br/><br/>";

$query2="SELECT imeStud, prezStud FROM stud INNER JOIN mjesto ON mjesto.pbr=stud.pbrRod WHERE mjesto.nazMjesto='Zagreb'";

if($stmt=$mysqli->prepare($query2)){

	$stmt->execute();
	$stmt->bind_result($col1,$col2);  

	while($stmt->fetch()){
		echo $col1." ".$col2;
		echo "<br/>";
	}
}


echo "<br/> Zadatak 3.10.5<br/><br/>";

$query3="SELECT imeStud FROM stud WHERE imeStud LIKE 'a%'";

if($stmt=$mysqli->prepare($query3)){

	$stmt->execute();
	$stmt->bind_result($col1);  

	while($stmt->fetch()){
		echo $col1;
		echo "<br/>";
	}
}


echo "<br/> Zadatak 3.10.6<br/><br/>";
$query4="SELECT count(prezNastavnik) FROM nastavnik WHERE prezNastavnik LIKE 'm%'";

if($stmt=$mysqli->prepare($query4)){

	$stmt->execute();
	$stmt->bind_result($col1);  

	while($stmt->fetch()){
		echo $col1;
		echo "<br/>";
	}
}