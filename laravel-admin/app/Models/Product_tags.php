<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_tags extends Model
{
    use HasFactory;
    protected $table ='product_tags';
    protected $guarded = [];
}
