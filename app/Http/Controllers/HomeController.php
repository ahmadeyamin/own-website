<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use SEO;

class HomeController extends Controller
{
    public function index()
    {
        $siteLogoSrc = config('app.url').'/'.str_replace('\\','/',setting('site.logo'));


        SEO::setTitle(setting('site.title'));
        SEO::setDescription(setting('site.description'));
        SEO::opengraph()->setUrl(url()->current())->addImage($siteLogoSrc);
        SEO::opengraph()->addProperty('type', 'website');
        SEO::twitter()->setSite('@webenvms')->setImage($siteLogoSrc);


        return view('home');
    }
}
