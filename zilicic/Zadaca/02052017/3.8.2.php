<?php

//mysqli_close

include("db_connection.php");
if(mysqli_close($conn))
    echo 'Konekcija zatvorena';
else 
    echo 'Doslo je do greske';


