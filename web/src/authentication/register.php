<?php include('../database/server.php');
include ('../layout/nav_home.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
	<div class="header">
		<h2>Register</h2>
	</div>
	
	<form method="post" action="register.php">

		<?php include('../database/errors.php'); ?>
				<p>
			Are you a doctor? <a href="doctor_reg.php">Register here</a>
		</p>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" value="<?php echo $username; ?>">
		</div>
			<div class="input-group">
			<label>Age</label>
			<input type="number" name="age" value="<?php echo $age; ?>">
		</div>
		<div class="input-group">
			<label>Email</label>
			<input type="email" name="email" value="<?php echo $email; ?>">
		</div>
				<div class="input-group">
			<label>Phone</label>
			<input type="phone" name="phone" value="<?php echo $phone; ?>">
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password_1">
		</div>
		<div class="input-group">
			<label>Confirm password</label>
			<input type="password" name="password_2">
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="reg_user">Register</button>
		</div>
		<p>
			Already a member? <a href="login.php">Login</a>
		</p>
	</form>
</body>
</html>