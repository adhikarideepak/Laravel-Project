<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Bouncer;

class Controller extends BaseController
{
    use AuthenticatesUsers;
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

}
