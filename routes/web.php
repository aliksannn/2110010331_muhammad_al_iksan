<?php

use App\Http\Controllers\pendudukController;
use App\Http\Controllers\sembakoController;
use App\Http\Controllers\TunaiController;
use App\Http\Controllers\RumahController;
use App\Http\Controllers\PDFController;
use Illuminate\Support\Facades\Route;


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
    return view('template.master');
   
});

Route::get('/', function(){
    return view('home');
});
// Route::get('/penduduk', function () {
//     return view('penduduk.penduduk');  
// })->name('datapenduduk');
Route::resource('penduduk',PendudukController::class);


Route::resource('sembako', sembakoController::class );

Route::resource('tunai', TunaiController::class);

Route::resource('rumah', RumahController::class); 

Route::get('rumah.laporan', [PDFController::class, 'cetakPDF'])->name('cetak');

Route::get('sembako.laporan', [PDFController::class, 'cetakSembako'])->name('cetakSembako');

Route::get('tunai.laporan', [PDFController::class, 'cetakTunai'])->name('cetakTunai');

Route::get('penduduk.laporan', [PDFController::class, 'cetakPenduduk'])->name('cetakPenduduk');

