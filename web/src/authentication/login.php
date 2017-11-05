<?php include('../database/server.php');
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
        <h2>Login</h2>
    </div>
    
    <form method="post" action="login.php">

        <?php include('../database/errors.php'); ?>

        <div class="input-group" id="email">
            <label>Email</label>
            <input type="text" name="email" >
        </div>
        <div class="input-group">
            <label>
            Login As:
            </label>
            <select name="type">
                <option value="1">Patient</option>
                <option value="2">Doctor</option>
            </select>
        </div>
        
        <div class="input-group" id="password">
            <label>Password</label>
            <input type="password" name="password">
        </div>
        <div class="input-group">
            <button type="submit" class="btn" name="login_user">Login</button>
        </div>
        <p>
            Not yet a member? <a href="register.php">Register</a>
        </p>
    </form>

</body>
</html>
