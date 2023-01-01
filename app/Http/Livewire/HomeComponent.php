<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\HomeSlider;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Cart;

class HomeComponent extends Component
{
    public function render()
    {
        $slides = HomeSlider::where('status',1)->get();
        $lproducts = Product::orderBy('created_at', 'DESC')->get()->take(10);
        $fproducts = Product::where('featured',1)->inRandomOrder()->get()->take(10);
        $pcategories = Category::where('is_popular',1)->inRandomOrder()->get()->take(10);
        return view('livewire.home-component', ['slides'=>$slides, 'lproducts'=>$lproducts, 'fproducts'=>$fproducts, 'pcategories'=>$pcategories]);
    }

    public function store($product_id, $product_name, $product_price)
    {
        if(Auth::id())
        {
        Cart::instance('cart')->add($product_id,$product_name,1,$product_price)->associate('\App\Models\Product');
        $this->emitTo('cart-icon-component','refreshComponent');
        session()->flash('success_message', 'Item added in Cart');
        // return redirect()->route('shop.cart');
    }
    else
    {
        return redirect('login');
    }
    }
}
