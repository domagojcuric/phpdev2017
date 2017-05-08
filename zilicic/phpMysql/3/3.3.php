<?php

include ("db_connection.php");

$query='SELECT imeSTUD AS ime,prezSTUD AS prezime';
$query.='FROM stud';
$query.='WHERE pbrStan=1000';
$result = mysqli_query($conn, $query);

while($row = mysqli_fetch_assoc($result))
    
{
    echo 'ime: '.$row->imeStud;
    echo 'prezime: '.$row->prezStud;
   
}