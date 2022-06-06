<?php
namespace App\Components;
use App\Models\Role;

class RoleRecusive {
    private $htmlSelect = '';
    public function roleRecusive($roleOfEdit=''){
        $roles = Role::all();

        foreach ($roles as $role){
            if(!empty($roleOfEdit) && $roleOfEdit->contains('id',$role->id)){
                $this->htmlSelect .= '<option selected value="'.$role->id.'">'. $role->name .'</option> ';
            }else{
                $this->htmlSelect .= '<option value="'.$role->id.'">'. $role->name .'</option> ';
            }
        }


        return $this->htmlSelect;
    }
}
