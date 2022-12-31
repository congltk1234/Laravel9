<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    protected $listeners = ['refreshComponent'=>'$refresh'];

    public function increaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $stock_quantity = Product::where('name', $product->name)->first()->quantity;
        if ($product->qty < $stock_quantity){
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId, $qty);
        $this->emitTo('cart-icon-component','refreshComponent');
        }
        else{
            session()->flash('error_message','Item out of stock!');
        }
    }

    public function decreaseQuantity($rowId)
    {
        
        $product = Cart::instance('cart')->get($rowId);

        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId, $qty);
        $this->emitTo('cart-icon-component','refreshComponent');

    
    }

    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('cart-icon-component','refreshComponent');
        session()->flash('success_message','Item has been removed!');
    }


    public function clearAll()
    {
        Cart::instance('cart')->destroy();
        $this->emitTo('cart-icon-component','refreshComponent');

    }

    public function render()
    {
        return view('livewire.cart-component');
    }
}
