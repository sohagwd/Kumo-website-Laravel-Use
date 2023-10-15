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
                <li class="breadcrumb-item"><a href="{{route('variation')}}">Product Variation</a>
                </li>
            </ul>
        </div>
    </div>
</div>
    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-header">
                    <h3>Color List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <tr>
                            <th>SL</th>
                            <th>Color Name</th>
                            <th>Color</th>
                        </tr>
                        @foreach ($colors as $key=>$color)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td>{{$color->color_name}}</td>
                            <td><span class="badge badge-pill p-2" style="background-color: #{{$color->color_code}}">{{$color->color_name}}</span></td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-header">
                    <h3>Add Color</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('variation.store')}}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="" class="form-label">Color Name</label>
                            <input type="text" name="color_name" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">Color Code</label>
                            <input type="text" name="color_code" class="form-control">
                        </div>
                        <div class="mb-3">
                           <button name="btn" value="1" type="submit"class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="ion-plus"></i>Add Color</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="card">
                <div class="card-header">
                    <h3>Color List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <tr>
                            <th>SL</th>
                            <th>Size Name</th>
                        </tr>
                        @foreach ($sizes as $key=>$size)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td>{{$size->size_name}}</td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-header">
                    <h3>Add Size</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('variation.store')}}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="" class="form-label">Size Name</label>
                            <input type="text" name="size_name" class="form-control">
                        </div>
                        <div class="mb-3">
                           <button name="btn" value="2" type="submit"class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="ion-plus"></i>Add Size</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
