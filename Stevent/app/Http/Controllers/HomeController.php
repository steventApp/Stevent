<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $events = Events::all();
        return view('home', ['events' => $events]);
    }
    public function event($id){
        $events = Events::find($id);
        return view('event', ['events' => $events]);
    }
}
