<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_detail extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'order_detail';
    public function productOfOrder(){
//        return $this->hasMany(Product::class,'product_id');
        return $this->belongsTo(Product::class,'product_id');
    }
}
