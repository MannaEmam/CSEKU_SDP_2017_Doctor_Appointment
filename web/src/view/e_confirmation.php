<!DOCTYPE html>
<html>
<head>
<style>
h1 {
    text-align: center;
    font-size: 200%;
}
h2 {
    text-align: center;
    font-size: 200%;
}
h3 {
    text-align: center;
    font-size: 250%;
}
</style>
<?php
session_start();
if(!isset($_SESSION['email']))
{
  header('location: ../view/index.php');
}
include '../layout/nav_pat.php';
$date =  $_GET['date'];
//storing doctor id at x
$x = $_GET['doc'];
//getting patient name
$name = $_SESSION['username'];
//getting patient age
$age = $_SESSION['age'];
//getting patient id
$p_id = $_SESSION['id'];
//checking is appointment avaiable???
  $db = mysqli_connect('localhost', 'root', '', 'doctor_appointment');
  $query = "SELECT * FROM schedule WHERE `date`= '$date' AND doctor_id = '$x'";
    $results= mysqli_query($db, $query);
    if(mysqli_num_rows($results) == 1)
    {
      $row = mysqli_fetch_assoc($results);
      $check = $row['evening_max'];
    }
    if($check == 0)
    {?>
      <h1>Sorry! No available appointment at <?php echo $date?> evening  shift.</h1>
      <h2>Try for morning shift or another date.</h2>
      <h3>Thank You.</h3>
   <?php  
    }
    else if($check >= 0)
    {
      $check -= 1;
      //updating morning appointment no
  $update_qry = "UPDATE  schedule SET evening_max = '$check' WHERE `date`= '$date' AND doctor_id = '$x'";
  if($db->query($update_qry) === TRUE)
  {
  //getting serial number for evening shift
    $check_query = "SELECT MAX(`serial`) AS max FROM list WHERE `date` = '$date' AND is_morning = 1 AND doc_id = '$x'";
    $results= mysqli_query($db, $check_query);
    $row = mysqli_fetch_assoc($results);
    //when null then assisgning 1
    if($row['max'] == NULL)
    {
      $insert_index = 1;
    }
    //else incrementing by 1
    else 
    {
      $insert_index = $row['max'] + 1;
    }
          ?>
      <h1>Appointment is confirmed for <?php echo $date?> evening shift.</h1>
      <h2>Your serial number is <?php echo $insert_index?>.</h2>
    <?php
    //updating list
  $pat_query = "INSERT INTO list (`date`, pat_name, doc_id, `serial`, is_morning, pat_age,pat_id) VALUES ('$date', '$name', '$x','$insert_index', '1', '$age', '$p_id')";
  $results= mysqli_query($db, $pat_query);
  }
    }
?>
</body>
</html>