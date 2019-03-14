<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $table= "Product";

    public function producttype(){
    	return $this->belongsTo('App/ProductType', 'id_type', 'id');
    }
}
