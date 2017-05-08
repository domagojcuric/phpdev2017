<?php

class Covjek{
    
    
    public $broj;
    public $broj2;
    
    public function __construct($broj, $broj2)
    { $this->broj=$broj;
     $this->broj2=$broj2;
    }
    
    public function poruka()
            { echo $this->broj;}
      
              
              
    public function poruka2()
    {   echo  $this->broj2;}
        
    
}


