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
//     return view('welcome')->middleware('auth');
// });








Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('auth');









Route::get('/', function () {
    return view('dashboard');
})->middleware('auth');


Route::resource('/komponen_turbin',App\Http\Controllers\KomponenTurbinController::class)->middleware('auth');



// CAST STEEL

Route::get('/data_material/CS', [\App\Http\Controllers\LandingController::class, 'CastSteel'])->name('CastSteel')->middleware('auth');

Route::delete('/data_material/CS/{id}', [\App\Http\Controllers\LandingController::class, 'CastSteelDelete'])->name('CastSteelDelete')->middleware('auth');

Route::post('/data_material/CS', [\App\Http\Controllers\LandingController::class, 'CastSteelStore'])->name('CastSteelStore')->middleware('auth');


// CARBON STEEL


Route::get('/data_material/CBS', [\App\Http\Controllers\LandingController::class, 'CarbonSteel'])->name('CarbonSteel')->middleware('auth');

Route::delete('/data_material/CBS/{id}', [\App\Http\Controllers\LandingController::class, 'CarbonSteelDelete'])->name('CarbonSteelDelete')->middleware('auth');
Route::post('/data_material/CBS', [\App\Http\Controllers\LandingController::class, 'CarbonSteelStore'])->name('CarbonSteelStore')->middleware('auth');





// STAINLESS STEEL

Route::get('/data_material/SS', [\App\Http\Controllers\LandingController::class, 'StainlessSteel'])->name('StainlessSteel')->middleware('auth');

Route::delete('/data_material/SS/{id}', [\App\Http\Controllers\LandingController::class, 'StainlessSteelDelete'])->name('StainlessSteelDelete')->middleware('auth');
Route::post('/data_material/SS', [\App\Http\Controllers\LandingController::class, 'StainlessSteelStore'])->name('StainlessSteelStore')->middleware('auth');











//KEBUTUHAN MATERIAL

Route::resource('/kebutuhan_material',\App\Http\Controllers\KebutuhanMaterialController::class)->middleware('auth');


//PEMBELIAN MATERIAL

Route::resource('/pembelian_material',\App\Http\Controllers\PembelianMaterialController::class)->middleware('auth');



// DATA REPAIRING

Route::resource('/data_repairing',\App\Http\Controllers\RepairingController::class)->middleware('auth');




//MANAGER SIDE

Route::get('/persetujuan/kebutuhan_material',[\App\Http\Controllers\LandingController::class,'SetujuKebutuhanMaterial'])->name('SetujuKebutuhanMaterial')->middleware('auth');

Route::patch('/persetujuan/kebutuhan_material/{id}',[\App\Http\Controllers\LandingController::class,'UpdateSetujuKebutuhanMaterial'])->name('UpdateSetujuKebutuhanMaterial')->middleware('auth');


Route::get('/persetujuan/pembelian_material',[\App\Http\Controllers\LandingController::class,'SetujuPembelianMaterial'])->name('SetujuPembelianMaterial')->middleware('auth');

Route::patch('/persetujuan/pembelian_material/{id}',[\App\Http\Controllers\LandingController::class,'UpdateSetujuPembelianMaterial'])->name('UpdateSetujuPembelianMaterial')->middleware('auth');


Route::get('/persetujuan/repairing',[\App\Http\Controllers\LandingController::class,'SetujuRepairing'])->name('SetujuRepairing')->middleware('auth');

Route::patch('/persetujuan/repairing/{id}',[\App\Http\Controllers\LandingController::class,'UpdateSetujuRepairing'])->name('UpdateSetujuRepairing')->middleware('auth');



// DATA BAGIAN GUDANG 

Route::get('/data_material',[\App\Http\Controllers\LandingController::class,'data_material'])->name('data_material')->middleware('auth');



Route::post('/data_material',[\App\Http\Controllers\LandingController::class,'data_material_store'])->name('data_material_store')->middleware('auth');


Route::get('/data_material_seluruh',[\App\Http\Controllers\LandingController::class,'data_material_all'])->name('data_material_all')->middleware('auth');


Route::patch('/data_material_seluruh/{id}',[\App\Http\Controllers\LandingController::class,'updateDataMaterials'])->name('updateDataMaterials')->middleware('auth');



// Update SS ROP 

Route::patch('/data_material_seluruh/ss_rop/{id}',[\App\Http\Controllers\LandingController::class,'updateSS_ROP'])->name('updateSS_ROP')->middleware('auth');


Route::get('/data_material_seluruh/ss_rop/{id}',[\App\Http\Controllers\LandingController::class,'SS_ROP_edit'])->name('SS_ROP_edit')->middleware('auth');
