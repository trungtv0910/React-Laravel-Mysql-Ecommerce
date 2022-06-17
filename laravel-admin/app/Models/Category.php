<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $guarded = [];
    protected $table = 'categories';
    public function CategoryChildrent(){
        return $this->hasMany(Category::class,'parent_id');
    }


    public function category_query_product()
    {
        return $this->belongsToMany(Product::class, 'product_category', 'category_id', 'product_id')->withTimestamps();
    }
}
