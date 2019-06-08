<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Portfolio;
use Session;
use Str;
use App\User;


class HomeController extends Controller
{
    public function homePortfolio()
    {

        $posts = Portfolio::latest()->limit(3)->get()->each(function($var)
        {
            $var->body = str_limit(Str::title(strip_tags($var->body),30));
            $var->makeHidden(['excerpt']);
            $var->user = User::find($var->author_id)->makeHidden(['email','role_id','email_verified_at','updated_at']);;
            $var->image = $this->getThumbnail($var->image,'medium');
        });

        return $posts;
    }

    public function thumbnail($type, $attribute = 'image')
    {
        // Return empty string if the field not found
        if (!isset($this->attributes[$attribute])) {
            return '';
        }

        // We take image from posts field
        $image = $this->attributes[$attribute];

        return $this->getThumbnail($image, $type);
    }

    /**
     * Generate thumbnail URL.
     *
     * @param $image
     * @param $type
     *
     * @return string
     */
    public function getThumbnail($image, $type)
    {
        // We need to get extension type ( .jpeg , .png ...)
        $ext = pathinfo($image, PATHINFO_EXTENSION);

        // We remove extension from file name so we can append thumbnail type
        $name = Str::replaceLast('.'.$ext, '', $image);

        // We merge original name + type + extension
        return $name.'-'.$type.'.'.$ext;
    }








    public function currentOnlineUserCount(){

        return Session::all();
    }
}
