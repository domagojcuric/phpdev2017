<?php
if(!isset($_REQUEST["broj_imena"])) 
    {
header('Location: stranica1.php');
exit;
}
?>

<html>
    <body>
        
        <form method="POST" action="#"
            <input type="hidden" name="broj_imena" 
                value="<?php echo $_REQUEST['broj_imena']; ?>">
    
            <?php for($i=0; $i<$_REQUEST['broj_imena']; $i++){ ?>
    
            
    unesi ime <?php echo $i; ?>:
    <br/><input type="text" name="ime_<?php echo $i; ?>" 
                    value=""/><br/>
        
          
    <?php } ?>
        <br/>
    <input type="submit" name="f2" value="stisni" />
        </form>
    </body>

    
<?php
echo'<pre>';
      
print_r($_POST);  
echo'</pre>';
?>
</html>

