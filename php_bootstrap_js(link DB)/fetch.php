<!DOCTYPE html>
<html>
<head>
<style>
table, th, td{
border: 1px solid black;
}
</style>
</head>
<body>




<?php
session_start();

//$id=(int)$_COOKIE["user"];

$con=mysql_connect("localhost","root","");
$t=0;
if(!$con)
{
	die('Could Not Connect: '. mysql_error());
}
 else {
    echo 'Connected MySQL';
}

mysql_select_db("dbtest2",$con);

$selected = mysql_select_db("dbtest2", $con)
        or die("could not connect to DATABASE");
/* @var $result type */ $id = $_POST['id'];    
$result = mysql_query("SELECT * from fee_sub where ID='$id' ");
$resultk = mysql_query("SELECT * from sphone where ID='$id' ");
$resultt = mysql_query("SELECT * from address where ID='$id' ");
$resulte = mysql_query("SELECT * from semail where ID='$id' ");
$results = mysql_query("SELECT * from subject where ID='$id' ");

while ($row = mysql_fetch_array($result)):
 echo"<table><tr><th>ID</th> <th> INTITUTE</th><th> ACCOUNT</th><th> STUDENT NAME</th><th> FATHER'S NAME</th>
     <th>YEAR</th><th> BRANCH</th></tr>";
    $id = $row['ID'];
   $name = $row['INSTITUTE'];
   $acc = $row['ACC'];
   $sname = $row['STU_NAME'];
   $fname = $row['FN'];
   $yr = $row['YR'];
   $br = $row['BR'];
   
    echo "<tr> <td> $id</td><td>$name</td><td> $acc</td><td>$sname</td><td>$fname</td>
	<td>$yr</td><td> $br</td></tr> ";
	echo"</table>";
endwhile;
echo"<br>";


//address fetch
//$resultt = mysql_query("SELECT * from address where ID='$id' ");

while ($row = mysql_fetch_array($resultt)):
 echo"<table><tr><th>ADDRESS LINE1</th> <th> ADDRESS LINE2</th><th> PIN</th><th> CITY</th><th> STATE</th>
     <th>COUNTRY</th></tr>";
    $id = $row['LINE1'];
   $name = $row['LINE2'];
   $acc = $row['PIN'];
   $sname = $row['CITY'];
   $fname = $row['STATE'];
   $yr = $row['COUNTRY'];
   //$br = $row['BR'];
   
    echo "<tr> <td> $id</td><td>$name</td><td> $acc</td><td>$sname</td><td>$fname</td>
	<td>$yr</td></tr> ";
	echo"</table>";
endwhile;
echo"<br>";
//phone
//$resultk = mysql_query("SELECT * from sphone where ID='$id' ");
while ($row = mysql_fetch_array($resultk)):
echo"<table><tr><th>PHONE NUMBER</th> <th>TYPE</th></tr>";
    $id = $row['NUMBER'];
   $name = $row['TYPE'];
   //$acc = $row['PIN'];
   //$sname = $row['CITY'];
   //$fname = $row['STATE'];
   //$yr = $row['COUNTRY'];
   //$br = $row['BR'];
   
    echo "<tr> <td> $id</td><td>$name</td></tr> ";
	echo"</table>";
endwhile;
echo"<br>";
//email
while ($row = mysql_fetch_array($resulte)):
 echo"<table><tr><th>EMAIL ADDRESS</th> <th> TYPE</th></tr>";
    $id = $row['EMAIL'];
   $name = $row['TYPE'];
  /* $acc = $row['ACC'];
   $sname = $row['STU_NAME'];
   $fname = $row['FN'];
   $yr = $row['YR'];
   $br = $row['BR'];*/
   
    echo "<tr> <td> $id</td><td>$name</td></tr> ";
	echo"</table>";
endwhile;
echo"<br>";


while ($row = mysql_fetch_array($results)):
 echo"<table><tr><th>SEMESTER</th> <th>SUBJECT 1</th><th> SUBJECT 2</th><th> SUBJECT 3</th><th> SUBJECT 4</th>
     <th>SUBJECT 5</th><th> SUBJECT 6</th><th>TOTAL CREDIT</th></tr>";
    $id = $row['SEM'];
   $name = $row['SUBCOD1'];
   $acc = $row['SUBCOD2'];
   $sname = $row['SUBCOD3'];
   $fname = $row['SUBCOD4'];
   $yr = $row['SUBCOD5'];
   $br = $row['SUBCOD6'];
     $cr = $row['TCREDIT'];
   
    echo "<tr> <td> $id</td><td>$name</td><td> $acc</td><td>$sname</td><td>$fname</td>
	<td>$yr</td><td> $br</td><td>$cr</td></tr> ";
	echo"</table>";
endwhile;

mysql_close($con);
?>
</body>
</html>