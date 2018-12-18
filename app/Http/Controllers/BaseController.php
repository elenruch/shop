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

        $breadcrumbs = [];
        $breadcrumbs[] = [
            'label' => 'Главная',
            'url' => url('/'),
        ];
        $breadcrumbs[] = [
            'label' => $obj['name'],
            'url' => url('/' . $url),
        ];
        view()->share('breadcrumbs', $breadcrumbs);

        return  view('static', compact('obj'));
    }
}
