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

Route::get('/', 'LoginController@index');
Route::post('/', 'LoginController@validateUser');
Route::get('/home', 'HomeController@index');
Route::post('/generate', 'GenerateController@index');
Route::get('/lists/{field?}/{dir?}/{listtotal?}', 'ListController@index');

Route::get('/listitem/{id}', 'ListController@openListItem');


Route::get('/filecheck/{filename}', 'GenerateController@check_for_files');
Route::get('/check_codes/{gid}/{bid}/{total}', 'GenerateController@check_code_size');

Route::post('managelist/{type}', 'ManageListController@manageLists');
Route::post('managepass', 'UpdatePassController@managePass');
Route::post('searchlist/{listtotal?}', 'ListController@search');

