<?php

include 'dbconnect.php';


$sql = "SELECT stud.mbrStud, stud.imeStud, stud.prezStud FROM fakultet.stud WHERE imeStud = 'Ivan'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "Zadatak 1";
    while($row = $result->fetch_assoc()) {
        echo "<p>Mbr: " . $row["mbrStud"]. " / Ime: " . $row["imeStud"]. " / Prezime: " . $row["prezStud"]. "</p>";
    }
} else {
    echo "0 results";
}

echo "<hr>";

$sql = "SELECT * FROM fakultet.pred ORDER BY pred.nazPred ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "Zadatak 2";
    while($row = $result->fetch_assoc()) {
        echo "<p>Predmet: " . $row["nazPred"]. "</p>";
    }
} else {
    echo "0 results";
}

echo "<hr>";

$sql = "SELECT stud.imeStud, stud.prezStud FROM fakultet.stud WHERE stud.imeStud LIKE 'B%'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "Zadatak 3";
    while($row = $result->fetch_assoc()) {
        echo "<p>Ime: " . $row["imeStud"]. " / Prezime: " . $row["prezStud"]. "</p>";
    }
} else {
    echo "0 results";
}

echo "<hr>";

$sql = "SELECT stud.imeStud, stud.prezStud, mjesto.nazMjesto FROM fakultet.stud INNER JOIN fakultet.mjesto ON stud.pbrRod = mjesto.pbr WHERE mjesto.nazMjesto = 'Zagreb'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "Zadatak 4";
    while($row = $result->fetch_assoc()) {
        echo "<p>Ime: " . $row["imeStud"]. " / Prezime: " . $row["prezStud"]. " / Mjesto: " . $row["nazMjesto"]. "</p>";
    }
} else {
    echo "0 results";
}

echo "<hr>";

$sql = "SELECT stud.imeStud FROM fakultet.stud WHERE stud.imeStud LIKE 'A%'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "Zadatak 5";
    echo "<br>";
    $rowcount=mysqli_num_rows($result);
    printf("Broj studenata kojima počinje ime sa slovom A je %d.\n",$rowcount);
} else {
    echo "0 results";
}

echo "<hr>";

$sql = "SELECT COUNT(nastavnik.imeNastavnik) as total FROM fakultet.nastavnik WHERE nastavnik.prezNastavnik LIKE 'M%'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "Zadatak 6";   
    while($row = $result->fetch_assoc()) {
        echo "<p>Total: " . $row["total"]. "</p>";
    }
    

} else {
    echo "0 results";
}

mysqli_close($conn);


?>