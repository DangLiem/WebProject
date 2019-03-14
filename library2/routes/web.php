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
Route::get('/qb/get', function(){
	$data=DB::table('users')->get();
	foreach($data as $row)
	{
		foreach ($row as $key => $value) {
			# code...
			echo $key. ":" . $value;
			echo "<hr>";
		}
		echo "<hr>";
		
	}
});

Route::get('/','homeController@getHome');

Route::get('/dashboard', function(){
	return view('admin.dashBoard');
});

Route::get('/product-type/{type}',['as'=>'producttype', 'uses'=>'homeController@getProductType']);

Route::get('/signin', function(){
	return view('admin.signin');
});

Route::get('/login', function(){
	return view('admin.login');
});
