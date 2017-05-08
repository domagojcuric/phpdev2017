<?php
if(!isset($_REQUEST['broj'])){
   header('location: http://localhost:8000/ipaic/zadatak2.php');

   exit;
}
   ?>

<html>
    <body>
    <form method="POST" action="#">
        <input type="hidden" name="broj" value="<?php echo $_REQUEST['broj'];?>">
<?php for($i=0;$i<$_REQUEST['broj'];$i++){ ?>
        ime: <br /> <input type="text" name="ime" value ="" /> <br />
        <br />
      
<?php } ?>
        <input type="submit" name="submit_btn" value="obrada"
                   
                    <form/>
                    <body/>
                    


<html/>