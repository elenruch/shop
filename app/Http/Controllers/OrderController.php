<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Tovar;
use App\Http\Requests\OrderRequest;

class OrderController extends Controller
{


public function postIndex(OrderRequest $r){

    $r['body']=$_COOKIE['basket'];
    $r['status']='new';
    unset($r['_token']);
    Order::create($r->all());

    foreach($_COOKIE as $key => $value){
        $id = (int)$key;
        if($id>0){
            setcookie($id,'',time()-1,'/');
        }   
    }  
    setcookie('basket','',time()-1,'/');
    return redirect()->back();
}

}


