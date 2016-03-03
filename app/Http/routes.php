<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


   Route::get('/', ['as' => 'home', 'uses' => 'PostController@index'] ); 
  
   Route::resource('post', 'PostController');
   Route::resource('comment', 'CommentController');

Route::group(['middleware' => 'sentry.member:Admins'], function () {
   Route::resource('admin', 'AdminController'); 
   Route::controller('datatables', 'AdminController', [
    'anyData'  => 'datatables.data',
    'Index' => 'datatables',
    ]);
});
 
