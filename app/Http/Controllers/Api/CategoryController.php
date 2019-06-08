<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;

class CategoryController extends Controller
{
    public function catList()
    {
        $cat = Category::all()->makeHidden(['created_at','updated_at']);
        $cat->each(function($var)
        {
            $var->post_count = Category::find($var->id)->posts->count();
        });

        $cat = $cat->sortByDesc('post_count')->values()->all();
        return $cat;
    }
}
