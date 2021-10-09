<?php
    session_start();
    include('include/config.php');
    extract($_POST);
    $error=array();
    $time=time();
    if(! empty($_POST))
    {
    	if(!is_numeric($mno))
    {
    $error[]="Enter Valid   Mobile Number";	
    }
       else if(strlen($mno)<10 || strlen($mno)>10) 
       {
    	$error[]="Enter Valid 10 digit Mobile Number";
       }
       if(!empty($error))
       {
       	$_SESSION['error']=$error;
       header("location: contact.php");
       }
       else
       {
     $q="insert into  contact (co_nm,co_mno,co_email,co_msg,co_time) values('$nm','$mno','$email','$msg','$time')";
	 mysqli_query($con,$q);
     $_SESSION['done']="your message send successfully";
     $cont='you have new message <a href="contact_manage.php">View</a>';
     $csq="insert into activity (ac_nm,ac_time)
     values('$cont','$time')";
     mysqli_query($con,$csq);
     header("location:contact.php");
     }
   }
    else
    {
    	header("location: contact.php");
    }
?>