<?php
 include'../database/server.php';
if(!isset($_SESSION['email']))
{
	header('location: ../view/index.php');
}
include '../layout/nav_doc.php';
 ?> 
<html>
<head>
</head>

<body>
  <img src="pat_pic.jpg" style="width:200px;height:250px;"><br>
</body>

</html>
<?php
echo "NAME : ",$_SESSION['username'],"<br><br>";
echo "BIO : ",$_SESSION['bio'],"<br><br>";
echo "EMAIL : ",$_SESSION['email'],"<br><br>";
echo "PHONE : ",$_SESSION['phone'],"<br><br>";
 ?>
