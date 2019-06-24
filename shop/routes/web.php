<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('profile', function(){
    return view('profile');
});

// Customer_list
Route::get('customer_list', 'CustomerController@index')->middleware('auth');
Route::get('customers-list', 'CustomerController@userList')->middleware('auth');
Route::get('addnewrole', 'HomeController@addnewrole')->middleware('auth');

// Product_list
Route::get('product_list', 'ProductController@index')->middleware('auth');
Route::get('users-list', 'ProductController@usersList')->middleware('auth');

// Order_list
Route::get('order_list', 'OrderController@index')->middleware('auth');;
Route::get('orders-list', 'OrderController@usersList')->middleware('auth');

/* View Composer*/
View::composer(['*'], function($view){

    $user = Auth::user();
    $view->with('user',$user);

});