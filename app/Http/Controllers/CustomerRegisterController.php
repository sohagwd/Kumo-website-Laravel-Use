<?php

namespace App\Http\Controllers;

use App\Models\customerlogin;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CustomerRegisterController extends Controller
{
    function customer_store(Request $request){
        customerlogin::insert([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
            'created_at'=>Carbon::now(),
        ]);

        if(Auth::guard('customerlogin')->attempt(['email'=>$request->email, 'password'=>$request->password])){
            return redirect('/');
        }
    }
}
