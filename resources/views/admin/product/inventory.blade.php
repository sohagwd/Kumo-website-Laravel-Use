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
                <li class="breadcrumb-item"><a href="{{route('inventory', $product_id)}}">Product Inventory</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-9">
        <div class="card">
            <div class="card-header">
                <h3>Inventory</h3>
            </div>
            <div class="card-body">
                <table class="table table-striped">
                    <tr>
                        <th>SL</th>
                        <th>Product Name</th>
                        <th>Color Name</th>
                        <th>Size Name</th>
                        <th>Quantity</th>
                    </tr>
                    @foreach ($inventories as $key=>$inventory)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$inventory->rel_to_product->product_name}}</td>
                        <td>{{$inventory->rel_to_color->color_name}}</td>
                        <td>{{$inventory->rel_to_size->size_name}}</td>
                        <td>{{$inventory->quantity}}</td>
                        {{-- <td><span class="badge badge-pill p-2" style="background-color: #{{$inventory->color_code}}">{{$inventory->color_name}}</span></td> --}}
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="card">
            <div class="card-header">
                <h3>Add Inventory</h3>
            </div>
            <div class="card-body">
                <form action="{{route('inventory.store')}}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <input type="text" class="form-control" readonly value="{{$product_info->product_name}}">
                        <input type="hidden" class="form-control" name="product_id" readonly value="{{$product_info->id}}">
                    </div>
                    <div class="mb-3">
                        <select name="color_id" class="form-control">
                            <option value="">--- Select Color ---</option>
                            @foreach ($colors as $color)
                            <option value="{{ $color->id }}">{{$color->color_name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <select name="size_id" class="form-control">
                            <option value="">--- Select Size ---</option>
                            @foreach ($sizes as $size)
                            <option value="{{ $size->id }}">{{$size->size_name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <input type="number" class="form-control" name="quantity">
                    </div>
                    <div class="mb-3">
                        <button type="submit"class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="ion-plus"></i>Add Invatory</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
