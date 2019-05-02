<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orderdetails extends Model
{
    protected $table = "orderdetails";

    public function products()
    {
        return $this->belongsTo('App/Products', 'productID', 'orderID');
    }
}
