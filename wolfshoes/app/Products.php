<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = "products";

    public function productlines()
    {
        return $this->belongsTo('App/Productlines', 'productLineID', 'productCode');
    }

    public function orderdetails()
    {
        return $this->hasMany('App/Orderdetails', 'productID', 'productCode');
    }
}
