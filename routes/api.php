<?php

use Illuminate\Http\Request;
Use App\Post;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/





Route::group(['prefix'=>'v2'], function () {
    Route::get('/home_portfolio','Api\HomeController@homePortfolio')->name('api.home.portfolio');
    Route::get('/blogpost','Api\BlogController@index')->name('api.home.blogpost');
    Route::get('/user/{uid}/','Api\UserController@index')->name('api.userapi');
    Route::get('/blog/cat/list','Api\CategoryController@catList')->name('api.blog.catlist');
    Route::get('/blog/tag/list','Api\TagController@tagList')->name('api.blog.taglist');
    Route::get('/blog/{id}/{slug?}','Api\BlogController@show')->name('api.blog.singel.post');
    Route::get('/page/{id}/{slug?}','Api\PageController@show')->name('api.page.singel.page');
});
