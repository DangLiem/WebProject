<!DOCTYPE html>
<html>
<head>
	<LINK REL="SHORTCUT ICON"  HREF="ShoesImage/logo.png">
	<title>Deep Shoes Market</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


	<style type="text/css">
		.btn-product{
    width: 100%;
	}
	</style>
	<style type="text/css">
	/* Footer */
	@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	section {
	    padding: 60px 0;
	}

	section .section-title {
	    text-align: center;
	    color: #007b5e;
	    margin-bottom: 50px;
	    text-transform: uppercase;
	}
	#footer {
	    background: #007b5e !important;
	}
	#footer h5{
		padding-left: 10px;
	    border-left: 3px solid #eeeeee;
	    padding-bottom: 6px;
	    margin-bottom: 20px;
	    color:#ffffff;
	}
	#footer a {
	    color: #ffffff;
	    text-decoration: none !important;
	    background-color: transparent;
	    -webkit-text-decoration-skip: objects;
	}
	#footer ul.social li{
		padding: 3px 0;
	}
	#footer ul.social li a i {
	    margin-right: 5px;
		font-size:25px;
		-webkit-transition: .5s all ease;
		-moz-transition: .5s all ease;
		transition: .5s all ease;
	}
	#footer ul.social li:hover a i {
		font-size:30px;
		margin-top:-10px;
	}
	#footer ul.social li a,
	#footer ul.quick-links li a{
		color:#ffffff;
	}
	#footer ul.social li a:hover{
		color:#eeeeee;
	}
	#footer ul.quick-links li{
		padding: 3px 0;
		-webkit-transition: .5s all ease;
		-moz-transition: .5s all ease;
		transition: .5s all ease;
	}
	#footer ul.quick-links li:hover{
		padding: 3px 0;
		margin-left:5px;
		font-weight:700;
	}
	#footer ul.quick-links li a i{
		margin-right: 5px;
	}
	#footer ul.quick-links li:hover a i {
	    font-weight: 700;
	}

	@media (max-width:767px){
		#footer h5 {
	    padding-left: 0;
	    border-left: transparent;
	    padding-bottom: 0px;
	    margin-bottom: 10px;
	}
	}

	</style>
</head>
<body>
	<!-- begin menu -->
	<nav class= "navbar navbar-default" role= "navigation" style="background: #00796B; border-radius: 0;">
		<div class= "container"><!-- container begin -->
			<div><!-- begin navbar-header -->
				<button type= "button"  class= "navbar-toggle collapsed" data-toggle="collapse" data-target= "#navbar" aria-expanded= "false" aria-controls= "navbar">
					<span class= "sr-only">Menu</span>
					<span class= "icon-bar"></span>
					<span class= "icon-bar"></span>
					<span class= "icon-bar"></span>
				</button>
				<image src="ShoesImage/logo.png" class="navbar-brand" style = "height: 129px"></image>
			</div><!-- finish navbar-header-->

			<div id= "navbar" class= "navbar-collapse collapse" aria-expanded= "false" style= "height: 1px; margin-top: 3%; margin-left: 60%;">
				<ul class= "nav navbar-nav">
					<li class= "active"><a href= "/" style= "background-color: pink; border-radius: 33px;">Home</a></li>
					<li class= "dropdown">
						<a href= "#" class= "dropdown-toggle" data-toggle= "dropdown" style= "color: white">Product type<span class= "caret"></span></a>
						<ul class= "dropdown-menu" role= "menu" style= "background-color: #00796B;background-color: pink; border-radius: 33px" >
							<li><a href= "/product-type/1" style= "color: white">Adidas</a></li>
							<li><a href= "/product-type/2" style= "color: white">Palladium</a></li>
							<li><a href= "/product-type/3" style= "color: white">Converse</a></li>
						</ul>
					</li>

					<li><a href= "#" style= "color: white">Go to cart</a></li>
					<li><a href= "#" style= "color: white">Login</a></li>
				</ul>

			</div>

		</div><!-- finish container -->
	</nav>
	<!-- finish menu -->

	<!-- Start slide -->
	<div class="container" id= "slide" style= "margin-bottom: 30px">
		<div class= "col-md-12">
			<div class= "carousel slide" id= "myCarousel" data-ride= "carousel">
				<ol class= "carousel-indicators">  <!--carousel-indicators Begin -->
					<li class= "active" data-target= "#myCarousel" data-slide-to= "0"></li>
					<li data-target= "#myCarousel" data-slide-to= "1"></li>
					<li data-target= "#myCarousel" data-slide-to= "2"></li>
					<li data-target= "#myCarousel" data-slide-to= "3"></li>
					<li data-target= "#myCarousel" data-slide-to= "4"></li>
					<li data-target= "#myCarousel" data-slide-to= "5"></li>
				</ol> <!-- carousel- indicators finish -->

				<div class= "carousel-inner"> <!-- carousel-inner Begin -->
					<div class= "item active">
						<img src= "ShoesImage/slide/slide-1.jpg" alt= "picture1.">
					</div>
					<div class= "item">
						<image src= "ShoesImage/slide/slide-2.jpg" alt= "picture2.">
					</div>
					<div class= "item">
						<image src= "ShoesImage/slide/slide-3.jpg" alt="picture3.">
					</div>
					<div class= "item">
						<image src= "ShoesImage/slide/slide-4.jpg" alt="picture4">
					</div>

				</div><!-- carousel-inner finish -->

				<a href="#myCarousel" class= "left carousel-control" data-slide= "prev">
					<span class= "glyphicon glyphicon-chevron-left"></span>
					<span class= "sr-only">Previous</span>
				</a> <!-- left -->

				<a href="#myCarousel" class= "right carousel-control" data-slide= "next">
					<span class= "glyphicon glyphicon-chevron-right"></span>
					<span class= "sr-only">Next</span>
				</a>

			</div>
		</div>

	</div>
	<!-- End slide -->

	<!-- CART START -->
	<div class="container">
		<div class="row">
			<center>
				<button class="btn btn-info" data-toggle="modal" data-target="#myModal">
					<span class="glyphicon glyphicon-shopping-cart" style="color:#fff; ">
					</span> Cart
				</button>
				<div id="myModal" class="modal fade" role="dialog" style="margin: center;">
					<div class="container">
						<br>
						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-info">
									<div class="panel-heading">
										<div class="panel-title">
											<div class="row">
												<div class="col-xs-6">
													<h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
												</div>
												<div class="col-xs-6">
													<button type="button" class="btn btn-primary btn-sm btn-block">
														<span class="glyphicon glyphicon-share-alt"></span> Continue shopping
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
											</div>
											<div class="col-xs-4">
												<h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
											</div>
											<div class="col-xs-6">
												<div class="col-xs-6 text-right">
													<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
												</div>
												<div class="col-xs-4">
													<input type="text" class="form-control input-sm" value="1">
												</div>
												<div class="col-xs-2">
													<button type="button" class="btn btn-link btn-xs">
														<span class="glyphicon glyphicon-trash"> </span>
													</button>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
											</div>
											<div class="col-xs-4">
												<h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
											</div>
											<div class="col-xs-6">
												<div class="col-xs-6 text-right">
													<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
												</div>
												<div class="col-xs-4">
													<input type="text" class="form-control input-sm" value="1">
												</div>
												<div class="col-xs-2">
													<button type="button" class="btn btn-link btn-xs">
														<span class="glyphicon glyphicon-trash"> </span>
													</button>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="text-center">
												<div class="col-xs-9">
													<h6 class="text-right">Added items?</h6>
												</div>
												<div class="col-xs-3">
													<button type="button" class="btn btn-default btn-sm btn-block">
														Update
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="panel-footer">
										<div class="row text-center">
											<div class="col-xs-9">
												<h4 class="text-right">Total <strong>$50.00</strong></h4>
											</div>
											<div class="col-xs-3">
												<button type="button" class="btn btn-success btn-block">
													Pay
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</center>
		</div>
		<!-- CART END -->
		<br>
		<!-- ITEM SRART -->
		<div class="row">
			@foreach($pr as $prd)
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="img-thumbnail">
					<img src="ShoesImage/{{$prd->image}}" class="img-responsive">
				</div>
				<div class="caption">
					<div>
						<h4>{{$prd->name}}</h4>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-4 col-xs-4 price" >
							<h3 style="margin: 5px auto;"><label>${{$prd->price}}</label></3>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8">
							<a href="" class="btn btn-success btn-product">
								<span class="glyphicon glyphicon-shopping-cart"></span>Add 2 cart
							</a>
						</div>
						<p> </p>
					</div>
				</div>	
			</div>
			@endforeach
		</div>
	</div>
	<!-- ITEM END -->
	<br>
	<!-- BUTTON GROUP START -->
	<center>
		<div class="btn-group">
		  <div class="row">{{$pr->links()}}</div>
		</div>
	</center>
	<!-- BUTTON GROUP END -->
	<br>
	<!-- FOOTER START -->
<!-- Footer -->
	<section id="footer">
		<div class="container">
			<div class="row text-center text-xs-center text-sm-left text-md-left">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-google-plus"></i></a></li>
						<li class="list-inline-item"><a href="javascript:void();" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				</hr>
			</div>		
		</div>
	</section>
	<!-- ./Footer -->

</body>
</html>