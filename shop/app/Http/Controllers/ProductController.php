<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect, Response, DB, Config;
use Datatables;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Bouncer;
use Auth;
class ProductController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        if ($user->isAn('admin', 'shop-manager')) {
            return view('product_list');
        } else {
            return view('home');
        }

    }
    public function usersList()
    {
        $user = Auth::user();
        if ($user->isAn('admin', 'shop-manager')) {

            $users = DB::table('products')->select('pname', 'price', 'in_stock')->get();

            $users1 = array();
            foreach ($users as $useru) {
                $users1[] = array(
                    'pname' => $useru->pname,
                    'price' => $useru->price,
                    'in_stock' => ($useru->in_stock == 0) ? 'Out of Stock' : 'In Stock'
                );
            }
            return datatables()->of($users1)->make(true);
        } else {
            return view('home');
        }
    }
}