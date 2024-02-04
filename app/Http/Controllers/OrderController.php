<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class OrderController extends Controller
{
    public function index(){
        $orders = DB::table('orders')
            ->select('orders.*','products.*','order_items.*')
            ->join('order_items', 'order_items.order_id', '=', 'orders.id')
            ->join('products', 'products.id', '=', 'order_items.product_id')
            ->where('orders.user_id',Auth::user()->id)
            ->orderBy('orders.created_at','desc')
            ->paginate(5);

        return view('order.index',compact('orders'));
    }
}
