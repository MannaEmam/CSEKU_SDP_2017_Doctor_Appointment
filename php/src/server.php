<?php
session_start();

// variable declaration
$username = "";
$email    = "";
$phone    = "";
$errors = array(); 
$_SESSION['success'] = "";

// connect to database
$db = mysqli_connect('localhost', 'root', '', 'doctor_appointment');

// REGISTER USER
if (isset($_POST['reg_user'])) {
	// receive all input values from the form
	$username = $_POST['username'];
	$age = $_POST['age'];
	$email = $_POST['email'];
	$phone= $_POST['phone'];
	$password_1 = $_POST['password_1'];
	$password_2 = $_POST['password_2'];

	// form validation: ensure that the form is correctly filled
	if (empty($username)) { array_push($errors, "Username is required"); }
	if (empty($age)) { array_push($errors, "Age is required"); }
	if (empty($email)) { array_push($errors, "Email is required"); }
	if (empty($phone)) { array_push($errors, "Phone number is required"); }
	if (empty($password_1)) { array_push($errors, "Password is required"); }

	if ($password_1 != $password_2) {
		array_push($errors, "The two passwords do not match");
	}

	// register user if there are no errors in the form
	if (count($errors) == 0) {
		$password = md5($password_1);//encrypt the password before saving in the database
		$query = "INSERT INTO patient (username, age, email, phone, password) 
				  VALUES('$username', '$age', '$email', '$phone', '$password')";
		mysqli_query($db, $query);

		$_SESSION['username'] = $username;
		$_SESSION['email'] = $email;
		$_SESSION['phone'] = $phone;
		$_SESSION['age'] = $age;
		header('location: ../view/patient_home.php');
	}

}

// LOGIN USER
if (isset($_POST['login_user'])) {
	$email = $_POST['email'];
	$password = $_POST['password'];
	if (empty($email)) {
		array_push($errors, "Email is required");
	}
	if (empty($password)) {
		array_push($errors, "Password is required");
	}

	$type = $_POST['type'];
	if ($type == 1) {

			if (count($errors) == 0) {
					$password = md5($password);
		$query = "SELECT * FROM patient WHERE email='$email' AND password='$password'";
		$results = mysqli_query($db, $query);
		if (mysqli_num_rows($results) == 1) {
			$_SESSION['email'] = $email;
			$row = mysqli_fetch_assoc($results);
			$_SESSION['id'] = $row['id'];
			$_SESSION['username'] = $row['username'];
			$_SESSION['phone'] = $row['phone'];
			$_SESSION['age'] = $row['age'];
			$_SESSION['role'] = "patient";
			header('location: ../view/patient_home.php');
		}else {
			array_push($errors, "Wrong username/password combination");
		}
	}
	}
	elseif ($type == 2) {

		if (count($errors) == 0) {
					$password = md5($password);
		$query = "SELECT * FROM doctor WHERE email='$email' AND password='$password'";
		$results = mysqli_query($db, $query);
		if (mysqli_num_rows($results) == 1) {
			$_SESSION['email'] = $email;
			$row = mysqli_fetch_assoc($results);
			$_SESSION['id'] = $row['id'];
			$_SESSION['username'] = $row['username'];
			$_SESSION['phone'] = $row['phone'];
			$_SESSION['bio'] = $row['bio'];
			$_SESSION['role'] = "doctor";
			header('location: ../view/doctor_home.php');
		}else {
			array_push($errors, "Wrong email/password combination");
		}
	}
	}
}

?>