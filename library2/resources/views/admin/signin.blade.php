<!DOCTYPE html>
<html>
<head>
	<LINK REL="SHORTCUT ICON"  HREF="ShoesImage/logo.png">
	<title>SignIn</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
    	.well{
    		background: #5cb85c;
    	}
    	body{
    		overflow-x: hidden;
    	}
    	.main-content{
    		width: 50%;
    		margin: auto;
    		border: 3px solid #e9ebee;
    		border-radius: 10px;
    		padding: 20px;
    		padding-right: 20px;
    	}
    	#btn-login{
    		width: 50%;
    		border-radius: 10px;

    	}
    	.form-control{
    		margin: 20px;
    		width: 95%;
    	}

    </style>
</head>
<body>
	<div class="row">
		<div class="col-sm-12">
			<div class="well">
				<image src="ShoesImage/logo.png" class="navbar-brand" style = "height: 129px"></image>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<div class="main-content">
				<form action="login.php" method="post">
					<input type="text" name="admin-acc" class="form-control" placeholder="Admin account"><br>
					<input type="password" name="admin-pass" class="form-control" placeholder="Admin pass"><br>
					<input type="password" name="re-admin-pass" class="form-control" placeholder="re-Admin pass"><br>
					<input type="text" name="address" class="form-control" placeholder="Address"><br>
					<input type="text" name="phone-number" class="form-control" placeholder="phone-number"><br>
					<center><button class="btn btn-success" id="btn-login" name="login">Login</button></center>
				</form>
			</div>
		</div>
	</div>



</body>
</html>