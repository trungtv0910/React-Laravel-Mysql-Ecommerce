<?php
namespace App\Services;


use App\Policies\CategoryPolicy;
use Illuminate\Support\Facades\Gate;
use App\Policies\ProductPolicy;
use App\Policies\UserPolicy;
use App\Policies\RolePolicy;
use App\Policies\OrderPolicy;

class PermissionGateAndPolicyAccess  {
    public function setGateAndPolicyAccess(){
        $this->defineGateCategory();
        $this->defineGateProduct();
        $this->defineGateUser();
        $this->defineGateRole();
        $this->defineGateOrder();
    }
    public function defineGateCategory(){
        Gate::define('list-category', [CategoryPolicy::class, 'view']);
        Gate::define('add-category', [CategoryPolicy::class, 'create']);
        Gate::define('edit-category',[CategoryPolicy::class, 'edit']);
        Gate::define('delete-category',[CategoryPolicy::class, 'delete']);
    }
    public function defineGateProduct(){
        Gate::define('list-product', [ProductPolicy::class, 'view']);
        Gate::define('add-product', [ProductPolicy::class, 'create']);
        Gate::define('edit-product',[ProductPolicy::class, 'edit']);
        Gate::define('delete-product',[ProductPolicy::class, 'delete']);
    }
    public function defineGateUser(){

        Gate::define('list-user', [UserPolicy::class, 'view']);
        Gate::define('add-user', [UserPolicy::class, 'create']);
        Gate::define('edit-user',[UserPolicy::class, 'edit']);
        Gate::define('delete-user',[UserPolicy::class, 'delete']);
    }

    public function defineGateRole(){

        Gate::define('list-role', [RolePolicy::class, 'view']);
        Gate::define('add-role', [RolePolicy::class, 'create']);
        Gate::define('edit-role',[RolePolicy::class, 'edit']);
        Gate::define('delete-role',[RolePolicy::class, 'delete']);
    }
    public function defineGateOrder(){

        Gate::define('list-order', [OrderPolicy::class, 'view']);
        Gate::define('delete-order',[OrderPolicy::class, 'delete']);
        Gate::define('edit-order',[OrderPolicy::class, 'edit']);
    }

}
