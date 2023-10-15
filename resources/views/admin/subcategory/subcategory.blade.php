@extends('layouts.dashboard')

@section('content')
<div class="row py-1">
    <div class="col-lg-2">
        <div class="page-header-title">
            <h4>SubCategory</h4>
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
                <li class="breadcrumb-item"><a href="{{route('subcategory')}}">SubCategory</a>
                </li>
            </ul>
        </div>
    </div>
</div>

    <div class="">
        <div class="row py-5">
            <div class="col-lg-8">
              <div class="card">
                    <div class="card-header">
                        <h1>SubCategory List</h1>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <tr>
                                <th class="text-center">SL</th>
                                <th>Category</th>
                                <th>SubCategory</th>
                                <th class="text-center">Image</th>
                                <th class="text-center">Action</th>
                            </tr>
                            @foreach ($subcategories as $sl=>$subcategory)

                            <tr>
                                <td class="text-center">{{ $sl+1 }}</td>
                                <td>{{ $subcategory->rel_to_category->category_name }}</td>
                                <td>{{ $subcategory->subcategory_name }}</td>
                                <td class="text-center"><img width="50" src="{{asset('uploads/subcategory')}}/{{ $subcategory->subcategory_img}}" class="img-fluid rounded-top" alt=""></td>
                                <td class="text-center">
                                   <div class="card-block post-timelines">
                                    <i class="icon-options tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="tooltip">
                                    </i>
                                    <div class="dropdown-menu dropdown-menu-right b-none services-list" x-placement="bottom-end" style="position: absolute; transform: translate3d(349px, 24px, 0px); top: 0px; left: 0px; will-change: transform;">
                                        <a href="{{ route('edit.subcategory', $subcategory->id )}}" class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="icofont icofont-ui-edit"></i>Edite</a>
                                   <a href="{{ route('delete.category', $subcategory->id )}}" class="tabledit-delete-button btn btn-danger waves-effect waves-light active" style="float: none;margin: 5px;"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                    </div>
                                </div>
                                </td>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card">
                    @if (session('success'))
                    <div class="alert alert-success">{{session('success')}}</div>
                    @endif
                    <div class="card-header">
                        <h1>Add SubCategory</h1>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('subcategory.store')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <select name="category_id" class="form-control">
                                    <option value="">--Select Category--</option>

                                    @foreach ($categories as $category )
                                    <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                    @endforeach

                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">SubCategory name</label>
                                <input type="text" class="form-control" name="subcategory_name">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">SubCategory image</label>
                                <input type="file" class="form-control" name="subcategory_img">
                            </div>
                            <div class="mb-3 pt-3">
                                <button type="submit"class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="ion-plus"></i>Add SubCategory</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
