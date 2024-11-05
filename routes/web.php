<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\WritersController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/category/{category}', [CategoryController::class, 'show'])->name('category.show');

Route::get('/writers', [WritersController::class, 'index'])->name('writers')
;
Route::get('/writers/{writer}', [WritersController::class, 'show'])->name('writer.show');

Route::get('/about-us', function() {
    return view('pages.about');
});

Route::get('articles/{article}', [DetailController::class, 'show'])->name('articles.show');

Route::get('/popular', function() {
    return view('pages.popular');
});