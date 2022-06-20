<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\OrderController;
require __DIR__.'/auth.php';


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
Route::get('/home',[HomeController::class,'index'])->name('home');



Route::prefix('admin')->group(function () {

    Route::get('/', [DashboardController::class, 'index'])->middleware(['auth'])->name('dashboard');
    Route::prefix('categories')->group(function () {
        Route::get('/', [CategoryController::class, 'index'])->name('category.list')->middleware(['auth','can:list-category']);
        Route::get('/create', [CategoryController::class, 'create'])->name('category.add')->middleware(['auth','can:add-category']);
        Route::post('/store', [CategoryController::class, 'store'])->name('category.store');
        Route::get('/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit')->middleware(['auth','can:edit-category']);
        Route::get('/delete/{id}', [CategoryController::class, 'destroy'])->name('category.delete')->middleware(['auth','can:delete-category']);
        Route::post('/update/{id}', [CategoryController::class, 'update'])->name('category.update');
    });
    Route::prefix('products')->group(function () {
        Route::get('/', [ProductController::class, 'index'])->name('product.list')->middleware(['auth','can:list-product']);
        Route::get('/create', [ProductController::class, 'create'])->name('product.add')->middleware(['auth','can:add-product']);
        Route::post('/store', [ProductController::class, 'store'])->name('product.store');
        Route::get('/edit/{id}', [ProductController::class, 'edit'])->name('product.edit')->middleware(['auth','can:edit-product']);
        Route::get('/delete/{id}', [ProductController::class, 'destroy'])->name('product.delete')->middleware(['auth','can:delete-product']);
        Route::post('/update/{id}', [ProductController::class, 'update'])->name('product.update');
    });
    Route::prefix('user')->group(function () {
        Route::get('/', [UserController::class, 'index'])->name('user.list')->middleware(['auth','can:list-user']);
        Route::get('/create', [UserController::class, 'create'])->name('user.add')->middleware(['auth','can:list-user']);
        Route::post('/store', [UserController::class, 'store'])->name('user.store');
        Route::get('/edit/{id}', [UserController::class, 'edit'])->name('user.edit')->middleware(['auth','can:list-user']);
        Route::get('/delete/{id}', [UserController::class, 'destroy'])->name('user.delete')->middleware(['auth','can:list-user']);
        Route::post('/update/{id}', [UserController::class, 'update'])->name('user.update');
    });
    Route::prefix('role')->group(function () {
        Route::get('/', [RoleController::class, 'index'])->name('role.list')->middleware(['auth','can:list-role']);
        Route::get('/create', [RoleController::class, 'create'])->name('role.add')->middleware(['auth','can:add-role']);
        Route::post('/store', [RoleController::class, 'store'])->name('role.store');
        Route::get('/edit/{id}', [RoleController::class, 'edit'])->name('role.edit')->middleware(['auth','can:edit-role']);
        Route::get('/delete/{id}', [RoleController::class, 'destroy'])->name('role.delete')->middleware(['auth','can:delete-role']);
        Route::post('/update/{id}', [RoleController::class, 'update'])->name('role.update');
    });

    Route::prefix('order')->group(function () {
        Route::get('/', [OrderController::class, 'index'])->name('order.list')->middleware(['auth','can:list-order']);
        Route::get('/edit/{id}', [OrderController::class, 'detail'])->name('order.detail')->middleware(['auth','can:edit-order']);
        Route::get('/delete/{id}', [OrderController::class, 'destroy'])->name('order.delete')->middleware(['auth','can:delete-order']);
    });
    Route::prefix('test')->group(function () {
        Route::get('/', function (){
            return view('admin.test');
        });

    });
});




