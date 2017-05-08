<?php

require 'functions.php';

//Prevent usage of html tags to be used as normal tags
//htmlspecialchars()

// First letter is uppercase
//ucwords()

$animals = ['dog', 'cat'];

/*function dumper($one, $two, $three) {
    
    var_dump($one, $two, $three);
    
} */

//dumper('hello', 'big', 'world'); //dd = die and dump

dd($animals);

//dd(['dog', 'cat']);

//echo '<pre>';

//    die(var_dump($animals));

//echo '</pre>';

require 'index.view.php';