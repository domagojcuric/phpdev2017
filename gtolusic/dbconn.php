<?php 

$server = 'localhost';
$username = 'root';
$password = '';
$database = 'fakultet';

$conn = mysqli_connect($server, $username, $password) or die (mysqli_error($conn));
mysqli_set_charset($conn,"utf8");

if($conn)
{
	mysqli_select_db($conn, $database);
        echo "spojeni ste";
}
else
{
	echo 'Unable to connect to the database $database'; // -> Test
	echo mysqli_error($conn);
}

?>