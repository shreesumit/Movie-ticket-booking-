<?php
	include("include/header.php");
	include("../include/config.php");
	session_start();
?>
<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">New Messages</h1>
  <!-- DataTales Example -->
  <div class="card shadow mb-4">
	<div class="card-header py-3">
	  <h6 class="m-0 font-weight-bold text-primary">View All Queries</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <?php 
       if(isset($_SESSION['del']))
			{
			echo'<font color="red">'.$_SESSION['del'].'</font>';
		unset($_SESSION['del']);
		}
		
			if(isset($_SESSION['update']))
			{
			echo'<font color="green">'.$_SESSION['update'].'</font>';
		unset($_SESSION['update']);
			}
			if(isset($_SESSION['disable']))
			{
			echo'<font color="red">'.$_SESSION['disable'].'</font>';
		unset($_SESSION['disable']);
		}
		if(isset($_SESSION['enable']))
			{
			echo'<font color="green">'.$_SESSION['enable'].'</font>';
		unset($_SESSION['enable']);
		}
?>  
<thead>
                    <tr>
                      <th>No</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Mobile No.</th>
                      <th>Message</th>
                      <th>Time</th>
                      <th>Delete</th>
                    </tr>
                  </thead>
                  <tbody>
          <?php
  $sq=mysqli_query($con,"select * from contact");
  $co=1;
while($row=mysqli_fetch_assoc($sq))    	
              {
       $tt=date('d-m-Y',$row['co_time']);
                 echo'<tr>';
               echo'<td>'.$co.'</td>';
               echo'<td>'.$row['co_nm'].'</td>';
               echo'<td>'.$row['co_email'].'</td>';
               echo'<td>'.$row['co_mno'].'</td>';
               echo'<td>'.$row['co_msg'].'</td>';
               echo'<td>'.$tt.'</td>';
             echo'<td><a href="contact_delete.php?id='.$row['co_id'].' ">Delete</a></td>';
             $co++;
             }
             ?>
                    </tr>
                  </tbody>
                </table>
              </div>
	</div>
  </div>

</div>
<!-- /.container-fluid -->
<?php
	include("include/footer.php");
?>