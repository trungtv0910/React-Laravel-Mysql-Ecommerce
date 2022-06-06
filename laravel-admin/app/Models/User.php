<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum\HasApiTokens;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function roles(){
        return $this->belongsToMany(Role::class,'role_user','user_id','role_id');
    }

    public function checkPermissionAccess($permissionCheck){
        //Bước 1: lấy tất cả các quyền của user đang login trong hệ thông
        $roles = Auth::user()->roles;
        foreach ($roles as $role){

            $permissions = $role->permissionRole;
            // bước 2 so sánh giá trị đưa vào của route hiên tại xem có tồn tại trong các quyền ầy hay không ?
            // tiến hành so sánh sử dụng phương thức helper
            if($permissions->contains('key_code',$permissionCheck)){
                return true;
            }
        }
        return false;

    }




}
