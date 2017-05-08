<?php

//prikazuje root stranice u kojoj su smjestene sve skripte
$_SERVER["DOCUMENT_ROOT"];

//prikazuje host zapis iz zaglavlja stranice
$_SERVER["HTTP_HOST"];

//prikazuje tip internetskog preglednika kojim se pristupa
$_SERVER["HTTP_USER_AGENT"];

//prikazuje IP adresu korisnika koji pristupa
$_SERVER["REMOTE_ADDR"];

//prikazuje naziv stranice kojoj se pristupa
$_SERVER["REQUEST_URI"];

//prikazi sve vrijednosti
print_r($_SERVER);