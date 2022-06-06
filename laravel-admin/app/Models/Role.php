<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Role extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $guarded= [];
    public function permissionRole(){
        return $this->belongsToMany(Permission::class,'permission_role','role_id','permission_id');
    }
}
