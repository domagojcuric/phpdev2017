


<?php   
if (isset($_POST['submit']) && $_POST['broj']<=5)

{
    for ($i=1;$i<=$_POST['broj'];$i++){
?>

<form method="POST" action="" enctype="multipart/form-data">
fajl za upload: 
    <input type="file" name="fajl[]" value=""><br> 
<?php } ?>
    <input type="submit" name="upload_btn" value="upload">
    
</form>
<?php  }



 

if (isset($_POST['upload_btn']))
    {
print_r($_FILES['fajl']);



}




?>   

