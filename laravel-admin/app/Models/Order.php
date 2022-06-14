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
}
