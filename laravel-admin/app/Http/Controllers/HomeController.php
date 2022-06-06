<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;

class HomeController extends Controller
{
   public function index()
   {
       if ( Gate::allows('is_test')) {

           return 'hellog đay là Homecontroller';
       }else{
           abort(403);
       }

   }
}
