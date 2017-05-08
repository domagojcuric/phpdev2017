<?php 

if ( isset($_GET['no']) && $_GET['no'] == 1 ) {

	$polje_brojeva = array();

	function show_polje() {

		$polje_brojeva[] = 11;
		$polje_brojeva[] = 100;
		$polje_brojeva[] = 111;

		print_r($polje_brojeva);
	}

	print_r($polje_brojeva);

	$polje_brojeva[] = 12;
	$polje_brojeva[] = 23;
	$polje_brojeva[] = 35;

	print_r($polje_brojeva);

	show_polje();

}

if ( isset($_GET['no']) && $_GET['no'] == 2 ) {

	$polje_brojeva = array();

	function show_polje() {

		global $polje_brojeva;

		$polje_brojeva[] = 11;
		$polje_brojeva[] = 100;
		$polje_brojeva[] = 111;

		print_r($polje_brojeva);
	}

	print_r($polje_brojeva);

	$polje_brojeva[] = 12;
	$polje_brojeva[] = 23;
	$polje_brojeva[] = 35;

	print_r($polje_brojeva);

	show_polje();

}

if ( isset($_GET['no']) && $_GET['no'] == 3 ) {

session_start();

$_SESSION['var1'] = 1234;
$_SESSION['var2'] = 'Algebra';

//$_SESSION['brojevi'] = array(1,4,6,7,8);

$_SESSION['brojevi'][] = 1;
$_SESSION['brojevi'][] = 4;
$_SESSION['brojevi'][] = 6;
$_SESSION['brojevi'][] = 7;
$_SESSION['brojevi'][] = 8;

// $naziv = 'Algebra';
// $_SESSION['var_naziv'] = $naziv;

$key = 'naziv';
$val = 'Algebra';
$_SESSION[$key] = $val;

echo $_SESSION[$key];

}


if ( isset($_GET['no']) && $_GET['no'] == 4 ) {

	session_start();

	$_SESSION['var1'] = 1234;
	$_SESSION['var2'] = 'Algebra';

	echo $_SESSION['var1'];
	echo "<br>";
	echo $_SESSION['var2'];
	echo "<br>";	echo "<br>";

	$var1 = $_SESSION['var1'];
	$var2 = $_SESSION['var2'];

	$_SESSION['brojevi'] = array(1,4,6,7,8);

	foreach ( $_SESSION['brojevi'] as $key => $val ) {

		echo $val.'<br/>';

	}
}

if ( isset($_GET['no']) && $_GET['no'] == 5 ) {

	setcookie('var1', '1234', time()+60);
	//setcookie('var2', 'Algebra', time()+5*24*60*60);
	setcookie('var2', 'Algebra');

	setcookie('naziv', 'Algebra', time()+60);

	print_r($_COOKIE);
}

if ( isset($_GET['no']) && $_GET['no'] == 6 ) {

	setcookie('naziv', 'Algebra', time()+60);

	echo $_COOKIE["naziv"];
}


if ( isset($_GET['no']) && $_GET['no'] == 7 ) {

	function setcookielive($name, $value='', $expire) {

		return $_COOKIE($name, $value, $expire);

	}


}

if ( isset($_GET['no']) && $_GET['no'] == 8 ) {

	function setcookielive($name, $value='', $expire) {

		return $_COOKIE($name, $value, $expire);

	}


}

if ( isset($_GET['no']) && $_GET['no'] == 9 ) {

// serijalizacija objekta example

class nesta {
	private $name;
	private $val;
	function __construct($nm, $l) {
		$this->name = $nm;
		$this->l = $l;
	}
}

$ne = new nesta("ime da ne", 11);

echo serialize($ne);
}


