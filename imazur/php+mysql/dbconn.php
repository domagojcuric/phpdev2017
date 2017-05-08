<?php
$server='localhost';
$username='root';
$password='';
$database='fakultet';


/*
$db =  mysqli_connect($server, $username, $password) or die(mysqli_error(!$db));

if($db)
{
    echo 'spojeni na BP';
    $db_selected=mysqli_select_db($db,$database);
    
    if($db_selected)
        echo ' baza uspješno odabrana';
    else
        echo ' pogreška kod odbabira';
    }

    else
        echo ' greška prilikom spajanja';
 * 
 */
    

$db = mysqli_connect($server, $username, $password, $database);
// Check connection
if (!$db) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

