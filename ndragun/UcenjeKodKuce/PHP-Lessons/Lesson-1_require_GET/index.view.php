<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lesson 1</title>
    
    <style>
    
        header{
            background: #e3e3e3;
            padding: 2em;
            text-align: center;
        }
        
    </style>
    
</head>

<body>
   
   <header>
       <h1>
           
           <?= $greeting ?>
           
           <!-- <?= "Hello, " . htmlspecialchars($_GET['name']); ?> -->
           
           <!-- EXAMPLE .php?name=nemanja -->
           
       </h1>
   </header>
    
</body>
</html>
