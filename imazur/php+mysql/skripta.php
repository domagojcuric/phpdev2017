<html>
    <body>
        



<?php
for($i=0; $i<5; $i++){?>
        <a href="skripta.php?broj=<?php echo $i?>"><?php echo $i  ?></a>

<?php } ?>

<h3>odabrali ste broj:</h3>

<?php
if( isset($_GET["broj"]))
{
       echo $_GET["broj"];
   
}
?>
   
</body>

</html>
