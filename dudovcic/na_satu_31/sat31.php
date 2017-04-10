<?php 

function main($oper, &$a, &$b) {


	switch($oper) {
		case "zbroj":

			echo zbr($a, $b);
			break;
		case "razlika":
			echo razl($a, $b);
=======
			break;
		// case "umnozak":
		// 	return mno($a, $b);
		// 	break;
		case "podjela":
			echo dij();
			break;
		default: echo "Incorrect operation";

	}
}


function zbr($a, $b) {
	return $a + $b;
}



function razl(&$a, &$b) {
	return $a - $b;
}




// function mno($a, $b) { 
// 	static $proceed = true;


// 	if ( $proceed == true ) {
// 		$stringa = preg_replace("/0+\./", '', (string)$a);
// 		$stringb = preg_replace("/0+\./", '', (string)$b);
// 		$x = strlen($a)-2;
// 		// $y = strlen($b)-2;
// 		static $brojac = strlen($b)-2;

// 		$umnozak = (double)((( (int)$stringa*(int)$stringb ) / 10**$x ) / 10**$y );


// 		$proceed = false;
// 	}

// 	if ( $brojac < )
		



function dij() {
	global $a;
	global $b;
	return $a / $b;
}

$a = 5;
$b = 0.1;

main("zbroj", $a, $b);
echo "<br>";
main("razlika", $a, $b);
echo "<br>";
main("podjela", $a, $b);
echo "<br>";


 ?>