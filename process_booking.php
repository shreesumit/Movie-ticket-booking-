
<?php 
error_reporting(0); 
include('include/header.php');
if(!isset($_SESSION['client']['status']))
{
	header('location:login.php');
}
?>
  <!-- =============================================== -->
  	<link rel="stylesheet" href="validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="validation/dist/js/bootstrapValidator.js"></script>
</div>
<div class="content">
	<div class="wrap">
		<div class="content-top">
			<center><font color="navyblue" size="6px"><h4>Add Your Debit Card Information</h4></font></center>
			<form action="bank.php" method="post" id="form1">
			<div class="col-md-4 col-md-offset-4" style="margin-bottom:50px">
			<div class="form-group">
   <label class="control-label">Name on Card</label>
    <input type="text" class="form-control" name="name">
</div>
<div class="form-group">
   <label class="control-label">Card Number</label>
    <input type="text" class="form-control" name="number" required title="Enter 16 digit card number">
  
</div>      
<div class="form-group">
   <label class="control-label">Expiration date</label>
    <input type="text" class="form-control" name="date" placeholder="01/22">
</div>
<div class="form-group">
   <label class="control-label">CVV</label>
    <input type="text" class="form-control" name="cvv">
</div>
<div class="form-group">
    <button class="btn btn-success">Make Payment</button>
    </form>
</div>
</div>
			</div>
			
		<div class="clear"></div>	
		
	</div>
<?php include('include/footer.php');?>
</div>
<?php
    
    extract($_POST);
    include('include/config.php');
    $_SESSION['screen']=$screen;
    $_SESSION['seatno']=$seat;
	if(empty($seat))
	{
		header("book.php");
	}
	print_r($seat);
    $_SESSION['seats']=$seats;
    $_SESSION['amount']=$amount;
    $_SESSION['date']=$date;
    $_SESSION['time']=$time;
    header('location:bank.php');
?>
<script>
        $(document).ready(function() {
            $('#form1').bootstrapValidator({
            fields: { 
            name: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'The Name is required and can\'t be empty'
                    },regexp: {
                        regexp: /^[a-zA-Z ]+$/,
                        message: 'The Name can only consist of alphabets'
                    } } },
            number: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'The Card Number is required and can\'t be empty'
                    },stringLength: {
                    min: 16,
                    max: 16,
                    message: 'The Card Number must 16 characters long'
                },regexp: {
                        regexp: /^[0-9 ]+$/,
                        message: 'Enter a valid Card Number'
                    } } },
            date: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'The Expire Date is required and can\'t be empty'
				},
				stringLength: {
                    min: 5,
                    max: 5,
					
                    message: 'The date must 4 characters long'
                },
                      regexp:{  regexp: /^\d{2}\/\d{2}$/,
						message: 'The Expire Date is not valid'
                    } } },
            cvv: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'The cvv is required and can\'t be empty'
                    },stringLength: {
                    min: 3,
                    max: 3,
                    message: 'The cvv must 3 characters long'
                },regexp: {
                        regexp: /^[0-9 ]+$/,
                        message: 'Enter a valid cvv'
                    } } }}
            });
            });

</script>