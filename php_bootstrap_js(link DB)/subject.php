<?php
//session_start();

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
/* @var $result type */ $scode = $_POST['scode'];
$sname = $_POST['sname'];
$code1 = $_POST['1code'];
$name1 = $_POST['1name'];
$c1    = $_POST['1c'];
$code2 = $_POST['2code'];
$name2 = $_POST['2name'];
$c2    = $_POST['2c'];
$code3 = $_POST['3code'];
$name3 = $_POST['3name'];
$c3    = $_POST['3c'];
$code4 = $_POST['4code'];
$name4 = $_POST['4name'];
$c4    = $_POST['4c'];
$code5 = $_POST['5code'];
$name5 = $_POST['5name'];
$c5    = $_POST['5c'];
$code6 = $_POST['6code'];
$name6 = $_POST['6name'];
$c6    = $_POST['6c'];
$credit = $_POST['credit'];

$sql = "insert into subject(ID,SEM,SUBCOD1,SUBNAME1,SUBCREDIT1,SUBCOD2,SUBNAME2,SUBCREDIT2,SUBCOD3,SUBNAME3,SUBCREDIT3,SUBCOD4,SUBNAME4,SUBCREDIT4,SUBCOD5,SUBNAME5,SUBCREDIT5,SUBCOD6,SUBNAME6,SUBCREDIT6,TCREDIT) 
values('$scode','$sname','$code1','$name1','$c1','$code2','$name2','$c2','$code3','$name3','$c3','$code4','$name4','$c4','$code5','$name5','$c5','$code6','$name6','$c6','$credit')";
if (!mysql_query($sql,$con))
{
die('Error subject: ' . mysql_error());
}
echo "1 record added";


mysql_close($con);
?>