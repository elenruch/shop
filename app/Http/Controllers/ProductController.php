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

    public function search() {
        $search = isset($_GET['s']) ? $_GET['s'] : '';
        if (mb_strlen($search) < 3) {
            $products = [];
        } else {
            $products = Products::where('body', 'like', '%' . $search . '%')->orderBy('id','DESC')->paginate(18);
        }
        return view('search', compact('products', 'search'));
    }

    public function getProduct($id = null)
    {
        $product = Products::where('id', $id)->first();
        return view('product', compact('product'));
    }
}
