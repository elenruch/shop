<?php

namespace App\Http\Controllers;

use App\Products;

class AjaxController extends Controller
{
    public function getProduct($id)
    {
        $product = Products::where('id', $id)->first();

        return json_encode([
            'title' => $product->name,
            'body' => $product->body,
        ]);
    }
}
