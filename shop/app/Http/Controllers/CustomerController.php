<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect, Response, DB, Config;
use Datatables;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Bouncer;
use Auth;
class CustomerController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        if ($user->isAn('admin', 'user-manager')) {
            return view('customer_list');
            return $this->builder()->parameters(['searching'=>false]);
        } else {
            return view('home');
        }

    }
    public function userList()
    {
        $user = Auth::user();
        if ($user->isAn('admin', 'user-manager')) {
            $users = DB::table('customers')->select('*');
            return datatables()::of($users)->editColumn('created_at', function ($user){
            return date('d/m/Y', strtotime($user->created_at) );
            })
            ->make(true);
        } else {
            return view('home');
        }
    }
}