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

Route::get('/', 'BaseController@getIndex');
Route::get('/catalog','ProductController@getCatalog');
Route::get('/catalog/{id}','ProductController@getCatalog');
Route::get('/catalog/{category_id}/{id}','ProductController@getProductPage');
Route::get('/search','ProductController@search');
Route::get('/ajax/{id}','AjaxController@getProduct');

Route::get('/chat/get','AjaxController@chatGet');
Route::post('/chat/send','AjaxController@chatSend');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/basket','BasketController@getIndex');
Route::post('basket/order','OrderController@postIndex');
Route::get('/basket/delete/{id}','BasketController@getDelete');
Route::get('{id}','BaseController@getStatic');
