<?php

if(isset($_REQUEST['datoteke']))
    	    
    ?>
	<html>
	<body>
		<form method="POST" action="" enctype="multipart/form-data">
			<input type="hidden" name="datoteke" 
                    value="  <?php echo $_REQUEST['datoteke']; ?>"
			<?php for ($i=0;$i<=$_REQUEST['datoteke'];$i++){ ?>   
	
			<input type="file" name="pronadji[]" value="datoteke_<?php echo $i; ?>" value="<?php echo $_REQUEST['datoteke_'.$i]; ?>"/> <br/>  
           
			<?php } ?><br/>
			<input type="submit" name="btn_upload" value="submit"/> <br>  
	 
	</form>
	
	</body>
	
	
	</html>
	<?php
	// broj dokumenata
	$br_file = count($_FILES["pronadji"]["name"]);
	
	for($j=0; $j < $br_file; $j++)
	{
		$name     = $_FILES["pronadji"]["name"][$j];
		$type     = $_FILES["pronadji"]["type"][$j];
		$tmp_name = $_FILES["pronadji"]["tmp_name"][$j];
		$error    = $_FILES["pronadji"]["error"][$j];
		$size     = $_FILES["pronadji"]["size"][$j];
		
		$dir = 'upload/'; // putanja do direktorija za pohranu

			$name_array = explode(".", $name);
			
			$ext = end($name_array);

			$fil = "prebacen_1.".$ext;
		
			$i = 2;
		
			while(file_exists($dir.$fil))
			{
				$fil = "prebacen_".$i.".".$ext;

				$i++;
			}
		
			$file_new_name = $fil;
		
		$new_name = $dir.$file_new_name;
		
		if(move_uploaded_file($tmp_name, $new_name))
		{
			echo 'Datoteka spremljena'.'<br/>';
		}
		else
		{
			echo 'Pogreska kod pohrane'.'<br/>';
		}	
	}

	?>
