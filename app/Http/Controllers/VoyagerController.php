<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VoyagerController extends Controller
{
    public function logout()
    {
        app('VoyagerAuth')->logout();

        return redirect()->route('voyager.login');
    }
}
