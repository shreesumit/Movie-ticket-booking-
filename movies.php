<?php include("include/header.php"); 
$sq="select * from movies";
$res=mysqli_query($con,$sq);
?>
	
<div class="now-showing-movies">
		<h3 class="m-head">Now Showing</h3>
		<?php
											while($nm=mysqli_fetch_assoc($res))
											{
												
												?>
<div class="col-md-4 movie-preview">
			<a href="buynow.php?id=<?php echo$nm['m_id']; ?>" class="mask">
				<img src="upload/<?php echo $nm['m_banner'];?>" class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
					<a class="m-movie-link" href="buynow.php?id=<?php echo$nm['m_id']; ?>"><?php echo$nm['m_nm']; ?></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><i class="fa fa-calendar-o"></i><?php echo$nm['m_date']; ?></p>
						<a href="buynow.php?id=<?php echo$nm['m_id']; ?>">book now</a>
					</div>
					<div class="m-r-like">
						<i class="fa fa-thumbs-up"></i>
						<p>rocking</p>
					</div>
					 <div class="clearfix"></div>
				</div>
			</a>
		</div>
		<?php
		}
		?>
		 <div class="clearfix"></div>
	</div>
	<div class="now-showing-movies">
		<h3 class="m-head">Next Change & Coming Soon</h3>
		<?php $sq1="select * from upmovies";
$res1=mysqli_query($con,$sq1);
while($nm1=mysqli_fetch_assoc($res1))
											{
												
												?>
		<div class="col-md-4 movie-preview">
		<a href="movie_details.php?id=<?php echo$nm1['um_id']; ?>" class="mask">
				<img src="upload/<?php echo $nm1['um_banner'];?> " class="img-responsive zoom-img" alt="" />
				<div class="m-movie-title">
				<a class="m-movie-link" href="buynow.php?id=<?php echo$nm['m_id']; ?>"><?php echo$nm['m_nm']; ?></a>
					<div class="clearfix"></div>
					<div class="m-r-date">
						<p><b><?php echo $nm1['um_nm']; ?></b></p>
					</div>
					<div class="m-r-like">
						<p>want to see <span>96</span>%</p>
					</div>
					</a>
					 <div class="clearfix"></div>
				
		</div>
		</div>
		<?php
				}
				?>
		<div class="clearfix"></div>
		</div>
 <?php include ("include/footer.php"); ?>