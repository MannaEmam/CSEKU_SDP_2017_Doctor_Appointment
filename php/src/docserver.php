<?php
session_start();
// variable declaration
$username = "";
$email    = "";
$phone    = "";
$department    = "";
$bio    = "";
$errors = array(); 
$_SESSION['success'] = "";
// connect to database
$db = mysqli_connect('localhost', 'root', '', 'doctor_appointment');
// REGISTER Doctor
if (isset($_POST['reg_doctor'])) {
	// receive all input values from the form
	$username = $_POST['username'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$bio= $_POST['bio'];
	$department = $_POST['department'];
	$password_1 = $_POST['password_1'];
	$password_2 = $_POST['password_2'];
	// form validation: ensure that the form is correctly filled
	if (empty($username)) { array_push($errors, "Username is required"); }
	if (empty($email)) { array_push($errors, "Email is required"); }
	if (empty($bio)) { array_push($errors, "Bio is required"); }
	if (empty($password_1)) { array_push($errors, "Password is required"); }
	if ($password_1 != $password_2) {
		array_push($errors, "The two passwords do not match");
	}
	// register user if there are no errors in the form
	if (count($errors) == 0) {
		$password = md5($password_1);//encrypt the password before saving in the database
		$query = "INSERT INTO doctor (username, email, phone, department_id, bio, password) 
				  VALUES('$username', '$email', '$phone', '$department', '$bio', '$password')";
		mysqli_query($db, $query);
		$_SESSION['username'] = $username;
		$_SESSION['email'] = $email;
		$_SESSION['phone'] = $phone;
		$_SESSION['bio'] = $bio;
		header('location: ../view/doctor_home.php');
	}
}