<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\User;
use Illuminate\Http\Request;
use App\Events\NewMessage;

class MessageController extends Controller
{

    public function send(Request $request)
    {

         $message = auth()->user()->messages()->create([
             'message' => $request->message,
             'to'=>$request->to
         ]);

        //event(new NewMessage($request->message , auth()->user()));

        broadCast(new NewMessage($request->message , auth()->user()))->toOthers();

        return response()->json([],200);
    }

    public function messages(Request $request)
    {

        $friend = $request->friend;
        $user = $request->user;

        $messages = Message::where([
            ['from', $friend],
            ['to', $user],
        ])
            ->orWhere([
                ['from', $user],
                ['to', $friend],
            ])
            ->get();

        return response()->json(['messages'=>$messages ]);
    }

    public function broadCast(Request $request)
    {

        $user = User::find($request->to);

        event(new NewMessage($request->message , $user));

    }


}
