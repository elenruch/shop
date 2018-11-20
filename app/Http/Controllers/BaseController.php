<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Maintext;
use App\Products;
class BaseController extends Controller
{
    public function getIndex(){
        $lasts = Products::orderBy('id','DESC')->limit(6)->get();
        return view('index', compact('lasts'));
    }
    public function getStatic($url=null){
        $obj = Maintext::where('url', $url)->first();
        return  view('static', compact('obj'));
    }
}
