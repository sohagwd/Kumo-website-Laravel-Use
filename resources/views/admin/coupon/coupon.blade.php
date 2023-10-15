@extends('layouts.dashboard')

@section('content')
<div class="row py-1">
    <div class="col-lg-2">
        <div class="page-header-title">
            <h4>Coupon</h4>
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
                <li class="breadcrumb-item"><a href="{{route('coupon')}}">Coupon</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-header">
                <h3>Coupon List</h3>
            </div>
            <div class="card-body">
                <table class="table tabel-striped">
                    <tr>
                        <th>SL</th>
                        <th>Coupon</th>
                        <th>Discount</th>
                        <th>Expire Date</th>
                        <th class="text-center">Action</th>
                    </tr>
                    @foreach ($coupons as  $key=>$coupon)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$coupon->coupon_name}}</td>
                        <td>{{($coupon->type == 1)?'':'Tk: '}}{{number_format($coupon->discount)}}{{($coupon->type == 1)?'%':''}}</td>
                        <td>{{$coupon->expire}}</td>
                        <td class="text-center">
                            <div class="card-block post-timelines">
                                <i class="icon-options tabledit-edit-button btn btn-primary waves-effect waves-light" style="float: none;margin: 5px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="tooltip">
                                </i>
                                <div class="dropdown-menu dropdown-menu-right b-none services-list" x-placement="bottom-end" style="position: absolute; transform: translate3d(349px, 24px, 0px); top: 0px; left: 0px; will-change: transform;">
                                    <a href="#" class="tabledit-delete-button btn btn-danger waves-effect waves-light active" style="float: none;margin: 5px;"><i class="icofont icofont-ui-delete"></i>Delete</a>
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
            <div class="card-header">
                <h3>Add Coupon</h3>
            </div>
            <div class="card-body">
                <form action="{{route('add.coupon')}}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="" class="form-label">Coupon Name</label>
                        <input type="text" name="coupon_name" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Discount %</label>
                        <input type="number" name="discount" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Expire Date</label>
                        <input type="date" name="expire" class="form-control">
                    </div>
                    <div class="mb-3">
                      <select name="type" id="" class="form-control">
                        <option value="">--Select Type--</option>
                        <option value="1">Percentage</option>
                        <option value="2">Solid Amount</option>
                      </select>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Add Coupon</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
