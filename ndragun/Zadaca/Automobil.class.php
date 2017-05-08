<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include "Auto.class.php";
include "IAutomobil.class.php";

class Automobil extends Auto implements IAutomobil
{
    var $model;
    public function __construct($model){
        $this->model=$model;
    }
    
    public function get_model(){
        return $this->model;
    }
    
}
