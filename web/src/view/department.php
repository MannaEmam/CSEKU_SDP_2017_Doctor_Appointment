<?php
session_start();
if(!isset($_SESSION['username']))
{
	header('location: ../view/index.php');
}
include '../layout/nav_pat.php';
//storing dep id in x
$x = $_GET['dep_id'];
$db = mysqli_connect('localhost', 'root', '', 'doctor_appointment');
	$query = "SELECT * FROM doctor WHERE department_id = $x";
	$results= mysqli_query($db, $query);
?>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../style.css">
</head>

<body>
<table width="600" border="1" cellpadding="1">
<tr>
<th>Name</th>
<th>Email</th>
<th>Bio</th>
<th>Appointment</th>
<tr>
<?php 
while($doctor=mysqli_fetch_assoc($results))
{
	echo"<tr>";
	echo"<td>".$doctor['username']."</td>";
		echo"<td>".$doctor['email']."</td>";
		echo"<td>".$doctor['bio']."</td>";
		?>
		<td><a href="../view/appointment.php?doc_id=<?= $doctor['id'] ?>">Appointment</a></td>
		<?php
		echo"</tr>";
}
?>
</body>
</html>