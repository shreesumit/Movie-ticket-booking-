<?php
	include("include/header.php");
	include("../include/config.php");
?>
<!-- Begin Page Content -->
<div class="container-fluid">
<script type="text/javascript">

  function checkForm(form)
  {
    // regular expression to match required date format
    re = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;

    if(form.startdate.value != '') {
      if(regs = form.startdate.value.match(re)) {
        // day value between 1 and 31
        if(regs[1] < 1 || regs[1] > 31) {
          alert("Invalid value for day: " + regs[1]);
          form.startdate.focus();
          return false;
        }
        // month value between 1 and 12
        if(regs[2] < 1 || regs[2] > 12) {
          alert("Invalid value for month: " + regs[2]);
          form.startdate.focus();
          return false;
        }
        // year value between 1902 and 2019
        if(regs[3] < 2021 || regs[3] > (new Date()).getFullYear()) {
          alert("Invalid value for year: " + regs[3] + " - must be between 1902 and " + (new Date()).getFullYear());
          form.startdate.focus();
          return false;
        }
      } else {
        alert("Invalid date format: " + form.startdate.value);
        form.startdate.focus();
        return false;
      }
    }
	
  }
  </script>

 
  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">All Movies</h1>
  <!-- DataTales Example -->
  <div class="card shadow mb-4">
	<div class="card-header py-3">
	  <h6 class="m-0 font-weight-bold text-primary">Add New Movie</h6>
	</div>
	<div class="card-body">
		<form action="movie_add.php" method="post" onsubmit="checkForm(this); return false;" name="form" enctype="multipart/form-data">
			<?php
			if(isset($_SESSION['done']))
			{
			echo'<font color="green">'.$_SESSION['done'].'</font>';
		unset($_SESSION['done']);
			}
			if(isset($_SESSION['error']))
			{
				foreach($_SESSION['error'] as $er)
				{
				echo'<font color="red">'.$er.'</font>';
				}
				unset($_SESSION['error']);
			}
?>
			<div class="form-group">
				<label>Movie Name</label>
				<input type="text" class="form-control" name="mnm" required>
			</div>
			<div class="form-group">
				<label>Release Date</label>
				<input type="text"  placeholder="dd/mm/yyyy" size="12" class="form-control" name="startdate">
			</div>
			<div class="form-group">
				<label>Director Name</label>
				<input type="text" class="form-control" name="dnm" required>
			</div>
			<div class="form-group">
				<label>Cast Name</label>
				<input type="text" class="form-control" name="cnm" required>
			</div>
			<div class="form-group">
				<label>Description</label>
				<textarea class="form-control" name="des"></textarea>
			</div>
			<div class="form-group">
				<label>Movie Banner</label>
				<input type="file" class="form-control" name="banner" required >
			</div>
			<input type="submit"  class="btn btn-success btn-sm" value="Submit">
		</form>
	</div>
  </div>

</div>
<!-- /.container-fluid -->
<?php
	include("include/footer.php");
?>
