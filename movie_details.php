<?php include('include/header.php');
$qry2=mysqli_query($con,"select * from upmovies where um_id='".$_GET['id']."'");
$movie=mysqli_fetch_array($qry2);
$id=$_GET['id'];
?>
<div class="content"  >
<div class="wrap">
<div class="content-top" >
<div class="section group">
<div class="about span_1_of_21">	
<center><h3 style="color:blue;text-transform:uppercase;font-weight:bold">Movie Name: <?php echo $movie['um_nm']; ?></h3>	</center>
	<div class="about-top">	
		
			<div class="grid images_3_of_2">
			<img src="upload/<?php echo $movie['um_banner']; ?>" width="400px" height="200px" alt="Banner Not Supported"/>
		</div>
		
		<div class="desc span_3_of_2">
			<p class="p-link" style="font-size:15px" ><b>Cast : </b><?php echo $movie['um_cnm']; ?></p>
			<p class="p-link" style="font-size:15px"><b>Release Date : </b><?php echo date('d-M-Y',strtotime($movie['um_date'])); ?></p>
			<p style="font-size:15px"><b>Description : </b><?php echo $movie['um_des']; ?></p>
		</div>
		<div class="clear"></div>
	</div>
</div>			
</div>
</div>
</div>
<?php include('include/footer.php');?>