<?php

$db= new mysqli("127.0.0.1","root","","app");

if($db->connect_errno){
    die("nisam se povezo");
}

