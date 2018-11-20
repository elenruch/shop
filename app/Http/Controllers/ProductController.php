<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Catalog;
use App\Products;

class ProductController extends Controller
{
    public function getCatalog($id = null)
    {
        $products = Products::where('categories_id', $id)->orderBy('id','DESC')->paginate(18);
        return view('products', compact('products'));
    }
}
