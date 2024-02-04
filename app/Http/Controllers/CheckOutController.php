<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\User;
use App\Models\OrderItem;


use Illuminate\Support\Facades\Auth;



class CheckOutController extends Controller
{

    public function index(){

        // $user = Auth::user();

        // dd();

        
    }



    public function placeOrder(Request $request){
        $user = Auth::user();

        $cartitems = session()->get('cart');
        
        $order = new Order();
        $order->name =$user['name']; 
        $order->email =$user['email']; 
        $order->user_id =$user['id']; 
        $order->tracking_no = $user['name'].rand(1111,9999);

        $order->save();

        // dd($order->id);

            if(!empty($order->id)){
        
        foreach($cartitems as $item){
            
            OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $item['product_id'],
                'quantity' => $item['quantity'],
                'price' => $item['price'],

            ]);
        }
                // dd("Order Saved Successfully");
        return redirect()->route('products')->with('message', 'Record added successfully!');


    }else{
        // dd("Order Not Saved ");
        return redirect()->route('products')->with('message', 'Record Not Saved!');


    }

        // $order->id;

        // // dd($cart);

        // $orderItem = new OrderItem();

        // foreach($cart as $item => $val){
            
        //     if(!empty($order->id)){

        //         $orderItem->order_id = $order->id;

        //         $orderItem->product_id = 1;
        //         $orderItem->quantity = 1;
        //         $orderItem->price = 1000;
    
        //         $orderItem->save();

            
        //     }else{
        //         dd("getting error");
        //     }

        // }


          


      
        // }
        


    }
}
