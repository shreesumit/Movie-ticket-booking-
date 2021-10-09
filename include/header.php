<?php include('config.php');
session_start();
date_default_timezone_set('Asia/Kolkata');
error_reporting(0);

?>
<!DOCTYPE html>
<html>
<head>
<title>BOOK MY SHOW</title>
<link rel="icon" href="https://i.pinimg.com/originals/d2/1d/79/d21d796317fbe071ce591803543fd546.jpg"
        type="image/x-icon">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/menu.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="css/css1/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/css1/flexslider.css" type="text/css" media="all" />
<link type="text/css" rel="stylesheet" href="http://www.dreamtemplate.com/dreamcodes/tabs/css/tsc_tabs.css" />
<link rel="stylesheet" href="css/css1/tsc_tabs.css" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src='js/jquery.color-RGBa-patch.js'></script>
<script src='js/example.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>

<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		   <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
</head>
<body>
	<!-- header-section-starts -->
		<div class="container">
		  <div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="index.php"><h1>BOOK MY SHOW</h1></a>
				</div>
				
				<div class="clearfix"></div>
			</div>
	<div class="bootstrap_container">
            <nav class="navbar navbar-default w3_megamenu" role="navigation">
                <div class="navbar-header">
          			<button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="index.php" class="navbar-brand"><i class="fa fa-home"></i></a>
				</div><!-- end navbar-header -->
        
            <div id="defaultmenu" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="https://localhost/movies/MASTER%20PAGE.php">Home</a></li>	
                    <!-- Mega Menu -->
					<li class="dropdown w3_megamenu-fw"><a href="movies.php"  class="dropdown-toggle">Movies</a>
                      
                    </li>
					
					<li class="dropdown"><a href="contact.php" class="dropdown-toggle">Contact Us</a></li>
       <?php             if(isset($_SESSION['client']['status']))
{
echo' <li class="dropdown"><a href="profile.php" class="dropdown-toggle">Booking History</a>';
echo' <li class="dropdown"><a href="changepass.php" class="dropdown-toggle">Change Password</a>';
echo' <li class="dropdown"><a href="logout.php" class="dropdown-toggle">Logout</a>';
}
else
{
	echo' <li class="dropdown"><a href="login.php" class="dropdown-toggle">Login</a>';
	echo'<li class="dropdown"><a href="register.php" class="dropdown-toggle">Register</a>';
}
?></li>
					
					
				</ul>
			</div>
			</nav>
		</div>
