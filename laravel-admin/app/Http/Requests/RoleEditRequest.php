<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RoleEditRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required|min:3|unique:roles,name,'.$this->id,
            'display_name'=>'required|min:3'
        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'không được để trống',
            'name.min'=>'tên vai trò không ít hơn 3 ký tự',
            'name.unique'=>'tên vai trò đã tồn tại',

            'display_name.required'=>'không để trông mô tả vai trò',
            'display_name.min'=>'mô tả không ít hơn 3 ký tự',

        ];
    }
}
