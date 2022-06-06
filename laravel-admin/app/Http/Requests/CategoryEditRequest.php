<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryEditRequest extends FormRequest
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
            'name'=>'bail| min:6 | max :255|required|unique:categories,name,'.$this->id,
            'parent_id'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'tên : Danh mục bắt buộc phải nhập',
            'name.unique'=>'tên : tên danh mục đã tồn tại',
            'name.min'=>'tên : phải lớn hơn 6 ký tự',
            'name.max'=>'tên : phải nhỏ hơn max ký tự',
            'parent_id.required'=>'Danh mục Gốc không được trống'
        ];

    }
}
