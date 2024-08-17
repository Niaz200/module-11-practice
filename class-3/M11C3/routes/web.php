<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Backend\AlbumController;
use App\Http\Controllers\Backend\PhotoController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group( ['prefix' => 'admin', 'as' => 'admin.'],function (){
    Route::get('/dashboard', [DashboardController::class,'dashboard'])->name('dashboard');
    
    Route::resource('/tasks', TaskController::class);


    //single Image upload route

    Route::get('/pub-single', [ImageController::class,'pubSingle'])->name('pub-single');
    Route::post('/pub-single-upload', [ImageController::class,'pubSingleUpload'])->name('pub-single-upload');

    //multiple Image upload in public route

    Route::get('/pub-multiple', [ImageController::class,'pubMultiple'])->name('pub-multiple');
    Route::post('/pub-multiple-upload', [ImageController::class,'pubMultipleUpload'])->name('pub-multiple-upload');

    //Single Image upload in Storage Folder route

    Route::get('/store-single', [ImageController::class,'storeSingle'])->name('store-single');
    Route::post('/store-single-upload', [ImageController::class,'storeSingleUpload'])->name('store-single-upload');

    //Multiple Image upload in Storage Folder route

    Route::get('/store-multiple', [ImageController::class,'storeMultiple'])->name('store-multiple');
    Route::post('/store-multiple-upload', [ImageController::class,'storeMultipleUpload'])->name('store-multiple-upload');


    // Album Routes

    Route::get('/albums', [AlbumController::class,'index'])->name('album.index');
    Route::get('/albums/create', [AlbumController::class,'create'])->name('album.create');
    Route::post('/albums', [AlbumController::class,'store'])->name('album.store');
    Route::get('/albums/{id}', [AlbumController::class,'show'])->name('album.show');
    Route::delete('/albums/{id}', [AlbumController::class,'destroy'])->name('album.destroy');


    // Photo Routes

    Route::get('/photos/create', [PhotoController::class,'create'])->name('photo.create');
    Route::post('/photos', [PhotoController::class,'store'])->name('photo.store');
    Route::delete('/photos/{id}', [PhotoController::class,'destroy'])->name('photo.destroy');


});