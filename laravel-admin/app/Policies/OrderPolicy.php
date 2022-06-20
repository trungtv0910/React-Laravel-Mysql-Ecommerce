<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class OrderPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }


    public function view(User $user)
    {

        return $user->checkPermissionAccess(config('permissions.access.list-order'));
        //phương thức checkPermissionAccess được tạo ra trong Model User
//        config permission list-category được tạo ra trong config
    }

    public function edit(User $user)
    {

        return $user->checkPermissionAccess(config('permissions.access.edit-order'));
        //phương thức checkPermissionAccess được tạo ra trong Model User
//        config permission list-category được tạo ra trong config
    }

    public function delete(User $user)
    {

        return $user->checkPermissionAccess(config('permissions.access.delete-order'));
        //phương thức checkPermissionAccess được tạo ra trong Model User
//        config permission list-category được tạo ra trong config
    }
}
