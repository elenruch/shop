<?php

namespace App\Http\Controllers;

use App\Chat;
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

    public function chatGet() {
        $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

        $data = Chat::where('id', '>', $id)->get();

        return json_encode($data);
    }

    public function chatSend() {
        Chat::insert([
            'name' => $_POST['name'],
            'message' => $_POST['message'],
            'dt' => time(),
        ]);
    }
}
