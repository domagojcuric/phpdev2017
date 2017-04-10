<?php 
include 'IProizvod.class.php';

abstract class Proizvod implements IProizvod{
	var $ambalaza='plastika';
	var $tezina='650 g';       
	var $proizvodac='Agrokor';
	
	public function izgled(){
		echo "prosjecan" ;
	}
	public function kvaliteta() {
		echo "upitna";
	}
	public function okus () {
		echo "moze i bolje";
		}
}
		
?>