<?php 
	include "../resources/views/includes/connect.blade.php";
	if(isset($_POST['login'])){
		$acc = htmlentities(mysqli_real_escape_string($con, $_POST['admin-acc']));
		$pass = htmlentities(mysqli_real_escape_string($con, $_POST['admin-pass']));
		$check_acc = "select * from account where acc='$acc' and pass='$pass'";
		$run_check = mysqli_query($con, $check_acc);
		$check = mysqli_num_rows($run_check);

		if ($check == 1) {
			echo "<script>window.open('pagemanage.php','_self')</script>";
		}
		else{
			echo "<script>alert('Sai tai khoan hoac mat khau!')</script>";
			echo "<script>window.open('signin.php','_self')</script>";
		}

	}
?>
