
<html>
<body>
<form method="POST" action="#">

Odabrali ste broj :
<input type="number" name="broj" value="<?php echo $_REQUEST['broj']; ?>"/><br/>

</form> 
</body>
</html>
<?php

 for ($i=1;$i<=5;$i++) 

echo  
'<a href="skripta.php?broj='.($i).'">Poveznica'.' '.($i).'</a>'.'<br/>';
?>