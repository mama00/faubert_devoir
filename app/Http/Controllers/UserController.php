<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\UserB;
class UserController extends Controller
{
    public function showLogin(){
        return View('biblio.examples.login');
    }

    public function showRegister(){
        return View('biblio.examples.register');
    }

    public function post_login(Request $request)
    {   

        if(Auth::attempt(['username' => $request->input('username'), 'password' => $request->input('password')]))
        {
            if(Auth::user()->Type=='0'){
                return redirect()->route('home');

            }
            else if(Auth::user()->Type=='1'){
                return redirect()->route('home1');
            }
        }


        else
        return back()->withInput();
    }

    public function post_register(Request $request)
    {
        $user=new UserB;
        $user->Username=$request->input('username');
        $user->Password=Hash::make($request->input('password'));
        $user->Nom=$request->input('nom');
        $user->Prenom=$request->input('prenom');
        $user->Email=$request->input('email');
        $user->Type=0;
        $user->save();
        Auth::login($user);
        return redirect()->route('home');

    }

    public function logout(){
        Auth::logout();
        return redirect()->route('show_login');
    }
}
