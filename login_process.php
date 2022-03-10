<?php
session_start();
require('dbConnection.php');
$email = $_POST['email'];
$password = $_POST['password'];

if($email == "")
{
	$_SESSION['msg'] = "Please enter your email.";
	header('location: index.php');
	exit();
}

if($password == "")
{
	$_SESSION['msg'] = "Please enter your password.";
	header('location: index.php');
	exit();
}


$sql = "SELECT * FROM  user WHERE email = '" . $email . "' And password = '" . $password . "'";
$query = mysqli_query($connection, $sql);
if(mysqli_num_rows($query) > 0)
{
	$row = mysqli_fetch_assoc($query);
	header('location: dashboard.php');
	exit();
}
else
{
	$_SESSION['msg'] = "Invalid email or password.";
	header('location: index.php');
	exit();
}

?>