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
Route::group(['middleware'=>'web'],function(){

    Route::get('/','indexController@index')->name('home');
    Route::get('/home1','indexController@index1')->name('home1');
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
    Route::get('newreader','listController@NewReader');
    Route::get('show/{ID_L}','listController@EditBook');
    Route::delete('loanlist/{ID_E}','listController@destroy');
    Route::get('login','UserController@showLogin')->name('show_login');
    Route::get('register','UserController@showRegister')->name('show_register');
    Route::post('login','UserController@post_login')->name('post_login');
    Route::post('register','UserController@post_register')->name('post_register');
    Route::get('logout','UserController@logout')->name('logout');
});



