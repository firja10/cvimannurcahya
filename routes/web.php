<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;


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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return view('dashboard');
});


Route::resource('/komponen_turbin',App\Http\Controllers\KomponenTurbinController::class);



// CAST STEEL

Route::get('/data_material/cast_steel', [\App\Http\Controllers\LandingController::class, 'CastSteel'])->name('CastSteel');

Route::delete('/data_material/cast_steel/{id}', [\App\Http\Controllers\LandingController::class, 'CastSteelDelete'])->name('CastSteelDelete');

Route::post('/data_material/cast_steel', [\App\Http\Controllers\LandingController::class, 'CastSteelStore'])->name('CastSteelStore');


// CARBON STEEL


Route::get('/data_material/carbon_steel', [\App\Http\Controllers\LandingController::class, 'CarbonSteel'])->name('CarbonSteel');

Route::delete('/data_material/carbon_steel/{id}', [\App\Http\Controllers\LandingController::class, 'CarbonSteelDelete'])->name('CarbonSteelDelete');
Route::post('/data_material/carbon_steel', [\App\Http\Controllers\LandingController::class, 'CarbonSteelStore'])->name('CarbonSteelStore');





// STAINLESS STEEL

Route::get('/data_material/stainless_steel', [\App\Http\Controllers\LandingController::class, 'StainlessSteel'])->name('StainlessSteel');

Route::delete('/data_material/stainless_steel/{id}', [\App\Http\Controllers\LandingController::class, 'StainlessSteelDelete'])->name('StainlessSteelDelete');
Route::post('/data_material/stainless_steel', [\App\Http\Controllers\LandingController::class, 'StainlessSteelStore'])->name('StainlessSteelStore');




//KEBUTUHAN MATERIAL

Route::resource('/kebutuhan_material',\App\Http\Controllers\KebutuhanMaterialController::class);









Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


