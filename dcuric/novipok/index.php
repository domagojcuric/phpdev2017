<?php
error_reporting(0);
require 'connect.php';
require 'security.php';

$record=array();

if(!empty($_POST)){
    if(isset($_POST["first"],$_POST["last"],$_POST["bio"])){
        
        $first_name= trim($_POST["first_name"]);
        $last_name= trim($_POST["last_name"]);
        $bio= trim($_POST["bio"]);
        
        if(!empty($first_name) && !empty($last_name) && !empty($bio)){
            $insert = $db->prepare ("INSERT INTO people (first_name,last_name,bio,create) VALUE (?,?,?,NOW())");
            $insert->bind_param("sss", $first_name,$last_name,$bio);
            
            if($insert->execute()){
                header("Location : index.php");
                die();
            }
        }
    }
}

if($result = $db->query("SELECT * FROM people")){
    if($result->num_rows){
        while ($row= $result->fetch_object()){
            $record[]=$row;
        }
        $result->free();
    }
}
?>

<!DOCTYPE html>
<html>
    <head>
        <title>People</title>
    </head>
    <body>
        <h3>people</h3>
        <?php
                if(!count($record)){
                    echo "no records";
                }
                else{
                ?>
        <table>
            <thead>   
                <tr>
                    <th>first naem</th>
                    <th>last name</th>
                    <th>bio</th>
                    <th>date</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                                foreach ($record as $r){
                ?>
                <tr>
                    <td><?php echo escape($r->first_name); ?></td>
                    <td><?php echo escape($r->last_name); ?></td>
                    <td><?php echo escape($r->bio); ?></td>
                    <td><?php echo escape($r->create); ?></td>
                </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
        <?php
                }
                ?>
        
        <hr>
        
        <form action="" method="post">
            <div class="field">
                <label for="first_name">FIRST NAME</label>
                <input type="text" name="first_name" id="first_name" autocomplete="off">
            </div>
            <div class="field">
                <label for="last_name">last NAME</label>
                <input type="text" name="last_name" id="last_name" autocomplete="off">
            </div>
            <div class="field">
                <label for="bio">bio</label>
                <textarea name="bio" id="bio"></textarea>
            </div>
            
            <input type="submit" value="Unesi">
        </form>
        
    </body>
    
    
</html>



