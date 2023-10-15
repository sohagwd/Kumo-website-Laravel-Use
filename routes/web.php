<?php

use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\CustomerLoginController;
use App\Http\Controllers\CustomerRegisterController;
use App\Http\Controllers\FrontendController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\productcontroller;
use App\Http\Controllers\subcategorycontroller;
use Illuminate\Support\Facades\Auth;

//Frontent

Route::get('/', [FrontendController::class, 'index'])->name('index');
Route::get('/product/details/{slug}', [FrontendController::class, 'details'])->name('details');
Route::post('/getSize', [FrontendController::class, 'getSize']);

Route::get('/customer/register/login', [FrontendController::class, 'customer_register_login'])->name('customer.register.login');
Route::get('/cart', [FrontendController::class, 'cart'])->name('cart');


Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
//users
route::get('/Users', [HomeController::class, 'users'])->name('user');
route::get('/User/delete/{user_id}', [HomeController::class, 'user_delete'])->name('user.delete');
route::get('/profile', [HomeController::class, 'profile'])->name('profile');
route::post('/profile/update', [HomeController::class, 'profile_update'])->name('profile.update');
route::post('/password/update', [HomeController::class, 'password_update'])->name('password.update');
route::post('/photo/update', [HomeController::class, 'photo_update'])->name('photo.update');

//category
Route::get('/category', [CategoryController::class, 'category'])->name('category');
Route::post('/category/store', [CategoryController::class, 'category_store'])->name('category.store');
Route::get('/category/delete/{category_id}', [CategoryController::class, 'delete_category'])->name('delete.category');
Route::get('/delete/hard/category/{category_id}', [CategoryController::class, 'delete_hard_category'])->name('delete.hard.category');
Route::get('/category/edit/{category_id}', [CategoryController::class, 'category_edit'])->name('edit.category');
Route::post('/category/update', [CategoryController::class, 'category_update'])->name('update.category');
Route::get('/category/restore/{category_id}', [CategoryController::class, 'category_restore'])->name('restore.category');


//subcategory

Route::get('/subcategory', [subcategorycontroller::class, 'subcategory'])->name('subcategory');
Route::post('/subcategory/store', [subcategorycontroller::class, 'subcategory_store'])->name('subcategory.store');
Route::get('/subcategory/edit/{subcategory_id}', [subcategorycontroller::class, 'edit_subcategory'])->name('edit.subcategory');
Route::post('/subcategory/update', [subcategorycontroller::class, 'update_subcategory'])->name('subcategory.update');

//Product
Route::get('/add/product', [productcontroller::class, 'add_product'])->name('add.product');
Route::post('/getsubcategory', [productcontroller::class, 'getsubcategory']);
Route::post('/product/store', [productcontroller::class, 'product_store'])->name('product.store');
Route::get('/product/list', [productcontroller::class, 'product_list'])->name('product.list');
Route::get('/product/inventory/{product_id}', [productcontroller::class, 'inventory'])->name('inventory');
Route::post('/product/inventory/store', [productcontroller::class, 'inventory_store'])->name('inventory.store');
Route::get('/product/variation', [productcontroller::class, 'variation'])->name('variation');
Route::post('/product/variation/store', [productcontroller::class, 'variation_store'])->name('variation.store');
Route::get('/product/delete/{product_id}', [productcontroller::class, 'product_delete'])->name('product.delete');

//Cart
Route::post('/add/cart', [CartController::class, 'add_cart'])->name('add.cart');
Route::get('/add/remove/{cart_id}', [CartController::class, 'cart_remove'])->name('cart.remove');
Route::post('/cart/update', [CartController::class, 'cart_update'])->name('cart.update');

//Customer Register
Route::post('/customer/store', [CustomerRegisterController::class, 'customer_store'])->name('customer.store');
Route::post('/customer/login', [CustomerLoginController::class, 'customer_login'])->name('customer.login');
Route::get('/customer/logout', [CustomerLoginController::class, 'customer_logout'])->name('customer.logout');

//coupon
Route::get('/coupon', [CouponController::class, 'coupon'])->name('coupon');
Route::post('/coupon/add', [CouponController::class, 'add_coupon'])->name('add.coupon');

//checkout
route::get('/checkout',[CheckoutController::class, 'checkout'])->name('checkout');
route::post('/getcity',[CheckoutController::class, 'getcity']);
route::post('/checkout/store',[CheckoutController::class, 'checkout_store'])->name('checkout.store');
