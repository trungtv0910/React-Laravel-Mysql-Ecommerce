<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductAddRequest extends FormRequest
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
            'name'=>'required|min:6|max:150|unique:products',
            'contents'=>'required',
            'price'=>'required',
            'category_id'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'tên : Sản phẩm không được trống',
            'name.unique'=>'tên : tên sản phẩm đã tồn tại',
            'name.min'=>'tên : phải lớn hơn 6 ký tự',
            'name.max'=>'tên : phải nhỏ hơn max ký tự',
            'contents.required'=>'Nội Dung không được để trống',
            'price.required' => 'Giá sản phẩm không để trống',
            'category_id.required'=> 'Phải chọn danh Mục sản phẩm'
        ];

    }
}
