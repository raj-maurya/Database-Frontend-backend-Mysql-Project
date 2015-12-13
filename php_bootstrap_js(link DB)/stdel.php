<?php
//$id=(int)$_COOKIE["user"];
$t=0;
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("Could not connect".mysql_error());
}
mysql_select_db("dbtest2",$con);
                  $id = $_POST['stdel'];

				/*$sql=mysql_query("SELECT ID FROM STUDENT WHERE ID='$_POST[stdel]' AND DID=(SELECT DID FROM TEACHER WHERE ID='$id')");
				while($row=mysql_fetch_array($sql))
				{
					$t=1;
					
				}
				
				if($t==0)
				{
					die("No match found<br><a href='hod.php'>Try Again</a>");	
				
				}
				else*/
					//$sql=mysql_query("DELETE FROM fee_detail WHERE ID='$_POST[stdel]'");
					$back = "INSERT INTO deleted_dbtest2.deleted_address
                         SELECT * FROM dbtest2.address WHERE ID ='$id'";
						 if(mysql_query($back,$con))
					{
					echo"<br>1.Deleted record saved in backup database successfully";
					}
					else
					{
					echo"1.<br>Error in backup record".mysql_error($con); 
					}
					

					$sql="DELETE FROM address WHERE ID='$id'";
					if(mysql_query($sql,$con))
					{
					echo"<br>( Original Record address has been deleted successfully)";
					}
					else
					{
					echo"<br>Error Deleting record".mysql_error($con); 
					}
					
					//$sql=mysql_query("DELETE FROM SPHONE WHERE ID='$_POST[stdel]'");
					$backsp = "INSERT INTO deleted_dbtest2.deleted_sphone
                         SELECT * FROM dbtest2.sphone WHERE ID ='$id'";
						 if(mysql_query($backsp,$con))
					{
					echo"<br>2.Deleted record saved in backup database successfully";
					}
					else
					{
					echo"<br>Error in backup record".mysql_error($con); 
					}
					
					$sqlsp="DELETE FROM sphone WHERE ID='$id'";
					if(mysql_query($sqlsp,$con))
					{
					echo"<br>( Original Record sphone has been deleted successfully)";
					}
					else
					{
					echo"<br>Error Deleting record".mysql_error($con); 
					}
					
					//$sql=mysql_query("DELETE FROM semail WHERE ID='$_POST[stdel]'");
					$backse = "INSERT INTO deleted_dbtest2.deleted_semail
                         SELECT * FROM dbtest2.semail WHERE ID ='$id'";
						 if(mysql_query($backse,$con))
					{
					echo"<br>3.Deleted record saved in backup database successfully";
					}
					else
					{
					echo"<br>Error in backup record".mysql_error($con); 
					}
					
					$sqlse="DELETE FROM semail WHERE ID='$id'";
					if(mysql_query($sqlse,$con))
					{
					echo"<br>( Original Record semail has been deleted successfully)";
					}
					else
					{
					echo"<br>Error Deleting record".mysql_error($con); 
					}
					
					
					//$sql=mysql_query("DELETE FROM subject WHERE ID='$_POST[stdel]'");
					
					$backsu = "INSERT INTO deleted_dbtest2.deleted_subject
                         SELECT * FROM dbtest2.subject WHERE ID ='$id'";
						 if(mysql_query($backsu,$con))
					{
					echo"<br>4.Deleted record saved in backup database successfully";
					}
					else
					{
					echo"<br>Error in backup record".mysql_error($con); 
					}
					
					$sqlsu="DELETE FROM subject WHERE ID='$id'";
					if(mysql_query($sqlsu,$con))
					{
					echo"<br>( Original Record subject has been deleted successfully)";
					}
					else
					{
					echo"<br>Error Deleting record".mysql_error($con); 
					}
					//echo "1 record deleted <br></a>";
					
					
					



mysql_close($con);
?>