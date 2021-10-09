<?php include('include/header.php');
include("include/config.php");
$sq="select * from register where r_id='".$_SESSION['client']['uid']."' ";
	$res=mysqli_query($con,$sq);
	$row=mysqli_fetch_array($res);
?>
<div class="content">
	<div class="wrap">
		<div class="content-left" style="min-height:300px;padding:20px;width:100%">
			<div class="col-md-12">
				<div class="panel panel-default">
				  <div class="panel-heading">Change Password</div>
				  <div class="panel-body">
				  	<?php
				if(isset($_SESSION['error']))
				{
					foreach($_SESSION['error'] as $er)
				echo'<font color="red">'.$er.'</font>';
				unset($_SESSION['error']);
			    }
				if(isset($_SESSION['done']))
				{
				echo'<font color="green">'.$_SESSION['done'].'</font>';
				unset($_SESSION['done']);
			    }
				?>
				<p class="login-box-msg">Change Your Password Dear,<?php echo $row['r_nm']; ?></p>
				<form action="changepass_pro.php" method="post">
  
     <div class="form-group has-feedback">
        <input name="opwd" type="password" size="25" placeholder="Old Password" class="form-control" required />
     <input type="hidden" name="id" value="<?php echo $row['r_id']; ?>">
      </div>
	   <div class="form-group has-feedback">
        <input name="pwd" type="password" size="25" placeholder="New Password" class="form-control" required />
     
      </div>
	   <div class="form-group has-feedback">
        <input name="cpwd" type="password" size="25" placeholder="Confirm New Password" class="form-control"  required />
     
      </div>
      <div class="form-group">
          <button type="submit" class="btn btn-primary">Change Password</button>
 
      </div>
      </div>
</div>
    </form>
			</div>
		</div>
		</div>
	</div>
<?php include('include/footer.php');?>