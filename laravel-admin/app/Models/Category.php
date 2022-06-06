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
}
