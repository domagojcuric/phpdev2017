<?php

if(!isset($_REQUEST['kolikoImena'])){
    echo "Taraa0";
    header('Location:http://localhost:8080/zilicic/phpMysql/Zadatak_1.6.2.php');

exit;
    }
    ?>
    <body>
        <form method="POST" action="#">
             <input type="hidden" name="kolikoImena" 
                    value="  <?php echo $_REQUEST['kolikoImena']; ?>"
         <?php for ($i=0;$i<=$_REQUEST['kolikoImena'];$i++){ ?>    
           
                    Unesi ime:<?php echo $i; ?>
                    <input type="text" name="ime_<?php echo $i; ?>" value="<?php echo $_REQUEST['ime_'.$i]; ?>"/> <br>  
            <?php } ?>
             <input type="submit" name="forma2" value="stisni">
            </form>
    </body>
    
    <?php
print_r($_REQUEST);
?>
</html>




