<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $appends = ['amount_with_currency'];

    public function getAmountWithCurrencyttribute(){
        return  '₹'.$this->price;
    } 


}
