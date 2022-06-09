<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\RegisterController;
use App\Http\Controllers\Api\v1\LoginController;
use App\Http\Controllers\Api\v1\ProductController;
use App\Http\Controllers\Api\v1\AuthController;
use App\Http\Controllers\Api\v1\TodoController;
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
//
//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    return $request->user();
//});
////api register
//Route::Post('register',[RegisterController::class,'register']);
//// api login -create Token
//Route::Post('login',[LoginController::class,'login']);
//// Test danh sach sản phẩm dựa vào token -- > làm chưa xong thiếu middleware
//Route::get('product',[ProductController::class,'index'])->middleware();
//// refresh token
//Route::Post('refresh-token',[LoginController::class,'refreshToken']);
//// delete token
//Route::delete('delete_token',[LoginController::class,'deleteToken']);
////-------------------------------------------------------------------------

//Route::group([
//    'middleware' => 'api',
//    'prefix' => 'auth'
//], function ($router) {
//
//    Route::post('login', [AuthController::class,'login']);
//    Route::post('register', [AuthController::class,'register']);
//    Route::post('logout', [AuthController::class,'logout']);
//    Route::post('refresh', [AuthController::class,'refresh']);
//    Route::get('profile', [AuthController::class,'profile']);
//    Route::post('me', [AuthController::class,'me']);
//
//});
//Route::group([
//    'middleware' => 'api',
//    'namespace' => 'App\Http\Controllers\Api\v1'
//], function ($router) {
//    Route::resource('todos', 'TodoController');
//});
//--------------------------------------------------------------------------------------

Route::post('register', [\App\Http\Controllers\Api\v2\AuthController::class, 'register']);
Route::post('login', [\App\Http\Controllers\Api\v2\AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('user', [\App\Http\Controllers\Api\v2\AuthController::class, 'user']);
    Route::post('logout', [\App\Http\Controllers\Api\v2\AuthController::class, 'logout']);
});
