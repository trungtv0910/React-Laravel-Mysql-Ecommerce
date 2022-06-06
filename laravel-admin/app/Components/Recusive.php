<?php

namespace App\Components;

class Recusive
{
    private $data;
    private $htmlSelect = '';

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function categoryRecusive($parent_id, $id = 0, $text = '')
    {
        foreach ($this->data as $key => $value) {
            if ($id == $value['parent_id']) {
                if (!empty($parent_id) && $parent_id === $value['id']) {
                    $this->htmlSelect .= '<option selected value="' . $value->id . '">' . $text . $value->name . '</option>';
                } else {
                    $this->htmlSelect .= '<option value="' . $value->id . '">' . $text . $value->name . '</option>';
                }
                $this->categoryRecusive($parent_id, $value['id'], $text . '- ');
            }
        }
        return $this->htmlSelect;
    }

// đệ quy 2 bậc, vì đa phần web đơn giản không cần quá nhiều danh mục con
    public function categoryRecusiveBase($parent_id, $id = 0, $text = '')
    {
        foreach ($this->data as $key => $value) {
            if ($id == $value['parent_id']) {
                if (!empty($parent_id) && $parent_id === $value['id']) {
                    $this->htmlSelect .= '<option selected value="' . $value->id . '">' . $text . $value->name . '</option>';
                } else {
                    $this->htmlSelect .= '<option value="' . $value->id . '">' . $text . $value->name . '</option>';
                }

            }
        }
        return $this->htmlSelect;
    }

//đệ quy theo kiểu input checkbox
    public function categoryRecusiveCheckBox($product, $id = 0, $text = '')
    {
        $this->htmlSelect .= ' <ul > ';
        foreach ($this->data as $key => $value) {

            if ($id == $value['parent_id']) {
//                && $product === $value['id']
                if (!empty($product) ) {

                    $this->htmlSelect .= '
                                <li style="list-style: none">
                                <label class="form-check-label">
                                    <input type="checkbox" class="check_box" name="category_id[]" style="font-size: 16px" value="' . $value->id . '"';

                    $this->htmlSelect .=   $product->contains("id", $value->id)?"checked ": " " ;
                    $this->htmlSelect .= ' >';
                    $this->htmlSelect .=    $value->name . ' <i class="input-helper"></i></label> </li>';
                } else {
                    $this->htmlSelect .= '
                                <li style="list-style: none">
                                <label class="form-check-label">
                                    <input type="checkbox"  class="check_box" name="category_id[]" style="font-size: 16px" value="' . $value->id . '" > ' . $value->name . ' <i class="input-helper"></i></label>
                                </li>
                    ';
                }
                $this->categoryRecusiveCheckBox($product, $value['id'], $text . ' ');
            }

        }
        $this->htmlSelect .= ' </ul>';
        return $this->htmlSelect;
    }


}
