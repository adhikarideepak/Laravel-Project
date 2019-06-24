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
        
        /* action button code
        
        if ($request->ajax()) {
            $data = user::latest()->get();
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
             $btn = '<a href="javascript:void(0)" class="edit btn btn-primary btn-sm">View</a>';
        
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }*/
        
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
            $users  = DB::table('orders')->join('customers', 'orders.customer_id', '=', 'customers.id')->select('orders.created_at', 'orders.total_amount', 'orders.status', 'customers.name')->orderBy('created_at', 'DESC')->get();
            $order1 = array();
            foreach ($users as $user) {
                $order1[] = array(
                    'name' => $user->name,
                    'total_amount' => $user->total_amount,
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