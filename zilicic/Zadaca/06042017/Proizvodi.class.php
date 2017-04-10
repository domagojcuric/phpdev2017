<?php 
include 'Proizvod.class.php';
#include 'ProizvodFactory.class.php';


class Proizvodi extends Proizvod {
	var $naziv;
    var $vrsta='suhomesnato';
        
		public function __construct($naziv){
		$this->naziv=$naziv;
		}
              
            public function get_naziv() {
				return $this->naziv;
			}
                       
                                       
    }              


?>