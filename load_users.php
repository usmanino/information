<?php 

	require_once('dbConnection.php');
	//include "dbConnection.php";

	$sql="SELECT * FROM `information_table` ORDER BY `id` DESC";
	$result=mysqli_query($connection, $sql);;
	while($e=mysqli_fetch_assoc($result)){
		$output[]=$e; 
	}	
	echo json_encode($output);

?>