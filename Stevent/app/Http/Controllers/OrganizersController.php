<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OrganizersController extends Controller
{
    public function index()
    {
        return view('organizers/home');
    }
}
