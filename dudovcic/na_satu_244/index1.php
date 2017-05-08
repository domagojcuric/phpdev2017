<!DOCTYPE html>
<html>
<head>
	<title>Str 13 zad 2</title>
</head>
<body>

	<form method="POST" action="">
		<input id="inpbr" type="number" name="brojimena">
		<button id="broj" value="Broj imena">Broj imena</button>

		<div id="imena">
			<p>Inputs</p>
		</div>

		<button type="submit" name="submit_btn" value="Submit">Submit</button>
	</form>
</body>

<style type="text/css">
input {
	display:block;
}
button {
	display: block;
	width: 50px;
	height: 50px;
}
</style>

<script type="text/javascript">
document.getElementById("broj").addEventListener("click", function(event) {
	event.preventDefault();
	var main = document.getElementById("imena");
	main.innerHTML = "";
	var br = parseInt(document.getElementById("inpbr").value);
	console.log(br);
	for ( var i = 0; i < br; i++) {
		let el = document.createElement("input");
		el.setAttribute("type", "text");
		el.setAttribute("name", "ime"+(i+1));
		main.appendChild(el);


	}

});
</script>
</html>


<?php 

	if(  isset($_POST["submit_btn"] )  ) {
		echo "<pre/>";
		print_r($_POST);
		echo "<pre/>";
	}


 ?>