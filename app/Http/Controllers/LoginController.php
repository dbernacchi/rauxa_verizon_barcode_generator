<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function index(){
	    
	    return view('sections.loginform');
    }
    
    public function validateUser(Request $request){
	    
	    $pass = $request->input('p');
	    
	   
	    $old_pass_chk = DB::select('select val from rxa_settings where type = "passcode"');
	    
	    if (Hash::check( $pass, $old_pass_chk[0]->val )) {
		    
		    //$request->session()->put('user', 1);
		    
			return redirect('home');
			
		}else{
			
			return redirect('/');
		}
		
    }
}
