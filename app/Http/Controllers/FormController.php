<?php

namespace App\Http\Controllers;

use App\Mail\OrderShipped;
use App\Models\Form;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;


class FormController extends Controller
{
    public function create()
    {
        return view('create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate(['message_content' => 'required|min:3|max:1000']);
        Form::create($validatedData);
        $message = $validatedData["message_content"];
        Mail::to('romanpanshyn@gmail.com')->send(new OrderShipped($message));
        return response()->json('Message was sent successfully');
    }
}
