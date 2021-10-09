<?php
    session_start();
    include('include/config.php');
    extract($_POST);
    $error=array();
    $time=time();
    if(! empty($_POST))
    {
    	if(! is_numeric($mno))
    {
    	$error[]="Enter Valid Mobile Number";
    }
    else if(strlen($mno)<10 || strlen($mno)>10)        {
    	$error[]="Enter Valid 10 digit Mobile Number";
    }
    if($pwd!=$cpwd)
    {
   	$error[]="Password Do Not Match";  
    }
else  if(strlen($pwd)<6)
    {
 	$error[]="Enter minimum 6 Digit Password";
    }
    $sq="select * from register where r_email='$email' and r_mno='$mno' ";
    $res=mysqli_query($con,$sq);
    $row=mysqli_fetch_assoc($res);
    if($email==$row['r_email'] || $mno==$row['r_mno'])
    {
    	$error[]="This Account is Already Exists";
    }
    if(! empty($error))
    {
    	$_SESSION['error']=$error;
      header("location: register.php");
     }
     else
     {
$q="insert into  register (r_nm,r_age,r_gender,r_mno,r_email,r_pwd,r_time) values('$nm','$age','$gender','$mno','$email','$pwd','$time')";
        mysqli_query($con,$q);
    $_SESSION['done']="registered successfully";
    $login=$email.' Is Registered';
	$uq="insert into activity (ac_nm,ac_time) values('$login','$time')";
	mysqli_query($con,$uq);
    header("location: login.php");
   }
   }
    else
    {
    	header("location: register.php");
    }
?>