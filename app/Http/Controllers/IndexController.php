<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;

class IndexController extends Controller
{
    public function index(Request $request)
    {
        $s = $request->input('s');
        $productsAll = Product::search($s)->paginate(12);


        $productsAll = Product::orderBy('id', 'DESC')->search($s)->paginate(12);
        $productsAll = Product::inRandomOrder()->search($s)->paginate(12);

        $categories = Category::with('categories')->where(['parent_id' => 0])->get();

        return view('index')->with(compact('productsAll', 'categories', 's'));
    }
    public function contactUs()
    {
        return view('products.contact');
    }
}
