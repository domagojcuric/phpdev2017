<?php

function sum($a, $b)
{
    return $a+$b;
    
}

function odu($a, $b)
{
    return $a-$b;
}

function mno($a, $b)
{
    return $a*$b;
}

function dje($a, $b)
{
    return $a/$b;
}

function sve ($a, $b)
{
    echo sum($a, $b);
    echo odu($a, $b);
    echo mno($a, $b);
    echo dje($a, $b);
    
}

$c = 6;
$d= 2;

sve($c, $d);

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

