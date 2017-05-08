<?php
//prvi nacin
/*
$db=mysql_connect('localhost','fakultet','fakultet');

if($db)
{
    echo 'Spojeni ste na bazu';
    $db_selected=mysql_select_db('fakultet',$db);
    
    if($db_selected)
        echo 'Baza podataka je uspjesno odabrana';
    
    else 'Doslo je do pogreske kod odabira'; 
        
    }
    else 
        echo 'Doslo je do pogreske prilikom spajanja';
   */ 
    //drugi nacin
   /* $server="localhost";
    $username="root";
    $password="";
    $database="fakultet";
    
    $db=mysql_connect($server,$username,$password);
  /*  
    if($db)
    {
        echo 'Spojeni ste na bazu';
        
        $db_selected=mysql_select_db($database,$db);
        
        if($db_selected)
            
            echo 'Baza podataka je uspjesno odabrana';
        else 
            echo 'Doslo je do pogreske kod odabira';
                  }
    else 
        echo 'Doslo je do pogresko prilikom spajanja';
    */
$server = 'localhost';
$username = 'root';
$password = '';
$database = 'fakultet';

$conn = mysqli_connect($server, $username, $password) or die (mysqli_error($conn));
mysqli_set_charset($conn,"utf8");

if($conn)
{
	mysqli_select_db($conn, $database);
         echo 'Spojeni ste na bazu';
}
else
{
	echo 'Unable to connect to the database $database';
	echo mysqli_error($conn);
}
