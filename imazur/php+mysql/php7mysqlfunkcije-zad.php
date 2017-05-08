<?php
include("dbcon.php");

$querry = "SELECT*FROM stud WHERE pbrStan=10040";
$result = mysqli_query($query);

echo 'broj pronadjenih zapisa: '.mysqli_affected_rows();

$querry = "SELECT*FROM stud WHERE pbrStan=10040";
$result = mysqli_query($db, $guery);
 
 $br_result = mysqli_affected_rows($db);
 
 if($br_result <= 0){
     
     echo "Ne postoji niti jedan rezultat";
 } else {
     
     while ($student = mysqli_fetch_array($db)){
         
     }
 }
 echo "<br>";

if(mysqli_close($conn)){
     
     echo 'Konekcija zatvorena';
 } else {
      
     echo 'Doslo je do greske';
 }
 


$query1 = "INSERT INTO dvorana(oznDvorana,kapacitet)";
$query1 .="VALUES('M2', 14)";
     
$result1 = mysqli_query($conn, $query1);
   
     echo "Zadnje pohranjeni ID :". mysqli_insert_id($result1);

$query2 = "SELECT imeStud, prezStud";
$query2 .="FROM stud";
$query2 .="WHERE pbrStan=10040";
     
     $result2 = mysqli_query($conn, $query2);
    
    echo "Broj polja us zapisu:" . mysqli_num_fields($result2);
  


$query1 = "SELECT imeStud, prezStud ";
$query1 .= "FROM stud ";
$query1 .="WHERE pbrStan=10040";
$result1 = mysqli_query($query1);

    echo "broj polja u zapisu: ".mysqli_num_fields($result1);

$query3 = "SELECT imeStud, prezStud";
$query3 .="FROM stud";
$query3 .="WHERE pbrStan=10000";
    
$result3 = mysqli_query($conn, $query3);
    
    echo "Broj zapisa: ". mysqli_num_rows($result3);
    
    $br_result = mysqli_num_rows($result3);
    
    if ($br_result <=0){
         
        echo "Ne postoji niti jedan rezultat";
    }else{
         
         while ($student = mysqli_fetch_array($result3)){
             
             
         }
     }
     
     
     
 ?>
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

