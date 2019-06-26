<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect, Response, DB, Config;
use Datatables;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Bouncer;
use Auth;

class OrderController extends Controller
{
    public function index(Request $request)
    {

        $user = Auth::user();
        if ($user->isAn('admin', 'shop-manager')) {
            return view('order_list');
        } else {
            return view('home');
        }
    }
    public function usersList()
    {
        $user = Auth::user();
        if ($user->isAn('admin', 'shop-manager')) {
            $users  = DB::table('orders')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')
            ->join('order_items', 'orders.id', '=', 'order_items.order_id')
            ->join('products', 'order_items.product_id', '=', 'products.id')
            ->select('orders.created_at', 'orders.total_amount', 'orders.status', 'customers.name', 'products.pname')
            ->orderBy('created_at', 'DESC')->get();
            $order1 = array();
            foreach ($users as $user) {
                $order1[] = array(
                    'name' => $user->name,
                    'total_amount' => $user->total_amount,
                    'pname' => $user->pname,
                    'status' => ($user->status == 0) ? 'New' : 'Processed',
                    'created_at' => $user->created_at
                );
            }
            return datatables()->of($order1)->make(true);
        } else {
            return view('home');
        }
    }
}