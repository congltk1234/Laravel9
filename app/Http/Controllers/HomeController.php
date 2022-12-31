<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function addcart(Request $request, $id)
    {
        if(Auth::id())
        {
            $user = auth()->user();
            $product=Product::find($id);
            $cart=new Cart();
            $cart->user_email = $user->email;
            $cart->product_name = $product->name;
            $cart->price = $product->regular_price;
            $cart->image = $product->image;
            $cart->quantity = $request->quantity;
            $cart->save();
            return redirect()->back();
        }
        else
        {
            return redirect('login');
        }
    }
}
