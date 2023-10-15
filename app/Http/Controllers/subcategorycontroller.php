<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\subcategory;
use Illuminate\Http\Request;
use Image;
use Str;

class subcategorycontroller extends Controller
{
    function subcategory(){
        $categories = Category::all();
        $subcategories = subcategory::all();
        return view('admin.subcategory.subcategory', [
            'categories'=>$categories,
            'subcategories'=>$subcategories,
        ]);
    }
    function subcategory_store(Request $request){
        $id = subcategory::insertGetId([
            'category_id'=>$request->category_id,
            'subcategory_name'=>$request->subcategory_name,
        ]);

        $subcategory_image = $request->subcategory_img;
        $extension = $subcategory_image->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($subcategory_image)->resize(300,250)->save(public_path('uploads/subcategory/'.$file_name));

        subcategory::find($id)->update([
            'subcategory_img'=>$file_name,
        ]);
        return back()->with('success', 'subcategory Added Succfully!');
    }
    function edit_subcategory($subcategory_id){
        $categories = Category::all();
        $subcategory_info = subcategory::find($subcategory_id);
        return view('admin.subcategory.edit',[
            'subcategory_info'=>$subcategory_info,
            'categories'=>$categories,
        ]);

    }
    function update_subcategory(Request $request){
       if($request->subcategory_img == ''){
        subcategory::find($request->id)->update([
            'category_id'=>$request->category_id,
            'subcategory_name'=>$request->subcategory_name,
        ]);
        return back()->with('success', 'subcategory Update Succfully!');
       }
       else{
        $img = subcategory::where('id', $request->id)->first()->subcategory_img;
        $delete_from = public_path('uploads/subcategory/'.$img);
        unlink($delete_from);

        $uploaded_file = $request->subcategory_img;
        $extension = $uploaded_file->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($uploaded_file)->resize(300,250)->save(public_path('uploads/subcategory/'.$file_name));

        subcategory::find($request->id)->update([
            'category_id'=>$request->category_id,
            'subcategory_name'=>$request->subcategory_name,
            'subcategory_img'=>$file_name,
        ]);
        return back()->with('success', 'subcategory Update Succfully!');
       }
    }
}
