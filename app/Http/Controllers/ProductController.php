<?php

namespace App\Http\Controllers;

use App\Catalog;
use App\Products;

class ProductController extends Controller
{
    public function getCatalog($id = null)
    {
        $breadcrumbs = [];
        $breadcrumbs[] = [
            'label' => 'Главная',
            'url' => url('/'),
        ];
        $breadcrumbs[] = [
            'label' => 'Каталог',
            'url' => url('/catalog'),
        ];
        if (isset($id)) {
            $category = Catalog::where('id', $id)->first();
            $products = Products::where('categories_id', $id);

            $breadcrumbs[] = [
                'label' => $category['name'],
                'url' => url('/catalog/' . $id),
            ];
        } else {
            $products = Products::query();
        }
        view()->share('breadcrumbs', $breadcrumbs);
        $products = $products->orderBy('id', 'DESC')->paginate(18);
        return view('products', compact('products'));
    }

    public function search()
    {
        $search = isset($_GET['s']) ? $_GET['s'] : '';
        if (mb_strlen($search) < 3) {
            $products = [];
        } else {
            $products = Products::where('body', 'like', '%' . $search . '%')->orderBy('id', 'DESC')->paginate(18);
        }

        $breadcrumbs = [];
        $breadcrumbs[] = [
            'label' => 'Главная',
            'url' => url('/'),
        ];
        $breadcrumbs[] = [
            'label' => 'Поиск',
            'url' => url()->current(),
        ];
        view()->share('breadcrumbs', $breadcrumbs);
        view()->share('search_string', $search);

        return view('search', compact('products', 'search'));
    }

    public function getProduct($id = null)
    {
        $product = Products::where('id', $id)->first();

        return view('product', compact('product'));
    }

    public function getProductPage($category_id = null, $id = null)
    {
        $category = Catalog::where('id', $category_id)->first();
        $product = Products::where('id', $id)->first();

        $breadcrumbs = [];
        $breadcrumbs[] = [
            'label' => 'Главная',
            'url' => url('/'),
        ];
        $breadcrumbs[] = [
            'label' => 'Каталог',
            'url' => url('/catalog'),
        ];
        $breadcrumbs[] = [
            'label' => $category['name'],
            'url' => url('/catalog/' . $category_id),
        ];
        $breadcrumbs[] = [
            'label' => $product['name'],
            'url' => url('/catalog/' . $category_id . '/' . $id),
        ];
        view()->share('breadcrumbs', $breadcrumbs);

        return view('product', compact('product'));
    }
}
