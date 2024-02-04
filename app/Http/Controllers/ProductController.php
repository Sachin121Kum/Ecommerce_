<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(){
        return view('auth.dashboard')->with('products', Product::all());
    }


    public function cart(){

        return view('cart');
        
    }

    public function addToCart(Product $product){

        $cart = session()->get('cart');

        if(!$cart){
            $cart = [
                $product->id => $this->sessionData($product)

            ];

            return $this->setSessionAndReturnResponse($cart);


        }

        if(isset($cart[$product->id])){
            $cart[$product->id]['quantity']++;
            return $this->setSessionAndReturnResponse($cart);

        }

        $cart[$product->id] = $this->sessionData($product);
        return $this->setSessionAndReturnResponse($cart);

    }

    public function removeToCart($id){
        $cart = session()->get('cart');

        if(isset($cart[$id])){
            unset($cart[$id]);
            session()->put('cart', $cart);
        }
        return redirect()->route('cart')->with('success',"Removed to Cart");


    }

    protected function sessionData(Product $product){
        return [
                'product_id' => $product->id,
                'name'       => $product->name,
                'quantity'   => 1,
                'price'      => $product->price,
                'image'      => $product->image
        ];
        
    }


    protected function setSessionAndReturnResponse($cart){
        session()->put('cart', $cart);
        return redirect()->route('cart')->with('success',"Added to Cart");        
    }


}
