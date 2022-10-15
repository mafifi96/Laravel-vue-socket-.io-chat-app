<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{

    public function show()
    {
        if(Auth::check())
        {
            return redirect('/profile');
        }

        return view("layouts.login");
    }


    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials , ($request->remember ? true : false ))) {

            $request->session()->regenerate();

            return redirect("/profile");
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ]);
    }
}
