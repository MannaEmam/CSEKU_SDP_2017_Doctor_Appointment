<!doctype html>
<html>
<style>

body
{
    background-image:url("home_back.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
<body>

<?php

session_start();
if(!isset($_SESSION['username']))
{
	include '../layout/nav_home.php';
}
else
{
	if($_SESSION['role']=="patient")
	{
		include '../layout/nav_pat.php';
	}
    else
    	{
    		include '../layout/nav_doc.php';
    	}
}
 


 ?>
</body>
<html>