<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include "IAuto.class.php";

abstract class Auto implements IAuto
{
    public function vozi() {
        echo "<br> Ja vozim ";
    }
        
       public function stani() {
        echo "<br> Ja stajem ";
       }
        
         public function skreni() {
        echo "<br> Ja skrecem ";
         }
        
         public function gazi() {
        echo "<br> Ja gazim ";
         }
}
