<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Product extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $guarded = [];
    protected $table = 'products';
    public function images()
    {
        return $this->hasMany(productImage::class, 'product_id');
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'product_tags', 'product_id', 'tag_id')->withTimestamps();
    }

//    thêm cate vào bảng
    public function category_prod()
    {
//        return $this->hasMany(Product_category::class,'product_id');
        return $this->belongsToMany(Product_category::class, 'product_category', 'product_id', 'category_id')->withTimestamps();
    }

//    select cate từ danh sách sản phẩm
    public function select_cate()
    {
        return $this->belongsToMany(Category::class, 'product_category', 'product_id', 'category_id')->withTimestamps();

    }
}
