
<html>
    
    <head></head>
    
    <body>
        
        
        
      <?php 
      
      if (isset($_POST['submit'])) {
      
      for ($i=0;$i<$_POST['broj'];$i++) { ?>
      
      
             <form method="post" action="#">
       
                          unesite ime:
            <input type="text" name="imena<?php echo $i ?>" value=""> <?php } ?>
            <input type="submit" name="submit2" value="podnesi">
            
             
            </form> 
            
      <?php }

 print_r($_REQUEST);
 
 ?>
                </body>
    
    
    
</html>   


                     
                
                
            
           
            
      
        
        
        
        
        
 




