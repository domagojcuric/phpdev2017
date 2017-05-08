<?php

if(!isset($_REQUEST["koliko"])){
    
  header("Location: http://localhost:8000/varijabla_post/zadataksat.php");
  exit;  
}
?>


<HTML>
    <BODY>
        <FORM method="post" action="#">
            <input type="hidden" name="koliko" value="<?php echo $_REQUEST["koliko"];?>"</input>

            <?php for($i=0;$i<$_REQUEST["koliko"];$i++){?>
            unesi ime <?php echo $i;?>;
    <INPUT type="text" name="ime<?php echo $i;?>" value=""/>
            <?php }?>
    <INPUT type="submit" name="f2" value="Obrada"/>
</FORM>
    </BODY>


<?php

print_r($_REQUEST);
?>

</HTML>
