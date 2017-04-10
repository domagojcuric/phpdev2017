<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ProizvodFactory
 *
 * @author Korisnik
 */

class ProizvodFactory {
    
  public static function create($naziv)
  {
    $proizvodi = 'Proizvodi.class.php';
    if(class_exists($proizvodi))
    {
      return new $proizvodi($naziv);
    }
    else { 
      throw new Exception("Nije moguce kreirati!!");
    }
  }
    
}

/*
// Singleton class

#final class ProizvodFactory{

    
  /*  public static function Instance()
    {
        static $inst = null;
        if ($inst === null) {
            $inst = new ProizvodFactory();
        }
        return $inst;
    }

  */
   


