<?php

//mysqli_affected_rows

include("db_connection.php");
$query="SELECT * FROM stud WHERE pbrStan=10040";
$result=mysqli_query($conn,$query); 
if (!$result) {
    die('Invalid query: ' . mysqli_error());
}
        echo 'Broj pronadjenih zapisa: '.mysqli_affected_rows($conn).'<br/>';

        //drugi dio
        
$query="SELECT * FROM stud WHERE pbrStan=10040";
$result=mysqli_query($conn,$query); 
$br_result= mysqli_affected_rows($conn);
if($br_result<=0)
{
    echo 'Ne postoji niti jedan rezultat';
    
}
 else 
     {
while($student= mysqli_fetch_array($result,MYSQLI_NUM))    
{
    print_r($student);
    echo '<br/>';
}  
}

