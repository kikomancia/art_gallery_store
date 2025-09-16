<?php
	$connect = mysqli_connect ('localhost', 'root', '', 'mikastore');
	if ($connect->connect_error) {
		die("connection failed : " . $connect->connect_error);
	} else {
	 	//echo "Connection success!";
	}
?>
