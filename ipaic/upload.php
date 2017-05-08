<?php

for($i=0;$i<$_POST["broj"];$i++){
$target_dir = "D:\Podaci\programer\NetBeansProjects\phpdev2017\ipaic\upload1/";
$target_file = $target_dir . basename($_FILES["file"]["name"][$i]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
 if (move_uploaded_file($_FILES["file"]["tmp_name"][$i], $target_file)) {
        echo "The file ". basename( $_FILES["file"]["name"][$i]). " has been uploaded.";
        echo "<br>";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
print_r($_FILES);
?>

