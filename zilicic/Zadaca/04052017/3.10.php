<?php
$mysqli=new mysqli('localhost','root','','fakultet');
mysqli_set_charset($mysqli,'utf8');
if(mysqli_connect_errno()){
echo "Pogreška kod spajanja";
echo mysqli_connect_error();
exit;
}
echo "Zadatak 3.10.1. ispiši prezimena i matične brojeve studenata čije ime je Ivan";
echo "<br/>";

 $query="SELECT * FROM stud WHERE imeStud='Ivan'";
if($result=$mysqli->query($query)){
while ($row=$result->fetch_assoc()) {
echo "Prezime: ".$row["prezStud"];
echo '<br/>';
echo "Matični broj: ".$row["mbrStud"];
echo '<br/>';
}
}
 echo "<hr>";
echo "Zadatak 3.10.2. Ispiši sve predmete";
echo "<br/>";
 $query="SELECT DISTINCT nazPred FROM pred";
 if($stmt=$mysqli->prepare($query))
 $stmt->execute();
 $stmt->bind_result($col1);
 while ($stmt->fetch()){
 echo $col1;
 echo "<br/>";
 }
 echo "<hr>";
  echo "Zadatak 3.10.3. Ispiši sve studente, ime i prezime čije prezime počinje slovom B";
echo "<br/>";

$query=<<<END
        SELECT imeStud,prezStud FROM stud WHERE prezStud LIKE 'B%';
END;

  if($stmt=$mysqli->prepare($query)){
 $stmt->execute();
 
 $stmt->bind_result($col1,$col2);
 while($stmt->fetch())
     {
 
 echo $col1.' '.$col2;
 echo "<br/>";
  }
 }
 echo "<hr>";
  echo "Zadatak 3.10.4. Ispiši sve studente,ime i prezime koji su rođeni u Zagrebu";
echo "<br/>";
$query=<<<END
        SELECT imeStud,prezStud FROM stud WHERE pbrRod=10000;
END;

  if($stmt=$mysqli->prepare($query)){
 $stmt->execute();
 
 $stmt->bind_result($col1,$col2);
 while($stmt->fetch())
     {
 
 echo $col1.' '.$col2;
 echo "<br/>";
  }
 }
 echo "<hr>";
  echo "Zadatak 3.10.5. Ispiši koliko studenata ima ime koje počinje slovom A mysql_num_rows";
echo "<br/>";
$query_tpl=<<<END
        SELECT imeStud FROM stud WHERE imeStud LIKE ? ;
END;
$slovo="A%";
 if($stmt=$mysqli->prepare($query_tpl)){
     $stmt->bind_param('s',$slovo);
 
 $stmt->execute();
 $stmt->bind_result($col1);
echo " Broj studenata čije ime počinje slovom A : ".$stmt->num_rows;

 echo "<br/>";
 }
 
echo "<hr>";
  echo "Zadatak 3.10.6. Prebroji nstavnike pomoću COUNT čije prezime počinje slovom M";
echo "<br/>";
$query_tpl=<<<END
        select count(*) from nastavnik WHERE prezNastavnik LIKE ? ;
END;
$prez="M%";
 if($stmt=$mysqli->prepare($query_tpl)){
     $stmt->bind_param('s',$prez);
  $stmt->execute();
 $stmt->bind_result($col1);
 while($stmt->fetch()){
     echo " Broj nastavnika čije prezime počinje slovom B : ".$col1;

 echo "<br/>";
 }
 }