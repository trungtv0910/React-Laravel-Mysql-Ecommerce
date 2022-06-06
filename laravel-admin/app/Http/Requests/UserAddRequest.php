<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserAddRequest extends FormRequest
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
            'name'=>'required|min:5|unique:users',
            'email'=>'required|min:5|unique:users',
            'password'=>'required|min:6',
            'role_id'=>'required|not_in:0'
        ];

    }

    public function messages()
    {
        return [
            'name.required'=>'tên : user không được trống',
            'name.unique'=>'tên :  user đã tồn tại',
            'name.min'=>'tên : phải lớn hơn 6 ký tự',
            'email.required'=>'Email không được để trống',
            'email.min'=>'Email lớn hơn 6 ký tự',
            'email.unique'=>'Email user đã tồn tại',
            'password.required' => 'Password không để trống',
            'role_id.required'=> 'Phải chọn phân quyền user',
            'role_id.not_in'=> 'Phải chọn phân quyền user'
        ];

    }
}
