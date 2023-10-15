@extends('layouts.dashboard')

@section('content')
<div class="row py-1">
    <div class="col-lg-2">
        <div class="page-header-title">
            <h4>Profile</h4>
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
                <li class="breadcrumb-item"><a href="{{route('profile')}}">Profile</a>
                </li>
            </ul>
        </div>
    </div>
</div>
    <div class="">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h3>User Profile Information</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{route('profile.update')}}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Name</label>
                                <input type="text" name="name" value="{{ Auth::user()->name}}" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Email</label>
                                <input type="email" name="email" value="{{ Auth::user()->email}}" class="form-control">
                            </div>
                            <div class="mb-3">
                                <button class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" type="submit"><i class="ion-loop"></i>Update Info</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h3>Edit Password</h3>
                    </div>
                    @if(session('success'))
                        <div class="alert alert-success mx-3 mt-3">{{ session('success') }}</div>
                    @endif
                    <div class="card-body">
                        <form action="{{route('password.update')}}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Old Password</label>
                                <input type="password" name="old_password" class="form-control">
                                @if(session('faild'))
                                    <strong class="text-danger">{{ session('faild') }}</strong>
                                @endif
                                @error('old_password')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">New Password</label>
                                <input type="password" name="password" class="form-control">
                                @error('password')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Confirm Password</label>
                                <input type="password" name="password_confirmation" class="form-control">
                                @error('password_confirmation')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <button class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" type="submit"><i class="ion-loop"></i>Update Password</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h3>User Profile Image</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{route('photo.update')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Photo</label>
                                <input type="file" name="photo" class="form-control">
                            </div>
                            <div class="mb-3">
                                <button class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" type="submit"><i class="ion-loop"></i>Update Photo</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
