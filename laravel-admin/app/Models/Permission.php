<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    use HasFactory;
    protected $guarded=[];
    public function handleGetPermissionChild(){
        return $this->hasMany(Permission::class,'parent_id');
    }
}
