@extends('layouts.frontLayouts.master')
@section('content')
@include('layouts.frontLayouts.sidebar')

<div id="advantages"><!-- #advantages Begin -->

    <div class="container"><!-- container Begin -->

        <div class="same-height-row"><!-- same-height-row Begin -->

            <div class="col-sm-4"><!-- col-sm-4 Begin -->

                <div class="box same-height"><!-- box same-height Begin -->

                    <div class="icon"><!-- icon Begin -->

                        <i class="fa fa-heart"></i>

                    </div><!-- icon Finish -->

                    <h3><a href="#">Best Offer</a></h3>

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>

                </div><!-- box same-height Finish -->

            </div><!-- col-sm-4 Finish -->

            <div class="col-sm-4"><!-- col-sm-4 Begin -->

                <div class="box same-height"><!-- box same-height Begin -->

                    <div class="icon"><!-- icon Begin -->

                        <i class="fa fa-tag"></i>

                    </div><!-- icon Finish -->

                    <h3><a href="#">Best Prices</a></h3>

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

                </div><!-- box same-height Finish -->

            </div><!-- col-sm-4 Finish -->

            <div class="col-sm-4"><!-- col-sm-4 Begin -->

                <div class="box same-height"><!-- box same-height Begin -->

                    <div class="icon"><!-- icon Begin -->

                        <i class="fa fa-thumbs-up"></i>

                    </div><!-- icon Finish -->

                    <h3><a href="#">100% Original</a></h3>

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

                </div><!-- box same-height Finish -->

            </div><!-- col-sm-4 Finish -->

        </div><!-- same-height-row Finish -->

    </div><!-- container Finish -->

</div><!-- #advantages Finish -->

<div id="hot"><!-- #hot Begin -->

    <div class="box"><!-- box Begin -->

        <div class="container"><!-- container Begin -->

            <div class="col-md-12"><!-- col-md-12 Begin -->

                <h2>
                    Our Latest Products
                </h2>

            </div><!-- col-md-12 Finish -->

        </div><!-- container Finish -->

    </div><!-- box Finish -->

</div><!-- #hot Finish -->

<div id="content" class="container"><!-- container Begin -->

    <div class="row"><!-- row Begin -->

        @foreach($product as $p)
        <div class="col-sm-4 col-sm-6 single"><!-- col-sm-4 col-sm-6 single Begin -->

            <div class="product"><!-- product Begin -->

                <a href="details.php">

                    <img class="img-responsive" src="images/frontend_image/products/{{$p->productImg1}}" alt="Product 1">

                </a>

                <div class="text"><!-- text Begin -->

                    <h3>
                        <a href="details.php">
                            {{$p->productName}}
                        </a>
                    </h3>

                    <p class="price">{{$p->productPrice}} đ</p>

                    <p class="button">

                        <a href="details.php" class="btn btn-default">View Details</a>

                        <a href="details.php" class="btn btn-primary">

                            <i class="fa fa-shopping-cart">
                                Add To Cart
                            </i>

                        </a>

                    </p>

                </div><!-- text Finish -->

            </div><!-- product Finish -->

        </div><!-- col-sm-4 col-sm-6 single Finish -->
        @endforeach
        {{ $product->links() }}

    </div><!-- row Finish -->

</div><!-- container Finish -->
@endsection()
