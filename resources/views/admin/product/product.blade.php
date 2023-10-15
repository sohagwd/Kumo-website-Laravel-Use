@extends('layouts.dashboard')

@section('content')
<div class="row py-1">
    <div class="col-lg-2 ">
        <div class="page-header-title">
            <h4>Product</h4>
        </div>
    </div>
    <div class="col-lg-10 m-auto">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="index.html">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="{{route('home')}}">Dashboard</a>
                </li>
                <li class="breadcrumb-item"><a href="{{route('add.product')}}">Product</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h3>Product List</h3>
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <tr>
                    <th>SL</th>
                    <th>Product</th>
                    <th>Brand</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Category</th>
                    <th>SubCategory</th>
                    <th>Preview</th>
                    <th>Thumbnails</th>
                    <th class="text-center">Action</th>
                </tr>
                @foreach ($products as $key=>$product)
                <tr>
                    <td>{{$key+1}}</td>
                    <td>{{$product->product_name}}</td>
                    <td>{{$product->brand}}</td>
                    <td>TK: {{number_format($product->price)}}</td>
                    <td>{{$product->discount}}%</td>
                    <td>{{$product->rel_to_cat->category_name}}</td>
                    <td>{{$product->rel_to_subcat->subcategory_name}}</td>
                    <td><img width="70" src="{{ asset('uploads/product/preview/')}}/{{$product->preview}}" alt="preview"></td>
                    <td>
                        @foreach (App\Models\thumbnail::where('product_id', $product->id)->get() as $thumbnail)
                        <img width="34" src="{{ asset('uploads/product/thumbnail/')}}/{{$thumbnail->thumbnail}}" alt="">
                        @endforeach
                    </td>
                    <td>
                        <div class="card-block post-timelines">
                            <i class="icon-options tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 2px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="tooltip">
                            </i>
                            <div class="dropdown-menu dropdown-menu-right b-none services-list" x-placement="bottom-end" style="position: absolute; transform: translate3d(349px, 24px, 0px); top: 0px; left: 0px; will-change: transform;">
                        <a href="{{route('inventory',$product->id)}}"  class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="ion-clipboard"></i>Inventory</a>
                        <a href="{{route('product.delete', $product->id)}}"class="tabledit-delete-button btn btn-danger waves-effect waves-light active" style="float: none;margin: 5px;"><i class="icofont icofont-ui-delete"></i>Delete</a>
                            </div>
                        </div>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>
@endsection
