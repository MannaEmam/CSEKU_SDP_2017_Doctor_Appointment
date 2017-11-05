<?php include('../database/docserver.php');
include ('../layout/nav_home.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<style type="text/css">
    .input-group select {
    height: 40px;
    width: 100%;
    padding: 5px 10px;
    font-size: 16px;
    border-radius: 5px;
    border: 1px solid gray;
}
</style>
	<div class="header">
		<h2>Register</h2>
	</div>
	
	<form method="post" action="doctor_reg.php">

		<?php include('../database/errors.php'); ?>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" value="<?php echo $username; ?>">
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
            <label>
            Department:
            </label>
            <select name="department">
                <option value="1">E.N.T</option>
                <option value="2">Neurology</option>
                <option value="3">Cardiology</option>
                <option value="4">Surgery</option>
            </select>
		</div>
				<div class="input-group">
			<label>Bio</label>
			<input type="bio" name="bio" value="<?php echo $bio; ?>">
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
			<button type="submit" class="btn" name="reg_doctor">Register</button>
		</div>
		<p>
			Already a member? <a href="login.php">Sign in</a>
		</p>
	</form>
</body>
</html>