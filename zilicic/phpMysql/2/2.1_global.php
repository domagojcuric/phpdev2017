<?php

function show_polje()

{
    global $polje_brojeva;
    $polje_brojeva[]=11;
    $polje_brojeva[]=100;
    $polje_brojeva[]=111;
    print_r($polje_brojeva);
}
show_polje();