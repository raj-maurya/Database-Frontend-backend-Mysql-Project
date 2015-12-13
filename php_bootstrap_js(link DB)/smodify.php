<?php
$con = mysql_connect("localhost","root","MANI28ADMIN");
if (!$con)
{
die('Could not connect: ' . mysql_error());
}
mysql_select_db("DBMS", $con);

$id=(int)$_COOKIE["user"];


if (!empty($_POST['pphone'])){
$sql="UPDATE SPHONE SET NUMBER='$_POST[pphone]' WHERE ID='$id' AND TYPE='P'";
if (!mysql_query($sql,$con))
{
die('Error Phone: ' . mysql_error());
}
}

if (!empty($_POST['sphone'])){
$sql="UPDATE SPHONE SET NUMBER='$_POST[sphone]' WHERE ID='$id' AND TYPE='S'";
if (!mysql_query($sql,$con))
{
die('Error Phone: ' . mysql_error());
}
}

if (!empty($_POST['pemail'])){
$sql="UPDATE SEMAIL SET EMAIL='$_POST[pemail]' WHERE ID='$id' AND TYPE='P'";
if (!mysql_query($sql,$con))
{
die('Error Email: ' . mysql_error());
}
}

if (!empty($_POST['semail'])){
$sql="UPDATE SEMAIL SET EMAIL='$_POST[semail]' WHERE ID='$id' AND TYPE='S'";
if (!mysql_query($sql,$con))
{
die('Error Email: ' . mysql_error());
}
}

if(!empty($_POST['line1']))
{
$sql="UPDATE ADDRESS SET LINE1='$_POST[line1]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}

if(!empty($_POST['line2']))
{
$sql="UPDATE ADDRESS SET LINE2='$_POST[line2]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}

if(!empty($_POST['po']))
{
$sql="UPDATE ADDRESS SET PO='$_POST[po]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}

if(!empty($_POST['pin']))
{
$sql="UPDATE ADDRESS SET PIN='$_POST[pin]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}

if(!empty($_POST['city']))
{
$sql="UPDATE ADDRESS SET CITY='$_POST[city]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}

if(!empty($_POST['state']))
{
$sql="UPDATE ADDRESS SET STATE='$_POST[state]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}


if(!empty($_POST['country']))
{
$sql="UPDATE ADDRESS SET COUNTRY='$_POST[country]'WHERE ID='$id'";
if (!mysql_query($sql,$con))
{
die('Error Address: ' . mysql_error());
}
}

header("location:stu.php");

mysql_close($con)
?>