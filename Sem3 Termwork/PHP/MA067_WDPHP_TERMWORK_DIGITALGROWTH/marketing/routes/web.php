<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ServiceController; // Import the ServiceController class

Route::get('/', function () {
    return view('home');
})->name('home'); 

Route::get('/home', function () {
    return view('home');
});
Route::get('/aboutus', function () {
    return view('aboutus');
})->name('aboutus');

Route::get('/contactus', function () {
    return view('contactus');
})->name('contactus');

Route::get('/services', function () {
    return view('services');
});

Route::get('/blog', function () {
    return view('blog');
});

Route::get('/addtocart', function () {
    return view('addtocart');
})->name('addtocart');


Route::get('/addtocart', [ServiceController::class, 'create'])->name('addtocart');
Route::post('/addtocart', [ServiceController::class, 'store']);



Route::post('/contactus', function () {
    return view('contactus');
})->name('contactus.submit');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return redirect()->route('home');       
    })->name('dashboard');
});
