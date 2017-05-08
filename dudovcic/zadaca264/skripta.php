<!DOCTYPE html>
<html>
<head>
	<title>Str 13 zad 2</title>
</head>
<body>

<?php 

for ( $i = 1; $i <= 5; $i ++) {
	echo "<a href='skripta.php?broj=$i'>$i</a>";
}

 ?>

</body>

<style type="text/css">

a {
	display: block;
	width: 50px;
	height: 50px;
}
</style>

</html>


<?php 

	if(  isset($_GET["broj"] )  ) {
		echo "<pre/>";
		echo "Upisali ste broj ". $_GET["broj"];
		echo "<pre/>";
	}


 ?>
