<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">




	<style type="text/css">
		.navbar-inverse
		{
		    background:#00796B;
		    border-bottom-color: #004D40;
		}
		.navbar-inverse .navbar-nav>li>a,.navbar-inverse .navbar-brand,.navbar-inverse .navbar-nav>.dropdown>a .caret
		{
		    color: #fff;
		}
		.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus,
		.navbar-nav>li>.dropdown-menu
		{
		    background:#4DB6AC;
		}
		.nav-pills>li>a,
		{
		    color: #303F9F;
		}

		.nav>li>a:hover, .nav>li>a:focus
		{
		    background-color: #EEEEEE;
		}


		/*CSS BO THONG KE*/
		.circle-tile {
		    margin-bottom: 15px;
		    text-align: center;
		}
		.circle-tile-heading {
		    border: 3px solid rgba(255, 255, 255, 0.3);
		    border-radius: 100%;
		    color: #FFFFFF;
		    height: 80px;
		    margin: 0 auto -40px;
		    position: relative;
		    transition: all 0.3s ease-in-out 0s;
		    width: 80px;
		}
		.circle-tile-heading .fa {
		    line-height: 80px;
		}
		.circle-tile-content {
		    padding-top: 50px;
		}
		.circle-tile-number {
		    font-size: 26px;
		    font-weight: 700;
		    line-height: 1;
		    padding: 5px 0 15px;
		}
		.circle-tile-description {
		    text-transform: uppercase;
		}
		.circle-tile-footer {
		    background-color: rgba(0, 0, 0, 0.1);
		    color: rgba(255, 255, 255, 0.5);
		    display: block;
		    padding: 5px;
		    transition: all 0.3s ease-in-out 0s;
		}
		.circle-tile-footer:hover {
		    background-color: rgba(0, 0, 0, 0.2);
		    color: rgba(255, 255, 255, 0.5);
		    text-decoration: none;
		}
		.circle-tile-heading.dark-blue:hover {
		    background-color: #2E4154;
		}
		.circle-tile-heading.green:hover {
		    background-color: #138F77;
		}
		.circle-tile-heading.orange:hover {
		    background-color: #DA8C10;
		}
		.circle-tile-heading.blue:hover {
		    background-color: #2473A6;
		}
		.circle-tile-heading.red:hover {
		    background-color: #CF4435;
		}
		.circle-tile-heading.purple:hover {
		    background-color: #7F3D9B;
		}
		.tile-img {
		    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);
		}

		.dark-blue {
		    background-color: #34495E;
		}
		.green {
		    background-color: #16A085;
		}
		.blue {
		    background-color: #2980B9;
		}
		.orange {
		    background-color: #F39C12;
		}
		.red {
		    background-color: #E74C3C;
		}
		.purple {
		    background-color: #8E44AD;
		}
		.dark-gray {
		    background-color: #7F8C8D;
		}
		.gray {
		    background-color: #95A5A6;
		}
		.light-gray {
		    background-color: #BDC3C7;
		}
		.yellow {
		    background-color: #F1C40F;
		}
		.text-dark-blue {
		    color: #34495E;
		}
		.text-green {
		    color: #16A085;
		}
		.text-blue {
		    color: #2980B9;
		}
		.text-orange {
		    color: #F39C12;
		}
		.text-red {
		    color: #E74C3C;
		}
		.text-purple {
		    color: #8E44AD;
		}
		.text-faded {
		    color: rgba(255, 255, 255, 0.7);
		}


	</style>

</head>
<body>
	
	<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
	    <div class="container-fluid">
	        <div class="navbar-header">
	            <a class="navbar-brand" href="#">Dashboard</a>
	        </div>
	    </div>
	    <!-- /container -->
	</div>

	<!-- /Header -->

	<!-- Main -->

	<div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">

	    <ul class="nav nav-pills nav-stacked" style="border-right:1px solid black">
	        <!--<li class="nav-header"></li>-->
	        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	        <li><a href="#"><i class="fa fa-tags"></i> Upload</a></li>
	        <li><a href="#"><i class="fa fa-lock"></i> Change Password</a></li>

	    </ul>
	</div><!-- /span-3 -->
	<?php
		// include "../includes/includeDashboard.php";

		include "C:/xampp/htdocs/library2/resources/views/includes/upload.blade.php";
	?>

</body>
</html>