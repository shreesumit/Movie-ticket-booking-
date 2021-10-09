<?php
include("include/config.php");
extract($_POST);
session_start();
$error=array();
if(!empty($_POST))
{
	$sq="select * from register where r_id=$id";
	$res=mysqli_query($con,$sq);
	$row=mysqli_fetch_array($res);
	
	if($opwd!=$row['r_pwd'])
	{
		$error[]="your old password is incorrect";
	}
	elseif($pwd!=$cpwd)
	{
		$error[]="your password do not match";
	}
	if(!empty($error))
	{
		$_SESSION['error']=$error;
		header("location:changepass.php");
	}
	else
	{
		$uq="update register set r_pwd='$pwd' where r_id=$id ";
		mysqli_query($con,$uq);
		$_SESSION['done']="password successfully changed";
		header("location:changepass.php");
	}
}
else
{
	header("location:changepass.php");
}
?>