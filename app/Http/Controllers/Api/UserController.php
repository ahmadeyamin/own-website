<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class UserController extends Controller
{
    public function index(Request $r)
    {
    	return User::find($r->uid)->makeHidden(['email','role_id','email_verified_at','updated_at']);
    }
}
