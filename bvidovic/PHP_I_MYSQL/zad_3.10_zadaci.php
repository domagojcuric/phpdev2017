<?php include 'new_mysqli.php'; 

      
      //zad 3.10 Zadaci za ponavljanje ZAD 1
      $query_tpl =" SELECT mbrStud, prezStud FROM stud WHERE imeStud = ?";
      $imeStud = "Ivan";
      
      
      
      if($stmt = $mysqli->prepare($query_tpl)){
          $stmt->bind_param('s',$imeStud);
          $stmt->execute();
          $stmt->bind_result($mbrStud, $prezStud);
          while($stmt->fetch()){
          echo $mbrStud . $prezStud ."<br>";
          }
          $stmt->close();
       }
          $mysqli->close();
          echo "<br>";
          echo "<br>";
          
          //zad 3.10 Zadaci za ponavljanje ZAD 2

          include 'new_mysqli.php';
          $query_tpl =" SELECT nazPred FROM pred order by nazPred asc";
     if($stmt = $mysqli->prepare($query_tpl)){
          $stmt->execute();
          $stmt->bind_result($nazPred);
          while($stmt->fetch()){
          echo $nazPred . "<br>";
          }
          $stmt->close();
       }
          $mysqli->close();
          echo "<br>";
          echo "<br>";
          
          //zad 3.10 Zadaci za ponavljanje ZAD 3
          include 'new_mysqli.php';
          
          $query_tpl =" SELECT  imeStud, prezStud FROM stud WHERE prezStud LIKE 'B%'";
          $prez = 'B';
     if($stmt = $mysqli->prepare($query_tpl)){
          $stmt->bind_param('s', $prez);
          $stmt->execute();
          $stmt->bind_result($imeStud, $prezStud);
          while($stmt->fetch()){
          echo  $imeStud.' '. $prezStud."<br>";
          }
          $stmt->close();
       }
          $mysqli->close();
          echo "<br>";
          echo "<br>";
          
          //zad 3.10 Zadaci za ponavljanje ZAD 4
          include 'new_mysqli.php';
        $query_tpl =" SELECT imestud, prezStud FROM stud WHERE pbrRod = 10000";
        $pbr = "10000";
      
      if($stmt = $mysqli->prepare($query_tpl)){
          $stmt->bind_param('s', $pbr);
          $stmt->execute();
          $stmt->bind_result($mbrStud, $prezStud);
          while($stmt->fetch()){
          echo $mbrStud.' '.$prezStud."<br>";
          }
          $stmt->close();
       }
          $mysqli->close();
          echo "<br>";
          echo "<br>";
          
          //zad 3.10 Zadaci za ponavljanje ZAD 5
          include 'new_mysqli.php';
           
          $query_tpl =" SELECT imestud FROM stud WHERE imeStud LIKE 'a%'";
          $result= mysqli_query ($mysqli, $query_tpl);
      
       if($stmt = $mysqli->prepare($query_tpl)){
          $stmt->execute();
          $stmt->bind_result($imeStud);
        
          echo"Broj studenata je:" . mysqli_num_rows($result);
          $stmt->close();
       }
          $mysqli->close();
          echo "<br>";
          echo "<br>";
           
          //zad 3.10 Zadaci za ponavljanje ZAD 6
          include 'new_mysqli.php';
          
          $query_tpl = "SELECT COUNT(preznastavnik) from nastavnik WHERE preznastavnik LIKE ?";
          $prezime='m%';
          if ($stmt = $mysqli->prepare($query_tpl))
      {
          $stmt->bind_param('s', $prezime);
          $stmt->execute();
          $stmt->bind_result($count);
          while ($stmt->fetch())
          {echo "Broj nastavnika je:".$count;
          echo "<br>";
          }
          $stmt->close();
          }
          $mysqli->close();
          
          
          
          
        ?>
        
       
  