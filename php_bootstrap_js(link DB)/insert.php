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
$roll = $_POST['roll'];
$firstname = $_POST['firstname'];
$middlename = $_POST['middlename'];
$lastname = $_POST['lastname'];
$dob = $_POST['dob'];
$gender = $_POST['gender'];
$firstnamef = $_POST['firstnamef'];
$middlenamef = $_POST['middlenamef'];
$lastnamef = $_POST['lastnamef'];
$firstnamem  = $_POST['firstnamem'];

$middlenamem = $_POST['middlenamem'];
$lastnamem = $_POST['lastnamem'];
$dname = $_POST['dname'];
$adyear = $_POST['adyear'];
if($_POST['gender']=="MALE")
$_POST['gender']="M";
elseif($_POST['gender']=="FEMALE")
$_POST['gender']="F";

 
$result = mysql_query("insert into student_info (ID,ROLL,FIRSTNAME,MIDNAME,LASTNAME,DOB,GENDER,FFN,FMN,FLN,MFN,MMN,MLN,SEM,YEAR)
 values('$id','$roll','$firstname','$middlename','$lastname','$dob','$gender','$firstnamef','$middlenamef','$lastnamef','$firstnamem',
 '$middlenamem','$lastnamem','$dname','$adyear') ");

 //email:
 $sql="INSERT INTO semail(ID,EMAIL,TYPE)
VALUES
('$_POST[id]','$_POST[pemail]','P')";
if (!mysql_query($sql,$con))
{
die('Error Email: ' . mysql_error());
}


if (!empty($_POST['semail'])){
$sql="INSERT INTO semail(ID,EMAIL,TYPE)
VALUES
('$_POST[id]','$_POST[semail]','S')";
if (!mysql_query($sql,$con))
{
die('Error Email: ' . mysql_error());
}
}

//end email:
//phone

if (!empty($_POST['pphone'])){
$sql="INSERT INTO sphone(ID,NUMBER,TYPE)
VALUES
('$_POST[id]','$_POST[pphone]','P')";
if (!mysql_query($sql,$con))
{
die('Error Phone: ' . mysql_error());
}
}

if (!empty($_POST['sphone'])){
$sql="INSERT INTO sphone(ID,NUMBER,TYPE)
VALUES
('$_POST[id]','$_POST[sphone]','S')";
if (!mysql_query($sql,$con))
{
die('Error Phone: ' . mysql_error());
}
}
//end phone:
//address:
$sql="INSERT INTO address(ID,LINE1,LINE2,PO,PIN,CITY,STATE,COUNTRY)
VALUES
(ucase('$_POST[id]'),ucase('$_POST[line1]'),ucase('$_POST[line2]'),ucase('$_POST[po]'),ucase('$_POST[pin]'),ucase('$_POST[city]'),ucase('$_POST[state]'),ucase('$_POST[country]'))";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
echo "(1 record has been added)";
//end address:

mysql_close($con);
?>