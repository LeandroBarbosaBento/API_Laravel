<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

/**
 * Create all the routes for Category
 *
 * Run "php artisan route:list" to see all
 */
Route::apiResource('categories',  \App\Http\Controllers\Api\CategoryController::class);

/**
 * Create all the routes for Product
 *
 * Run "php artisan route:list" to see all
 */
Route::apiResource('products',  \App\Http\Controllers\Api\ProductController::class);

Route::post('products/get_juros/{product}', [\App\Http\Controllers\Api\ProductController::class, 'get_juros']);

