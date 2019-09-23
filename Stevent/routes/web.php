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
Route::get('/event/{id_event}', 'HomeController@event')->name('event');
Route::prefix('organizers')->group(function(){
    Route::get('/home', 'OrganizersController@index')->name('organizers.home');
});
