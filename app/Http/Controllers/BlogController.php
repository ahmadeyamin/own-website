<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use SEO;
use Session;
use App\Post;
class BlogController extends Controller
{
    public function index()
    {
        $siteLogoSrc = config('app.url').'/'.str_replace('\\','/',setting('site.logo'));
        SEO::setTitle("Blog | ".setting('site.title'));
        SEO::setDescription(setting('site.description'));
        SEO::opengraph()->setUrl(url()->current())->addImage($siteLogoSrc);
        SEO::opengraph()->addProperty('type', 'website');
        SEO::twitter()->setSite('@webenvms')->setImage($siteLogoSrc);



        return view('post');
    }

    public function show(Request $r)
    {
        $post = Post::find($r->id);
        $siteLogoSrc = config('app.url').'/storage/'.str_replace('\\','/',$post->image);


        SEO::setTitle("$post->title"." | ".setting('site.title'));
        SEO::setDescription(setting('site.description'));
        SEO::opengraph()->setUrl(url()->current())->addImage($siteLogoSrc);
        SEO::opengraph()->addProperty('type', 'article')->setArticle([
            'published_time' => $post->created_at,
            'modified_time' => $post->updated_at,
            'author' => $post->authorId->name,
            'section' => $post->meta_keywords,
        ])->addProperty('locale', 'en-us');;
        SEO::twitter()->setSite('@webenvms')->setImage($siteLogoSrc);


        if (Session::get("p_visited_$post->id")) {

        }else{
            Session::put("p_visited_$post->id",true);
            $post->increment('view_count');
        }


        return view('postsingel');
    }


}
