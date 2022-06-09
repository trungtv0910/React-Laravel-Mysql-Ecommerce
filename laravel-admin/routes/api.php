<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\RegisterController;
use App\Http\Controllers\Api\v1\LoginController;
use App\Http\Controllers\Api\v1\ProductController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//api register
Route::Post('register',[RegisterController::class,'register']);
// api login -create Token
Route::Post('login',[LoginController::class,'login']);
// Test danh sach sản phẩm dựa vào token -- > làm chưa xong thiếu middleware
Route::get('product',[ProductController::class,'index'])->middleware();
// refresh token
Route::Post('refresh-token',[LoginController::class,'refreshToken']);
// delete token
Route::delete('delete_token',[LoginController::class,'deleteToken']);
