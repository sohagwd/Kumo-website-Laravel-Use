@extends('layouts.dashboard')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-6 m-auto">
                <div class="card">
                    <div class="card-header">
                        <h3>Edit category</h3>
                    </div>
                    <div class="card-body">
                         <form action="{{ route('update.category')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <input type="hidden" class="form-control" name="category_id" value="{{ $category_info->id }}">
                                <label for="" class="form-label">Category name</label>
                                <input type="text" class="form-control" name="category_name" value="{{ $category_info->category_name }}">
                                @error('category_name')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Category image</label>
                                <input type="file" class="form-control" name="category_img" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                                @error('category_img')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                                <div class="pt-5">
                                    <img width="100" id="blah" src="{{ asset('uploads/category')}}/{{ $category_info->category_img }}" alt="">
                                </div>
                            </div>
                            <div class="mb-3 pt-3">
                                <button class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" type="submit"><i class="ion-loop"></i>Update Category</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
