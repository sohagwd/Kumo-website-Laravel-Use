<?php

namespace App\Http\Controllers;

use App\Models\category;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Str;
use Image;

class CategoryController extends Controller
{

        public function __construct()
    {
        $this->middleware('auth');
    }


    function category(){
        $categories = category::all();
        $trash_categories = category::onlyTrashed()->get();
        return view('admin.category.category', [
        'categories'=> $categories,
        'trash_categories'=> $trash_categories,
        ]);
    }
    function category_store(Request $request){
        $request->validate([
        'category_name'=> 'required',
        'category_img'=> 'required|file|max:512|mimes:bmp,png,gif,jpg',
        ],[
            'category_name.required'=>'category name plz!',
            'category_img.required'=>'category img plz!',
        ]);

        $id = category::insertGetId([
            'category_name'=> $request->category_name,
            'icon'=> $request->icon,
            'added_by'=> Auth::id(),
            'created_at'=> Carbon::now(),
        ]);

        $category_image = $request->category_img;
        $extension = $category_image->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($category_image)->resize(300,250)->save(public_path('uploads/category/'.$file_name));

        category::find($id)->update([
            'category_img'=>$file_name,
        ]);
        return back()->with('success', 'category Added Succfully!');

    }
    function delete_category( $category_id ){
        category::find($category_id)->delete();
        return back();
    }

    function delete_hard_category( $category_id ){
        $image = category::onlyTrashed()->where('id', $category_id)->first()->category_img;
        $delete_from = public_path('uploads/category/'.$image);
        unlink($delete_from);

        category::onlyTrashed()->find($category_id)->forceDelete();
        return back();
    }

    function category_edit($category_id){
        $category_info = category::find($category_id);
        return view('admin.category.edit',[
            'category_info'=>$category_info,
        ]);
    }
    function category_update(request $request){
       if($request->category_img == ''){
        category::find($request->category_id)->update([
           'category_name'=>$request->category_name,
        ]);
        return back();
       }
       else{

        $image = category::where('id', $request->category_id)->first()->category_img;
        $delete_from = public_path('uploads/category/'.$image);
        unlink($delete_from);

        $category_image = $request->category_img;
        $extension = $category_image->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($category_image)->resize(300,250)->save(public_path('uploads/category/'.$file_name));

        category::find($request->category_id)->update([
           'category_name'=>$request->category_name,
           'category_img'=>$file_name,
        ]);
        return back();
       }
    }

    function category_restore($category_id){
        category::onlyTrashed()->find($category_id)->restore();
        return back();
    }
}

