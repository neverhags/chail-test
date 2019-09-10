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

Route::get('/home', function () { return redirect('admin'); });
Route::get('/catalog', 'Catalog\\CatalogController@home');
Route::get('/search', 'Catalog\\CatalogController@search');
Route::get('/admin', 'Catalog\\CatalogController@index')->middleware('auth');
Route::get('/admin/create', 'Catalog\\CatalogController@create')->middleware('auth');
Route::post('/admin/create', 'Catalog\\CatalogController@store')->middleware('auth');
Route::get('/admin/edit/{id}', 'Catalog\\CatalogController@edit')->middleware('auth');
Route::put('/admin/update/{id}', 'Catalog\\CatalogController@update')->middleware('auth');
Route::delete('/admin/delete/{id}', 'Catalog\\CatalogController@destroy')->middleware('auth');
