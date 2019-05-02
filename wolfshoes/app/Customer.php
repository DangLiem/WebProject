<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = "customer";

    public function payments()
    {
        return $this->hasMany('App/Payments', 'customerID', 'customerID');
    }

    public function orders()
    {
        return $this->hasMany('App/Orders', 'customerID', 'customerID');
    }

}
