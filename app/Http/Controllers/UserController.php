<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Message;
Use App\Models\User;

class UserController extends Controller
{


    public function profile()
    {
        $user = User::findOrFail(auth()->user()->id);
        $user->load('friends');
        $user->status = "online";
        $user->save();

        return view("profile.layouts.profile" , ['user'=>$user]);

    }


    public function messenger($id)
    {
        $friend = User::findOrFail($id);

        return view("profile.layouts.messenger" , ['friend'=>$friend , 'user' => Auth::user()]);

    }





}
