<?php

namespace App\Http\Controllers;

use App\Mail\InvoiceMail;
use App\Models\BillingDetails;
use App\Models\Cart;
use App\Models\city;
use App\Models\country;
use App\Models\Inventory;
use App\Models\Order;
use App\Models\OrderProduct;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;

class CheckoutController extends Controller
{
    function checkout(){
        $total_item = Cart::where('customer_id', Auth::guard('customerlogin')->id())->count();
        $carts = Cart::where('customer_id', Auth::guard('customerlogin')->id())->get();
        $countries = country::all();
        return view('frontend.checkout', [
            'total_item'=>$total_item,
            'carts'=>$carts,
            'countries'=>$countries,
        ]);
    }

    function getcity(Request $request){
       $cities = city::where('country_id', $request->country_id)->get();
        $str = '<option value="">-- Select City --</option>';
       foreach($cities as $city){
        $str .= '<option value="'.$city->id.'">'.$city->name.'</option>';
       }
       echo $str;
    }

    function checkout_store(Request $request){
        //Order
        $order_id = '#'.Str::upper(Str::random(3)).'-'.rand(999999999, 100000000);
        Order::insert([
            'order_id'=>$order_id,
            'customer_id'=>Auth::guard('customerlogin')->id(),
            'sub_total'=>$request->sub_total,
            'total'=>$request->sub_total + $request->charge,
            'discount'=>$request->discount,
            'charge'=>$request->charge,
            'payment_method'=>$request->payment_method,
            'created_at'=>Carbon::now(),
        ]);

        //Billing
        BillingDetails::insert([
            'order_id'=>$order_id,
            'customer_id'=>Auth::guard('customerlogin')->id(),
            'name'=>$request->name,
            'email'=>$request->email,
            'company'=>$request->company,
            'mobile'=>$request->mobile,
            'address'=>$request->address,
            'country_id'=>$request->country_id,
            'city_id'=>$request->city_id,
            'zip'=>$request->zip,
            'notes'=>$request->notes,
            'created_at'=>Carbon::now(),
        ]);
        //Order Product
        $carts = Cart::where('customer_id', Auth::guard('customerlogin')->id())->get();
        foreach($carts as $cart){
            OrderProduct::insert([
                'order_id'=>$order_id,
                'customer_id'=>Auth::guard('customerlogin')->id(),
                'product_id'=>$cart->product_id,
                'price'=>$cart->rel_to_product->after_discount,
                'color_id'=>$cart->color_id,
                'size_id'=>$cart->size_id,
                'quantity'=>$cart->quantity,
                'created_at'=>Carbon::now(),
            ]);

            Inventory::where('product_id', $cart->product_id)->where('color_id', $cart->color_id)->where('size_id', $cart->size_id)->decrement('quantity', $cart->quantity);
        }
        //Invoice Send to mail
        Mail::to($request->email)->send(new InvoiceMail());
        
        //Clear Cart After order
        Cart::where('customer_id', Auth::guard('customerlogin')->id())->delete();


        return back();
    }
}
