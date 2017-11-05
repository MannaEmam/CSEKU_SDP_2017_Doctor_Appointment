<!DOCTYPE html>
<html>
<?php
session_start();
if(!isset($_SESSION['email']))
{
	header('location: ../view/index.php');
}
include '../layout/nav_doc.php';
?>
<style>
h1 {
    text-align: center;
    color:red;
    font-size: 100%;
}
h2 {
    text-align: center;
    color:blue;
    font-size: 100%;
}
h3 {
    text-align: center;
    color:black;
    font-size: 100%;
}
.bttn {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 10px;
    padding-left: 10px;
    padding-right: 10px;
    text-align: center;
    text-decoration: none;
    display: center;
    font-size: 16px;
    margin: 2px 1px;
    cursor: pointer;
    width: auto;
}
</style>
<body>
<?php
//getting patient name and patient age and id
$pat_id = $_GET['p_id'];
$name = $_GET['p_name'];
$age = $_GET['p_age'];
?>
<h1><?php echo $_SESSION['username']?></h1>
<h2><?php echo $_SESSION['bio']?></h2>
<h2>Phone:<?php echo $_SESSION['phone']?></h2>
<h3>Patient Name:<?php echo $name;?></h3>
<h3>Age:<?php echo $age;?></h3>
 <h3>Date:<?php echo date("y-m-d");?></h3>
 <h3><a class ="bttn" href="http://localhost/Project/view/previous_prescription2.php?p_name=<?= $name?>">Previous Prescription</a></h3> 
<form style=" justify-content: center; align-items: center;" method="post" action="../database/prescription_server.php?p_name=<?=$name?>&p_age=<?=$age;?>">

<textarea type="text"  name="prescribe" style=" margin-left: 20%; font-family: Arial;font-size: 12pt; width:60vw; height:20vw;">
</textarea>
<br>
   <input type="submit" style=" margin-left: 46%;" value="Save" name="_save">
</form>
</body>
</html>