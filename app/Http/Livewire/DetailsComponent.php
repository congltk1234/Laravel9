<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\Product;

use Livewire\Component;
use Cart;
use Illuminate\Support\Facades\Auth;

class DetailsComponent extends Component
{
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
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

    public function addToWishlist($product_id, $product_name, $product_price)
    {
        if(Auth::id())
        {
        Cart::instance('wishlist')->add($product_id,$product_name,1,$product_price)->associate('\App\Models\Product');
        $this->emitTo('wishlist-icon-component', 'refreshComponent');
        }
        else
        {
            return redirect('login');
        }
    }

    public function removeFromWishlist($product_id)
    {
        foreach(Cart::instance('wishlist')->content() as $w_item)
        {
            if($w_item->id==$product_id)
            {
                Cart::instance('wishlist')->remove($w_item->rowId);
                $this->emitTo('wishlist-icon-component', 'refreshComponent');
                return;
            }
        }
    }

    public function render()
    {
        $product = Product::where('slug', $this->slug)->first();
        $rproducts = Product::where('category_id', $product->category_id)->inRandomOrder()->limit(4)->get();
        $nproducts = Product::latest()->take(4)->get();
        $categories = Category::orderBy('name', 'ASC')->get();

        return view('livewire.details-component', ['product'=>$product,'categories'=>$categories, 'rproducts'=>$rproducts,'nproducts'=>$nproducts]);
    }
}
