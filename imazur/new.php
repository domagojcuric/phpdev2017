<?php
// dvije klase 1. abstract auto; iauto-vozi, stani , skreni gazi; get model-iautomobil
// iautomobil-automobil-auto-iauto
//             -newauto=$a1
// auto/automobil a1 new Automobil (honda)

/* prvo napišem interfacove (iauto + iautomobil) i pod njih upišem funkcije
 * nakon toga dodan include pa u $a1 pa ispis valjda....! :-/ 
 */


interface iAuto {
    function vozi();
    function stani();
    function skreni();
    function gazi ();
}

interface iAutomobil {
    function get_model ();
    function ispis ();
}
    
//include 'IAuto.class.php';//


abstract class Auto implements iAuto{
    var $model;
    
public function  vozi () {
    //$this->vozi;
    //return $this->vozi;
    echo "<br>jurim";
    }

public function stani() {
    return $this->stani; 
    //echo "<br>živčanim";
 }  
public function skreni() {
        return $this->skreni;
       //echo "<br>ajmo brže malo";
     
 }
public function gazi () {
       return $this->gazi;    
       // echo "<br>gazim!gazim!gazim!";
 }
}

class Automobil extends Auto implements iAutomobil {
   var $vozi;
   var $stani;
   var $skreni;
   var $gazi;
   
public function __construct ($model) {
    $this->model=$model;
    
   
}
public function get_model() {
        return $this->model;
    }
public function ispis() {
        echo "<br>Moj model je %s, uvijek , a kada %s onda vičem %s, pa tada %s "
                ,$this->get_model()
                ,$this->vozi()
                ,$this->stani()
                ,$this->skreni()
                ,$this->gazi(); 
        
            
 }
}

$a1=new Automobil('Honda');
$a2=new Automobil('Mazda');
// echo $a1->get_model();
echo $a2->ispis();


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

