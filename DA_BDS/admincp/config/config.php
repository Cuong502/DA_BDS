<?php 

	$mysqli = new mysqli("localhost","root","","da_bds");
	header("Content-type: text/html; charset=utf-8");
    mysqli_set_charset($mysqli, 'UTF8');
	// Check connection
	if ($mysqli->connect_errno) {
	  echo "Kết nối MYSQLi lỗi" . $mysqli->connect_error;
	  exit();
	}

?>