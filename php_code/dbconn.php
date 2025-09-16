<?php
	$connect = mysqli_connect ('localhost', 'u568402898_artgaldb', 'P=g:GFT#9', 'u568402898_artgaldb');
	if ($connect->connect_error) {
		die("connection failed : " . $connect->connect_error);
	} else {
	 	//echo "Connection success!";
	}
?>
