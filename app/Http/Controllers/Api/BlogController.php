<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Category;
use Session;

class BlogController extends Controller
{


    public function index(Request $r)
    {
        $filterlist = [
            'OldToNew',
            'NewToOld',
            'ByView',
        ];
        $pagino = 9;


        $posts = Post::latest()->paginate($pagino);


        if ($r->filter == $filterlist[0]) {
            $posts = Post::orderBy('updated_at','asc')->paginate($pagino);
        }
        if ($r->filter == $filterlist[1]) {
            $posts = Post::orderBy('updated_at','desc')->paginate($pagino);
        }

        if ($r->filter == $filterlist[2] and $r->limit > 0) {
            $data = Post::orderBy('view_count','desc')->limit($r->limit)->get();
            $data->makeHidden(['body','image','meta_keywords','meta_description','created_at','updated_at','excerpt','seo_title']);
            return $data;
        }


        if ($r->filter == $filterlist[2]) {
            $posts = Post::orderBy('view_count','desc')->paginate($pagino);
        }





        if (!empty($r->catid)) {
            $posts = Category::findOrFail($r->catid)->posts()->paginate($pagino);
        }
        if (!empty($r->tagid)) {
            $posts = Post::where('meta_keywords','like',"%$r->tagid%")->paginate($pagino);

        }

        $data = $posts->getCollection();



        $data->each(function($var)
        {
            $var->makeHidden(['body','meta_description','status']);
            $var->image = $var->getThumbnail($var->image,'medium');
            // echo 'dkj';
        });

        $posts->setCollection($data);

        return $posts;







    }

    public function show(Request $r)
    {
        $post = Post::find($r->id);

        $post->getThumbnail($post->image,'full');
        if($post->category){$post->category_name = $post->category->name;}


        return $post;
    }
}
