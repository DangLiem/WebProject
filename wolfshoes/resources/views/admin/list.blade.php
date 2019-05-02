@extends('layouts.adminLayouts.admin_design')
@section('content')
    <div id="content">
        <div id="content-header">
            <h2 class="text-center lead">List Product</h2>
            <form class="form-horizontal" method="POST" enctype="multipart/form-data" action="{{url('/admin/listProduct')}}">
                @csrf
                <div class="control-group">
                    <label class="control-label">Product Name</label>
                    <div class="controls">
                        <input type="text" name="pName" required>
                    </div>
                </div>
                <div class="form-actions">
                    <input type="submit" value="Search" class="btn btn-success">
                </div>
            </form>
        </div>
        <div id="container-fluid">
            <table class="table table-dark table-hover">
                <thead>
                <tr>
                    <th>ProductCode</th>
                    <th>ProductName</th>
                    <th>ProductLine</th>
                    <th>ProductPrice</th>
                    <th>ProductDescription</th>
                </tr>
                </thead>
                <tbody>
                @foreach($products as $p)
                    <tr>
                        <td>{{$p->productCode}}</td>
                        <td>{{$p->productName}}</td>
                        <td>{{$p->productLineID}}</td>
                        <td>{{$p->productPrice}}</td>
                        <td>{{$p->productDescription}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            {{ $products->links() }}


        </div>
    </div>

@endsection
