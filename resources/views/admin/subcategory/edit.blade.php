@extends('layouts.dashboard')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-6 m-auto">
                <div class="card">
                     @if (session('success'))
                    <div class="alert alert-success">{{session('success')}}</div>
                    @endif
                    <div class="card-header">
                        <h3>Edit SubCategory</h3>
                    </div>
                    <div class="card-body">
                         <form action="{{ route('subcategory.update')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <input type="hidden" name="id" value="{{ $subcategory_info->id}}">
                                <select name="category_id" class="form-control">
                                    <option value="">--Select Category--</option>

                                    @foreach ($categories as $category )
                                    <option value="{{ $category->id }}" {{($category->id == $subcategory_info->category_id?'selected':'')}}>{{ $category->category_name }}</option>
                                    @endforeach

                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">SubCategory name</label>
                                <input type="text" value="{{ $subcategory_info->subcategory_name }}" class="form-control" name="subcategory_name">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">SubCategory image</label>
                                <input type="file" class="form-control" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])" name="subcategory_img">
                                <div class="pt-3">
                                    <img width="100" id="blah" src="{{asset('uploads/subcategory')}}/{{$subcategory_info->subcategory_img}}" alt="">
                                </div>
                            </div>
                            <div class="mb-3 pt-3">
                                <button class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" type="submit"><i class="ion-loop"></i>Update SubCategory</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
