<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;

class TagController extends Controller
{
    public function tagList()
    {
        $titles =  Post::latest()->pluck('meta_keywords');
        $data = [];
        foreach ($titles as $title) {
            $jd = "$title," ;
            array_push($data,explode(",",$jd));
        }
        $plist = "";
        foreach ($data as $key => $d) {
            foreach($d as $e){
                $g = ("$e,");

                $plist .= trim($g);
            }
        }

        $shf = preg_replace('/(,,+)/m',',',$plist);

        $sahj = explode(',',$shf);

        $bhuuy = array_unique($sahj);


        $shh = array_search("",$bhuuy);

        $totalTag = array_filter($bhuuy);

        $proData = [];

        foreach ($totalTag as $key => $value) {
            $du = Post::where('meta_keywords','like',"%$value%")->count();

            $o = array('word'=>$value,'use_count'=>$du);

            array_push($proData,$o);
        };



        return array_reverse($proData);
    }
}
