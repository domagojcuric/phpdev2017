<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Zadatak 1.6-3</title> 
        
<style type="text/css">
    
    body{
        margin-top: 50px;
        text-align: center;
        background-color: #333;
        color: #eee;
    }
    
    h1{
        padding: 10px;
        color: #eee;
        text-transform: uppercase;
    }
    
    .block a{
        text-align: center;
        width: 100%;
        display: block;
        min-height: 60px;
    }

    .lista{
        border: 1px solid dodgerblue;
        padding: 10px;
        cursor: pointer;
        transition: 0.2s;
    }
    
    .lista:hover{
        border: 1px solid dodgerblue;
        padding: 20px;
        background: dodgerblue;
    }
    
    a{
        color: #eee;
        text-decoration: none;
    }
    
    a:hover{
        color: white;
    }
    
</style>

    </head>
    
<body>
    
    <h1>Izaberi jedan broj</h1>
    
    <div class="block">
        
        <?php 
        for ( $i = 1; $i <= 5; $i ++) :?> 

            <a href='skripta.php?broj=<?= $i ?>'><span class='lista'><?= $i ?></span></a>

        <?php endfor; ?>
            
    </div>
    
    <h4>ODABRALI STE BROJ </h4>
    
    <?php 
            if(  isset($_GET["broj"] )  ) {
                    echo $_GET["broj"];
            }
     ?>

</body>

</html>
