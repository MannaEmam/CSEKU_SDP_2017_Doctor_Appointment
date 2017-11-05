<?php

session_start();
if(!isset($_SESSION['email']))
{
	header('location: ../view/index.php');
}
include '../layout/nav_pat.php';
?>
<!DOCTYPE html>
<html>

<head>
<style>
table {
    border-collapse: collapse;
    width: 50%;
    float: right;
}

th {
    text-align: center;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
}
td {
    text-align: center;
    padding: 12px;
}

tr:nth-child(even)
{background-color: #f2f2f2}
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
	<body>
    <?php 
    //showing schedule from current date to available date by selecting doctor id
    $startdate =  date("Y-m-d");
    $x=$_GET['doc_id'];
  $db = mysqli_connect('localhost', 'root', '', 'doctor_appointment');
    $query = "SELECT * FROM schedule WHERE doctor_id = $x AND`date` >= '$startdate'";
    $results= mysqli_query($db, $query);
    $schedule = [];
    while($r = mysqli_fetch_assoc($results))
{
    $schedule[]=$r;
    
}
?>
	<table align="right">
    <table width="600" border="1" cellpadding="1">
  <tr>
    <th>Date</th>
    <th>Morning Shift<br>Available Appoinments</th>
    <th>Take Appointment </th>
    <th>Evening Shift<br>Available Appoinments</th>
    <th>Take Appointment </th>


  </tr>

<?php
  foreach ($schedule as $s) {
      $_SESSION['date'] = $s['date'];
        echo"<tr>";
        echo"<td>".$s['date']."</td>";
        echo"<td>".$s['morning_max']."</td>";
        echo '<td> <a href="../view/m_confirmation.php?date=',$s['date'],'&doc=',$x,'">
    <button class ="button">Take</button> </a></td>';
        echo"<td>".$s['evening_max']."</td>";
        echo '<td> <a href="../view/e_confirmation.php?date=',$s['date'],'&doc=',$x,'">
    <button class ="button">Take</button> </a></td>';
    }
    ?>
  
</table>
</body>

<?php 
$query="SELECT * FROM `doctor` WHERE `doctor`.`id`='$x'";
$db=new mysqli('localhost', 'root', '', 'doctor_appointment');

$result = $db->query($query);
$result= mysqli_fetch_assoc($result);
 ?>
 <br>
  <img src="pat_pic.jpg" style="width:200px;height:250px;"><br>
<br>
<br>
<?php
echo "NAME : ",$result['username'],"<br><br>";
echo "EMAIL : ",$result['email'],"<br><br>";
echo "BIO : ",$result['bio'],",<br><br>";

?>
</html>