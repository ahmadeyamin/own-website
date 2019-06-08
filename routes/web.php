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

Route::get('/', 'HomeController@index')->name('homeurl');

Route::get('/blog','BlogController@index')->name('website.blog');

Route::get('/blog/{id}/{slug?}', 'BlogController@show');


Route::get('web/menuhtml/1', function(){
     return TCG\Voyager\Models\Menu::display('main','mani_menu');
});



Route::get('currentOnlineUserCount','Api\HomeController@currentOnlineUserCount');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
