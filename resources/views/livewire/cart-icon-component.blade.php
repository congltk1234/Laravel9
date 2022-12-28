<div>
    {{-- The best athlete wants his opponent at his best. --}}
    <div class="header-action-icon-2">
        <a class="mini-cart-icon" href="{{route('shop.cart')}}">
            <img alt="cart" src="{{asset('assets/imgs/theme/icons/icon-cart.svg')}}">
            @if (Cart::instance('cart')->count()>0)
            <span class="pro-count blue">{{Cart::count()}}</span>
            @endif
        </a>
        <div class="cart-dropdown-wrap cart-dropdown-hm2">
            <ul>
                @if(Cart::instance('cart')->count()>0)
                @foreach (Cart::instance('cart')->content() as $item)
                <li>
                    <div class="shopping-cart-img">
                        <a href="{{route('product.details', ['slug'=>$item->model->slug])}}"><img alt="{{$item->model->name}}" src="{{ asset('assets/imgs/products')}}/{{$item->model->image}}"></a>
                    </div>
                    
                    <div class="shopping-cart-title">
                        <h4><a href="{{route('product.details', ['slug'=>$item->model->slug])}}">{{substr($item->model->name,0,20)}}...</a></h4>
                        <h4>
                            <span>{{$item->qty}} </span>   ${{substr($item->model->regular_price,0,20)}}</h4>
                    </div>
                    <div class="shopping-cart-delete">
                        <a href="#" wire:click.prevent="destroy('{{$item->rowId}}')"><i class="fi-rs-cross-small"></i></a>
                    </div>
                </li>
                @endforeach
                <tr>
                    <td class="text-end">
                        <a href="#" class="text-muted" wire:click.prevent="clearAll()"> <i class="fi-rs-cross-small"></i> Clear Cart</a>
                    </td>
                </tr>
            </ul>
            <div class="shopping-cart-footer">
                <div class="shopping-cart-total">
                    <h4>Total <span>${{Cart::instance('cart')->total()}}</span></h4>
                </div>
                <div class="shopping-cart-button">
                    <a href="{{route('shop.cart')}}" class="outline">View cart</a>
                    <a href="{{route('shop.checkout')}}">Checkout</a>
                </div>
            </div>
            @else
            <p>No item in cart</p>
            @endif
        </div>
    </div>
</div>
