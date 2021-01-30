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

Route::get('/','indexController@index');
Route::post('/','indexController@SaveLoan');
Route::post('release','listController@SaveRelease');
Route::post('newbook','listController@SaveBook');
Route::get('icon','indexController@getIcon')->name('icon_get');
Route::get('loan','indexController@getLoan');
Route::get('book','indexController@getBook');
Route::get('reader','indexController@getReader');
Route::get('loanlist','listController@loanList');
Route::get('release','listController@release');
Route::get('newbook','listController@NewBook');
Route::get('show/{ID_L}','listController@EditBook');
Route::delete('loanlist/{ID_E}','listController@destroy');




