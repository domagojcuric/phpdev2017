<!DOCTYPE html>
<html>
<head>
	<title>Tablica mnozenja</title>
</head>
<body>
<?php  

//Tablica mnozenja
echo "tablica mnozenja";
echo"<table border 1px>";

for($x=1; $x<=10; $x++)
{
    echo "<tr>";
    for($y=1; $y<=10; $y++)
    {
       echo "<td>".$x * $y."</td>" ;
    }
    echo"</tr>";
}
    
echo"</table>";
    
    
    
    
    
  
?>
</body>
</html>

