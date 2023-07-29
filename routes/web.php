<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Auth\Events\PasswordReset;

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
// Auth::routes();

Route::get('/', [App\Http\Controllers\auth\LoginController::class, 'showLoginForm'])->name('login');
Route::post('/', [App\Http\Controllers\auth\LoginController::class, 'login'])->name('login');
Route::get('/register', [App\Http\Controllers\auth\RegisterController::class, 'showRegisterForm'])->name('register');
Route::post('/register', [App\Http\Controllers\auth\RegisterController::class, 'create'])->name('register');

Route::get('password/forgot', [App\Http\Controllers\auth\RegisterController::class, 'showForgotPasswordForm'])->name('password.forgot');
Route::get('password/reset', [App\Http\Controllers\auth\RegisterController::class, 'showResetPasswordForm'])->name('password.reset');

Route::post('password/forgot', [App\Http\Controllers\auth\RegisterController::class, 'passwordEmail'])->name('password.email');

Route::post('/reset-password', [App\Http\Controllers\auth\RegisterController::class, 'passwordUpdate'])->name('password.update');

Route::post('/logout', [App\Http\Controllers\auth\LoginController::class, 'logout'])->name('logout');

Route::group(['middleware' => 'auth'], function(){
    Route::get('/dashboard', [App\Http\Controllers\DashboardController::class, 'index']);
});

Route::get('auth/google', [App\Http\Controllers\GoogleController::class, 'redirectToGoogle'])->name('google.login');
Route::get('auth/google/callback', [App\Http\Controllers\GoogleController::class, 'handleGoogleCallback'])->name('google.callback');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
