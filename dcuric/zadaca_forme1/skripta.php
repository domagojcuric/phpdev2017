<html>
    <body>
        <?php for($i=1;$i<=5;$i++){?>
        <a href="skripta.php?broj=<?php echo $i?>"><?php echo $i  ?></a>
        <?php } ?>
        
        
        
    </body>
    
    
    
</html>

<?php 

	if(  isset($_GET["broj"] )  ) {
		echo "<pre/>";
		echo "Upisali ste broj ". $_GET['broj'];
		echo "<pre/>";
	}


 ?>

