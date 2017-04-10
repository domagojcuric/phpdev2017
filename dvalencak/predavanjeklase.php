<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
interface IAuto {
    function vozi();
    function stani();
    function skreni();
    function gazi();
    function pali();
    
    
}
interface IAutomobil {
    function get_model();
}
class Auto implements IAuto{
    
    public function gazi() {echo "gazi!";
        
    }

    public function skreni() {echo "skreni!";
        
    }

    public function stani() {echo "stani!";
        
    }

    public function vozi() {echo "vozi!";
        
    }

    public function pali() {echo "pali!";
        
    }

}
