<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
class UserB extends Authenticatable
{
    use Notifiable;
    protected $table='Users';
    protected $primaryKey='ID';

    public function getAuthPassword()
    {
      return $this->Password;
    }

    public function username(){
        return $this->Username;
    }

}
