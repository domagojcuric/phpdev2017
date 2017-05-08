   <?php
    if (!isset($_REQUEST['brojimena'])) {
    header('Location: stranica1.php.php');
     exit;
    }
    ?>

<!DOCTYPE html>
     <html>
    <head>
        <title></title>
        <meta charset="UTF-8">
       
    </head>
    <body>
            <form method="post" action="#">
            <input type="hidden" name="brojimena" 
                   value="<?php echo $_REQUEST['brojimena']; ?>">

            <?php for ($i = 0; $i < $_REQUEST['brojimena']; $i++) { ?>
                
     
            Unesi ime <?php echo $i; ?>:
             <input type="text" name="ime_<?php echo $i; ?>" value="<?php echo $_REQUEST['ime_'.$i]; ?>" /> <br>
             <?php } ?>
             <input type="submit" name="f2" value="Stisni"/>
      
            
        </form> 
        
        
    </body>
</</html>
<?php
  print_r($_REQUEST);



?>