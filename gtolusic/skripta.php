<?php

for ($i=1;$i<=5;$i++) {
    
  echo "<a href='skripta.php?broj=".$i."'>".$i."</a><br>";
    
}

if (isset($_GET['broj']))
    
    {
    
    echo "odabrali ste broj:".$_GET['broj'];
    
}
echo "<br>";
print_r($_REQUEST);
?>