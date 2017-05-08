<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Vozni park</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <header>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Vozni park</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Vozila<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Pregled</a></li>
            <li><a href="#">Gorivo</a></li>
            <li><a href="#">Servisi</a></li>
          </ul>
        </li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Vozači<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Pregled</a></li>
            <li><a href="#">Radno vrijeme</a></li>
            <li><a href="#">Testiranja</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Izvještaji<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Dnevni</a></li>
            <li><a href="#">Tjedni</a></li>
            <li><a href="#">Mjesečni</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>  
       
<div class="container-fluid">
                    <!----------->
   
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/truck_2.png" target="_blank">
            <img src="images/truck_2.png" alt="Vozilo" style="width:100%">
          <div class="caption">
           <p>Praćenje rada vozila.</p>
          </div>
            <ol
        </a>
          </div>
        
    </div>
          <div class="col-md-4">
      <div class="thumbnail">
          <a href="images/service.png" target="_blank">
              <img src="images/service.png" alt="Servis" style="width:72%">
          <div class="caption">
            <p>Praćenje održavanja vozila.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
          <a href="images/driver.png" target="_blank">
              <img src="images/driver.png" alt="Vozac" style="width:72%">
          <div class="caption">
            <p>Praćenje rada vozača.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
</header>
    
  </body>
   <footer>
<nav class="footer">
  <div class="container" style="color: black !important">
      <p>Nekakav footer sa linkovima :</p>
      <a href="http://www.ina.hr/" target="_blank">INA d.d.</a></br>
          <a href="http://www.ina.hr/o-kompaniji/ina-grupa/25" target="_blank">INA Društva</a>
      
  </div>
</nav>
    
</footer>
</html>