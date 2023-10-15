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
                <li class="breadcrumb-item"><a href="{{route('add.product')}}">Add Product</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h3>Add Product</h3>
        </div>
        <div class="card-body">
            <form action="{{route('product.store')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <select name="category_id" id="category_id" class="form-control">
                                    <option value="">-- Select Category --</option>
                                @foreach ($categories as $category)
                                    <option value="{{$category->id}}">{{$category->category_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <select name="subcategory_id" id="subcategory" class="form-control">
                                    <option value="">-- Select SubCategory --</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input type="text" name="product_name" class="form-control" placeholder="Product Name">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input type="number" name="price" class="form-control" placeholder="Product Price">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <input type="number" name="discount" class="form-control" placeholder="Discount %">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <input type="text" name="brand" class="form-control" placeholder="Product Brand">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <input type="text" name="short_desp" class="form-control" placeholder="Short Description">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="form-label">Long Description</label>
                            <textarea id="summernote" name="long_desp" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="form-label">Product Preview</label>
                            <input type="file" name="preview" class="form-control" >
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="form-label">Product Thumbnails</label>
                            <input type="file" name="thumbnail[]" multiple class="form-control" >
                        </div>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <div class="form-group text-right">
                            <button type="submit" class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="ion-plus"></i>Add Product</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('footer_script')
    <script>
        $('#category_id').change(function(){
            var category_id = $(this).val();


            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url:'/getsubcategory',
                type:'POST',
                data:{'category_id': category_id},
                success:function(data){
                   $('#subcategory').html(data);
                }
            });

        });
    </script>

    <script>
        $('#summernote').summernote();
    </script>
@endsection
