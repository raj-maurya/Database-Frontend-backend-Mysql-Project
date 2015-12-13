<?php
$xy=$_POST["userid"];
$yz=$_POST["pswrd"];
$con=mysql_connect("localhost","root","");
$t=0;
if(!$con)
{
	die('Could Not Connect: '. mysql_error());
}
mysql_select_db("dbtest2",$con);
//$result=mysql_query("(SELECT ID,PASSWORD FROM STUDENT)");
$resultt=mysql_query("(SELECT ID,PASSWORD FROM ID_PASS)");
/*while($row=mysql_fetch_array($result))
{
	//echo $row['sid'] . " " . $row['password'];
	//echo "<br />";
	
	if($row['ID']==$xy && $row['PASSWORD']==$yz)
	{
			//echo "login authenticated";
			setcookie("user",$xy,time()+3600);
			header("location:stu.php");
			$t=1;
	}
}*/

	while($row=mysql_fetch_array($resultt))
{
	$id = $row['ID'];
    $pass = $row['PASSWORD'];
	if($id==$xy && $pass==$yz)
	{
			//echo "login authenticated";
			setcookie("user",$xy,time()+3600);
			header("location:slider.html");
			$t=1;
			
	}
}

if($t==0)
{			header("location:login1.html");
}

mysql_close($con);
?>