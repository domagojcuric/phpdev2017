<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$filename='24sata.xml';
$handle=fopen($filename, 'r+');
$xml_string=fread($handle, filesize($filename));
$xml = simplexml_load_string($xml_string);
$json = json_encode($xml);

echo $json;

$arr = json_decode($json,TRUE);



echo $arr['channel']['item'][0]['title'];
echo "<ol>";
foreach ($arr['channel']['item'] as $key => $value) {
   printf("<li><a href='%s' title='%s'>%s</a></li>"
           ,$value['link']
           ,$value['description']
           ,$value['title']);
    //print_r( $value);
}
echo "</ol>";