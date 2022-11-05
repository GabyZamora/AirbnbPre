<?php

use Illuminate\Support\Facades\Route;
/*
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

$role = Role::create(['name' => 'admin']);
$role = Role::create(['name' => 'host']);
$role = Role::create(['name' => 'cliente']);
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['prefix'=>'admin','middleware'=> ['auth','role:admin']],
function(){
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::resource('/ruta', App\Http\Controllers\Admin\RutaController::class);
    Route::resource('/categoria', App\Http\Controllers\Admin\CategoriaController::class);
    Route::resource('/host', App\Http\Controllers\Admin\HostController::class);
    Route::resource('/lugar', App\Http\Controllers\Admin\LugarController::class);
    Route::resource('/catalogo', App\Http\Controllers\Host\CatalogoController::class);
    Route::resource('/clientes', App\Http\Controllers\Host\RegistroClienteController::class);
    Route::resource('/foto', App\Http\Controllers\Admin\FotoController::class);
    Route::resource('/user', App\Http\Controllers\Admin\UserController::class);
    Route::resource('/cliente', App\Http\Controllers\Admin\ClienteController::class);
});

Route::group(['prefix'=>'host','middleware'=> ['auth','role:host']],
function(){
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::resource('/catalogo', App\Http\Controllers\Host\CatalogoController::class);
    Route::resource('/clientes', App\Http\Controllers\Host\RegistroClienteController::class);
    Route::resource('/foto', App\Http\Controllers\Admin\FotoController::class);
});