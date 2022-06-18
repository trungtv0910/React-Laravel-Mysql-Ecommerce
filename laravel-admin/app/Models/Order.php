<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use OrderDetail;

class Order extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function OrderDetail()
    {
        return $this->hasMany(order_detail::class, 'order_id');
    }
    public function OrderOfUser()
    {
        return $this->belongsTo(user::class, 'user_id');
    }

    public function orderDetail_product()
    {
//        return $this->hasMany(Product_category::class,'product_id');
        return $this->belongsToMany(OrderDetail::class, 'product', 'product_id', 'order_id')->withTimestamps();
    }
}
