<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Bouncer;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        
        /*This section for User creation and assign user permission*/
        /* Bouncer::assign('user-manager')->to($user);
        Bouncer::allow($user)->to('product_list');
        Bouncer::assign('editor')->to($user);
        $admin = Bouncer::role()->firstOrCreate([
        'name' => 'user-manager',
        'title' => 'User Manager',
        ]);*/
        /*Section end*/
        return view('home');
    }
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function addnewrole()
    {
        $user = Auth::user();
        /*For adding new role*/
        //  Bouncer::assign('admin')->to($user);
        return view('home');
    }
    
}