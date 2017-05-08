<?php
include 'db_connection.php';echo "<br>";

//mysql_insert_id
   
   
     $query1 = "INSERT INTO dvorana(oznDvorana, kapacitet)";
     $query1 .=" VALUES('M2','14')";
     
     $result1 = mysqli_query($conn, $query1);
   
     echo "Zadnje pohranjeni ID :". mysqli_insert_id($conn);
     
   //mysql_num_rows
    
     $query2 = "SELECT imeStud, prezStud";
     $query2 .=" FROM stud";
     $query2 .=" WHERE pbrStan=10040";
     
     $result2 = mysqli_query($conn, $query2);
     
     echo "Broj polja us zapisu:" . mysqli_num_fields($result2);
  
     //mysql_num_rows
     
     $query3 = "SELECT imeStud, prezStud";
     $query3 .=" FROM stud";
     $query3 .=" WHERE pbrStan=10000";
     
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


