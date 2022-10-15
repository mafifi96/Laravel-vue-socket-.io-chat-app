<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\LoginController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use App\Events\UserCreated;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

Route::redirect('/', '/login');

Route::get("/login", [LoginController::class, 'show'])->name("login");

Route::get("/register", [RegisterController::class, 'show'])->name("register");

Route::post("/log", [LoginController::class, 'authenticate']);

Route::post("/reg", [RegisterController::class, 'store']);


Route::middleware(['auth'])->group(function () {

    Route::get('/profile', [UserController::class, 'profile']);

    Route::get('/messenger/{id}/{name}', [UserController::class, 'messenger']);

    Route::post("/send", [MessageController::class, 'send']);

    Route::post("/ajax-messages", [MessageController::class, 'messages']);

    Route::get("/logout", function () {

        $user = Auth::user();
        $user->status = "offline";

        $user->save();

        Auth::logout();
        return redirect("/login");
    });
});
