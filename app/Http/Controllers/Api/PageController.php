<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Page;

class PageController extends Controller
{
    public function show(Request $r)
    {

        $page = Page::findOrFail($r->id);

        if($page->slug !== $r->slug){
            return redirect()->route('api.page.singel.page', ['id' => $r->id,'slug'=>$page->slug]);
        }
        $page->makeHidden(['status']);
        return $page;
    }
}
