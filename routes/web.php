<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginRegisterController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CheckOutController;
use App\Http\Controllers\OrderController;




/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|l
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(LoginRegisterController::class)->group(function() {
    Route::get('/register', 'register')->name('register');
    Route::post('/store', 'store')->name('store');
    Route::get('/', 'login')->name('login');
    Route::post('/authenticate', 'authenticate')->name('authenticate');
    Route::get('/dashboard', 'dashboard')->name('dashboard');
    Route::post('/logout', 'logout')->name('logout');
});
Route::group(['middleware'=>"auth"],function(){

   


    // Products Routes
    Route::controller(ProductController::class)->group(function() {

    Route::get('/products', 'index')->name('products');
    Route::get('/cart', 'cart')->name('cart');
    Route::get('/add-to-cart/{product}', 'addToCart')->name('add-cart');
    Route::get('/remove/{id}', 'removeToCart')->name('remove');

    });

    Route::controller(CheckOutController::class)->group(function() {
        Route::get('/getData', 'index')->name('getData');
    
        Route::post('place-order', 'placeOrder')->name('placeOrder');


    });


    Route::controller(OrderController::class)->group(function() {
        Route::get('/order', 'index')->name('order');
    


    });

});






