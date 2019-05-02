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

Route::get('/', [
    'as'=>'index',
    'uses'=>'MyController@getIndex'
]);

Route::match(['get', 'post'], '/admin', 'AdminController@login');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth']], function ()
{
    Route::get('/admin/dashboard', 'AdminController@dashboard');
    Route::get('/admin/settings', 'AdminController@settings');
    Route::get('/admin/check-pwd', 'AdminController@checkPassword');
    Route::match(['get', 'post'], '/admin/update-pwd', 'AdminController@updatePassword');
    Route::get('/admin/upload', 'AdminController@upload');
    Route::post('/admin/uploadProduct', 'AdminController@uploadProduct');
    Route::get('/admin/list', 'AdminController@list');
    Route::post('/admin/listProducts', 'AdminController@listProducts');
});

Route::get('/logout', 'AdminController@logout');

