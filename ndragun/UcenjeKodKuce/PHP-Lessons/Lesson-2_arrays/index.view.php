<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lesson 2</title>
    
</head>

<body>
   
   <header>

          <ul>
              <?php foreach ($names as $name): ?>
    
                    <li><?= $name ?></li>
    
                    <?php endforeach; ?>
                    
                    <!-- Shortcut when we use more HTML tags -->
          </ul>
          
            <ul>
              <?php
                 foreach ($names as $name){
    
                    echo "<li>$name</li>";
    
                    }
              ?>
              
           </ul>
              
              <!-- Asoci. array -->
              
            <ul>
             
              <?php foreach ($person as $key => $feature) : ?>
              
                  <li><strong><?= $key; ?></strong> <?= $feature; ?></li>
                  
                  <?php endforeach; ?>
                  
            </ul>
  
   </header>
    
</body>
</html>
