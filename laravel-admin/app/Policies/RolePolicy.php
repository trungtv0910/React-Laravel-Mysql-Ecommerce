<?php

namespace App\Policies;

use App\Models\User;

use Illuminate\Auth\Access\HandlesAuthorization;

class RolePolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\user  $model
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user)
    {
        return $user->checkPermissionAccess(config('permissions.access.list-role'));

    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->checkPermissionAccess(config('permissions.access.add-role'));
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\user  $model
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, user $model)
    {
        //
    }

    public function edit(User $user)
    {
        return $user->checkPermissionAccess(config('permissions.access.edit-role'));
    }
    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\user  $model
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user)
    {
        return $user->checkPermissionAccess(config('permissions.access.delete-role'));
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\user  $model
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, user $model)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\user  $model
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, user $model)
    {
        //
    }
}
