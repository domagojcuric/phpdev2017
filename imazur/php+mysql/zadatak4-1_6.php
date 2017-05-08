<?php

if ( isset($_GET['datoteke']) ) {
if (!file_exists('uploadano')) {
    mkdir('uploadano', 0777, true);
}

}
?>
<html>
   <body> 
    <form method="POST" action="" enctype="multipart/form-data">
			<input type="hidden" name="datoteke" 
                    value="<?php echo $_REQUEST['datoteke']; ?>"
			
            <?php for ($i=0;$i<=$_REQUEST['datoteke'];$i++){ ?> 
                    
                    <input type="file" name="file[]" 
                    value="datoteke_<?php echo $i; ?>" 
                    value="<?php echo $_REQUEST['datoteke_'.$i]; ?>"/> <br/>  
           
			<?php } ?><br/>
			<input type="submit" name="btn_upload" value="submit"/> <br>  
    </form>
    </body>
</html>

<?php 
if ( isset( $_POST['files'])) {
	foreach ($_FILES['file']["name"] as $file=>$key) {
		echo $_FILES['file']["name"][$file];
		echo "<br>";
		move_uploaded_file($_FILES['file']['tmp_name'][$file],"files/".$_FILES['file']['name'][$file]);
	}
}
 ?>



