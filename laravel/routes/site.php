<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProdutoController;

Route::middleware('auth')->group(function () {

});

Route::get('/produto', [ProdutoController::class, 'index'] );
Route::get('/produto/{id}', [ProdutoController::class, 'show'] );


