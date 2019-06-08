<?php

namespace App;
use TCG\Voyager\Models\Post as VoyagerPost;
use App\Category;

class Post extends VoyagerPost
{
    protected $hidden = ['status','featured'];

    public function getViewCountAttribute($var)
    {
        return $var;
    }
    public function getCategoryIdAttribute($var)
    {
        if($var==NULL){
            $var = Category::orderBy('order','desc')->first()->id;
        }
        return $var;
    }
    // public function thumbnailsize($image , $type)
    // {
    //     // We need to get extension type ( .jpeg , .png ...)
    //     $ext    = pathinfo($image, PATHINFO_EXTENSION);
    //     // We remove extension from file name so we can append thumbnail type
    //     $name   = rtrim($image, '.'. $ext);
    //     // We merge original name + type + extension
    //     return $name . '-' . $type . '.' . $ext;
    // }
}
