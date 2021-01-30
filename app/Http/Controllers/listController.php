<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Emprunt ;
use App\Restitution ;
use App\Livre ;

class listController extends Controller
{
    
    public function loanList()
    {   $Emprunt= Emprunt::all();

        return View('biblio.examples.loanlist',['Emprunt'=>$Emprunt]);
    }

    public function release()
    {   

        return View('biblio.examples.release');
    }

    public function NewBook()
    {   

        return View('biblio.examples.newbook');
    }

    public function NewReader()
    {   

        return View('biblio.examples.newreader');
    }

    public function EditBook($ID_L)
    {   
        $Livre= Livre::find($ID_L);

        return View('biblio.examples.editbook',['Livre'=>$Livre]);
    }
        
    public function SaveRelease()
    {
        
        $Restitution = new Restitution();
        $Restitution->Date = request('Date1');
        $Restitution->ID_R = request('ID_R1');
        $Restitution->ID_L = request('ID_L1');
        $Restitution->ID_E = request('ID_E1');
      
        
        $idr= Emprunt::Where(['ID_R'=>$Restitution->ID_R,'ID_L'=>$Restitution->ID_L,'ID_E'=>$Restitution->ID_E])->get()->first();

        if(($idr->ID_R==$Restitution->ID_R) && ($idr->ID_L==$Restitution->ID_L) && ($idr->ID_E==$Restitution->ID_E ))
        {

            $Restitution->Save();

            return redirect('/')->with('mssg','Save Succesful');

        }

        else {

            return redirect('/')->with('mssg','Verify');
        }

    }


    public function SaveBook()
    {
        
        $Livre = new Livre();
        $Livre->Titre = request('Titre');
        $Livre->Auteur = request('Auteur');
        $Livre->Rayon = request('Rayon');
        
        $Livre->Save();

        return redirect('/')->with('mssg','Save Succesful');
    }

    public function UpdateBook($ID_L)
    {
        
        $Livre= Livre::find($ID_L);
        $Livre->Titre = request('Titre1');
        $Livre->Auteur = request('Auteur1');
        $Livre->Rayon = request('Rayon1');
        
        $Livre->Save();

        return redirect('/')->with('mssg','Save Succesful');
    }

    public function destroy($ID_E)
    {
        $Emprunt=Emprunt::find($ID_E);
        $Emprunt->delete();

        return redirect('loanlist');

    }

}
