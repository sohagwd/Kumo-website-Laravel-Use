@extends('layouts.dashboard')

@section('content')
<div class="row py-1">
    <div class="col-lg-2">
        <div class="page-header-title">
            <h4>Users</h4>
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
                <li class="breadcrumb-item"><a href="{{route('user')}}">Users</a>
                </li>
            </ul>
        </div>
    </div>
</div>
    <div class="">
        <div class="row">
            <div class="col-lg-12 m-auto">
                @if (session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif
                <div class="card">
                    <div class="card-header">
                        <h1>User List <span style="float: right">Total User:{{ $total_user }}</span></h1>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <tr>
                                <th class="text-center">SL</th>
                                <th class="text-center">Photo</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Created at</th>
                                <th class="text-center">Action</th>
                            </tr>
                            @foreach ($users as $key=>$user )

                            <tr>
                                <td class="text-center">{{ $key+1 }}</td>
                                <td class="text-center">
                                    @if ($user->photo == null)
                                    <img width="50" src="{{ Avatar::create($user->name)->toBase64() }}" />
                                    @else
                                    <img width="50" src="{{asset('uploads/user')}}/{{ $user->photo }}" />
                                    @endif
                                </td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->created_at->diffForHumans() }}</td>
                                <td class="text-center">
                                    <a href="{{ route('profile',$user->id )}}"  class="tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;"><i class="icofont icofont-ui-edit"></i>Edit</a>
                                    <a href="{{route('user.delete', $user->id)}}" class="tabledit-delete-button btn btn-danger waves-effect waves-light active" style="float: none;margin: 5px;"><i class="icofont icofont-ui-delete"></i>Delete</a></td>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
