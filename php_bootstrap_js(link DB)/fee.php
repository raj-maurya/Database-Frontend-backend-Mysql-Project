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
    echo 'Connected to DATABASE';
}

mysql_select_db("dbtest2",$con);

$selected = mysql_select_db("dbtest2", $con)
        or die("could not connect to DATABASE");
/* @var $result type */ $institute = $_POST['institute'];
$accountno = $_POST['accountno'];
$sname = $_POST['sname'];
$roll = $_POST['roll'];
$fname    = $_POST['fname'];
$semester = $_POST['semester'];
$year = $_POST['year'];
$branch    = $_POST['branch'];


$sql = "insert into fee_sub(INSTITUTE,ACC,STU_NAME,FN,SEM,YR,BR,ID) 
values('$institute','$accountno','$sname','$fname','$semester','$year','$branch','$roll')";
if (!mysql_query($sql,$con))
{
die('Error subject: ' . mysql_error());
}


$tutionf = $_POST['tutionf'];
$examf = $_POST['examf'];
$enrollf    = $_POST['enrollf'];
$processf = $_POST['processf'];
$degreef = $_POST['degreef'];
$ensuref    = $_POST['ensuref'];
$latef = $_POST['latef'];
$miscf = $_POST['miscf'];
$totalf    = $_POST['totalf'];
$wf = $_POST['wf'];
$dd = $_POST['dd'];
$bnk = $_POST['bnk'];


$sql = "insert into fee_detail(T_F,EX_F,EN_F,PR_F,DEG_F,INS_F,LT_F,MIS_F,TO_F,FE_W,	CBB_N,BNK,ID) 
values('$tutionf','$examf','$enrollf','$processf','$degreef','$ensuref','$latef','$miscf','$totalf','$wf','$dd','$bnk','$roll')";
if (!mysql_query($sql,$con))
{
die('Error subject: ' . mysql_error());
}
//$dd = $_POST['dd'];
//$sql="INSERT INTO `fee_detail`( `CBB_N`, `BNK`) VALUES ('$dd','$wf')";
//if (!mysql_query($sql,$con))
//{
//die('Error subject: ' . mysql_error());
//}
//$wfc = $_POST['wfc'];
//$sql = "insert into fee_detail(BNK) values('$wf')";
echo "1 record added";


mysql_close($con);
?>