<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartIconComponent extends Component
{
    protected $listeners = ['refreshComponent'=>'$refresh'];
    
    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('cart-component','refreshComponent');

        // session()->flash('success_message','Item has been removed!');
    }
    public function clearAll()
    {
        Cart::instance('cart')->destroy();
        $this->emitTo('cart-component','refreshComponent');

    }
    public function render()
    {
        return view('livewire.cart-icon-component');
    }
}
