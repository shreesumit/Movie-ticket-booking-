<?php
include("include/header.php");
?>
<div class="content">
	<div class="wrap">
		<div class="content-top" style="min-height:400px;padding:0px;width:100%">
			<div class="col-md-12">
				<div class="panel panel-default">
				  <div class="panel-heading">Send Your Message</div> 
				<?php
			if(isset($_SESSION['error']))
		{
			foreach($_SESSION['error'] as $er)
			{
				echo'<font color="red"><b>'.$er.'</b></font>';
				echo'<br>';
			}
			unset($_SESSION['error']);
		}
		if(isset($_SESSION['error']))
		{
		echo'<font color="green"><b>'.$_SESSION['done'].'</b></font>';
		unset($_SESSION['done']);
		}
		?>
				  <div class="panel-body">
				<form action="contact_process.php" method="post" id="form1">
				    <div class="form-group has-feedback">
        <input name="nm" type="text" size="25" placeholder="Name" class="form-control" required/>
</div>
        <div class="form-group has-feedback">
<input name="mno" type="text" placeholder="Mobile Number" class="form-control" required     />
</div>
<div class="form-group has-feedback">
         <input name="email" type="text" placeholder="Email" class="form-control"  required   />
         </div>
         <div class="form-group has-feedback">
         	<textarea name="msg" placeholder="Message "></textarea>
         </div>
           <div class="form-group">
          <button type="submit" class="btn btn-primary">Send Now</button>
      </div>
      </div>
</div>
    </form>
			</div>
		</div>
		<div class="clear"></div>	
		</div>
	</div>
	<?php
	include("include/footer.php");
	?>