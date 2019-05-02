<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;

class MyController extends Controller
{
    public function getIndex()
    {
        $product = Products::paginate(4);
       // dd($product);
        return view('pages.index', compact('product'));
    }
}
