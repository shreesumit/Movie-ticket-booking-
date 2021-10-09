<?php
session_start();
if(!isset($_SESSION['client']['status']))
{
	header('location:login.php');
}
extract($_POST);
?><!doctype html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0 minimal-ui"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />

<title>BillDesk - All Your Payments. Single Location</title>
<link href="css/css1/bank.css" rel="stylesheet" type="text/css"/>


</head>


<body>

<div id="mainContainer" class="row large-centered">

  <div class="text-center"><h2> State Bank Of India</h2></div>
  
  <hr class="divider">
  <dl class="mercDetails">
  	<dt>Merchant</dt> 				<dd>Shop Street</dd>
    <dt>Transaction Amount</dt> 	<dd>INR <?php echo  $_SESSION['amount'];?></dd>
    <dt>Debit Card</dt> 		<dd><?php echo  $number;?></%></dd>
  </dl>
  <hr class="divider">
  
  
<form name="form1" id="form1" method="post" action="complete_payment.php">
<fieldset class="page2">
<div class="page-heading">
<h6 class="form-heading">Authenticate Payment</h6>
<p class="form-subheading">OTP sent to your mobile number ending <strong>0119</strong></p>


</div>

<div class="row formInputSection">
<div class="large-7 columns">
<label>
  Enter One Time Password (OTP)
  <input type="tel" name="otp"  class="form-control optPass" value="" maxlength="6" autocomplete="off" required/>
</label>
</div>
<div class="large-5 columns">
<label>&nbsp;</label><button class="expanded button next" onClick="ValidateForm()">Make Payment</button>
</div>
</div>
<div class="text-right resendBtn requestOTP"><a class="request-link" href="javascript:void(0)">Resend OTP</a></div>
<p>


<a class="tryAgain" href="process_booking.php">Go back</a> to merchant
</p>
</fieldset>


</form>
</div>
</body>
</html>