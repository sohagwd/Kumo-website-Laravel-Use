<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Coupon;
use App\Models\Inventory;
use App\Models\product;
use App\Models\Size;
use App\Models\thumbnail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use function GuzzleHttp\Promise\all;

class FrontendController extends Controller
{
     function index(){
        $categories = Category::all();
        $products = product::all();
        return view('frontend.index',[
            'categories'=>$categories,
            'products'=>$products,
        ]);
     }

     function details($slug){
        $product_info = product::where('slug', $slug)->get();
        $related_products = Product::where('category_id', $product_info->first()->category_id)->where('id', '!=',$product_info->first()->id)->get();
        $thumbails = thumbnail::where('product_id', $product_info->first()->id)->get();
        $available_color = Inventory::where('product_id', $product_info->first()->id)
        ->groupBy('color_id')
        ->selectRaw('count(*) as total, color_id')->get();
        $sizes = Size::all();
        return view('frontend.details',[
            'product_info'=>$product_info,
            'thumbails'=>$thumbails,
            'available_color'=>$available_color,
            'sizes'=>$sizes,
            'related_products'=>$related_products,
        ]);
     }

     function getSize(Request $request){
        $sizes = Inventory::where('product_id', $request->product_id)->where('color_id', $request->color_id)->get();
        $str = '';
        foreach($sizes as $size){
            $str .= '<div class="form-check size-option form-option form-check-inline mb-2">
                        <input class="form-check-input" '.($size->rel_to_size->id == 1?"checked":"").' type="radio" name="size_id" id="'.$size->rel_to_size->id.'" value="'.$size->rel_to_size->id.'">
                        <label class="form-option-label" for="'.$size->rel_to_size->id.'">'.$size->rel_to_size->size_name.'</label>
                    </div>';
        }

        echo $str;
     }


    function customer_register_login(){
        return view('frontend.customer_reg_log');
    }
    function cart(Request $request){
        $coupon = $request->coupon;
        $message = null;
        $type = null;

        if($coupon == ''){
            $discount = 0;
        }
        else{
            if(Coupon::where('coupon_name', $coupon)->exists()){
               if(Carbon::now()->format('Y-m-d') > Coupon::where('coupon_name', $coupon)->first()->expire){
                $discount = 0;
                $message = 'Coupon Code Expired';
               }
                else{
                    $discount = Coupon::where('coupon_name', $coupon)->first()->discount;
                    $type = Coupon::where('coupon_name', $coupon)->first()->type;
                }
            }
            else{
                $message = 'Invalid Coupon Code';
                $discount = 0;
            }
        }

        $carts = Cart::where('customer_id', Auth::guard('customerlogin')->id())->get();
        return view('frontend.cart', [
            'carts'=>$carts,
            'discount'=>$discount,
            'message'=>$message,
            'type'=>$type,
        ]);
    }
}
