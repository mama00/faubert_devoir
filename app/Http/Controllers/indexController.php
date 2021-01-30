<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Emprunt ;
use App\Livre ;
use App\Readers ;
use App\Restitution;

class indexController extends Controller
{
    public function index(){

        $Emprunt= Emprunt::all();
        $Livre = Livre::all();
        $Readers = Readers::all();
        $Restitution = Restitution::all();

        $Loans=$Emprunt->count();
        $read=$Readers->count();
        $book=$Livre->count();
        $release=$Restitution->count();

        return View('biblio.index',
        ['Emprunt'=>$Emprunt, 'Loans'=>$Loans, 
        'Livre'=>$Livre, 
        'Readers'=>$Readers,
        'Loans'=>$Loans, 
        'read'=>$read,
        'book'=>$book,
        'release'=>$release]);
    }
    
    public function getIcon(){
        return View('biblio.examples.icons');
    }

    public function getLoan(){
        $Emprunt= Emprunt::all();
        $Readers = Readers::all();

        $id_r=request('ID_R');
        $id_l=request('ID_L');

        return View('biblio.examples.loan',
     ['id_r'=>$id_r,
     'Emprunt'=>$Emprunt,
     'Readers'=>$Readers]);
    }

    public function getBook(){

        $Livre = Livre::all();

        return View('biblio.examples.book', ['Livre'=>$Livre] );
    }

    public function getReader(){

        $Readers = Readers::all();

        return View('biblio.examples.reader',['Readers'=>$Readers]);
    }

    public function SaveLoan()
    {
        
        $Emprunt= new Emprunt();
        $Emprunt->Date = request('Date');
        $Emprunt->ID_R = request('ID_R');
        $Emprunt->ID_L = request('ID_L');

        $Emp= count(Emprunt::Where(['ID_R'=>$Emprunt->ID_R])->get());
        $Readers= Readers::find($Emprunt->ID_R);
        
             if($Readers->credit==1 && $Emp<3 )
             {
                $Emprunt->Save();
                return redirect('/')->with('mssg','Save Succesful');  
             }
             else
             {
                return redirect('/')->with('mssg','The Client have not pay or he have already 3 books');
             }
        
       

        
    }

}
