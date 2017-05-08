<?php

include ("db_connection.php");

if(mysqli_close($conn))
    echo "konekcija zatvorena";
else {
  echo "doslo do greske";  
}