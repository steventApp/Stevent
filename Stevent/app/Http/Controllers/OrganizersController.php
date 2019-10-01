<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;

use App\Events;

class OrganizersController extends Controller
{
    public function index()
    {
        $events = Events::where('id_user','=',Auth::user()->id)->get();
        return view('organizers/home',['events' => $events]);
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:posts|max:255',
            'body' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect('post/create')
                        ->withErrors($validator)
                        ->withInput();
        }

        $event = new Events;
        $event->judul = $request->judul;
        $event->tempat = $request->tempat;
        $event->deskripsi = $request->deskripsi;
        $event->id_user = Auth::user()->id;
        $event->save();
        
        redirect(route('home'));
    }
}
