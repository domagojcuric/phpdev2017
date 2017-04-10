<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TestirajProizvod
 *
 * @author Korisnik
 */
include 'Proizvodi.class.php';
include 'ProizvodFactory.class.php';
    //put your code here
    $a1= new Proizvodi("Cajna kobasica");
   
   
   
	
echo 'Naziv proizvoda: '.$a1->get_naziv().'<br>'.'Vrsta proizvoda: '.$a1->vrsta.'<br>'.'Vrsta ambalaze: '.$a1->ambalaza.'<br>'
	 .'Masa proizvoda: '.$a1->tezina.'<br>'.'Proizvodac: '.$a1->proizvodac.'<br>';

	echo'Izgled proizvoda: ';$a1->izgled();echo'<br>';
		echo'Kvaliteta proizvoda: ';$a1->kvaliteta();echo'<br>';
			echo 'Okus proizvoda: ';$a1->okus();

			
	
