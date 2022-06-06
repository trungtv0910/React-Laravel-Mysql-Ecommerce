<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Requests\CategoryAddRequest;
use Illuminate\Support\Str;
use App\Components\Recusive;
use App\Http\Requests\CategoryEditRequest;
use Illuminate\Support\Facades\DB;
use App\Traits\DeleteModelTrait;

class CategoryController extends Controller
{

    use DeleteModelTrait;
    public $category;
    public function __construct(Category $category)
    {
        $this->category = $category;
    }
    function getCategory($parent_id){
        $data=$this->category->all();
        $recusive = new Recusive($data);
//        return $recusive->categoryRecusive($parent_id);
        return $recusive->categoryRecusiveBase($parent_id);


    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataPages =[
          'titlePageHeader'=>  'Quản Lý Danh Mục',
            'page'=>'Danh Mục',
            'page_curd'=>'Thêm Danh Mục Mới'
        ];
        $dataCatGetDb = $this->category->all();
        $data = array();
        $count=1;
        foreach ($dataCatGetDb as $key => $value){

            if($value->parent_id==0){
                $data[]=[
                    'index'=> '<h6>'.$count++.'</h6>',
                    'id'=>$value->id,
                    'name'=>'<h6>'.$value->name.'</h6>',
                    'parent_id'=>$value->parent_id
                ];
                $countChild=1;
                foreach ($dataCatGetDb as $keyChild =>$valueChild){
                    if($value->id == $valueChild->parent_id){
                        $data[]=
                        [   'index'=>'&emsp;'.$countChild++,
                            'id'=>$valueChild->id,
                            'name'=> '&emsp;- '.$valueChild->name,
                            'parent_id'=>$valueChild->parent_id
                        ];
                    }
                }

            }

        }

        $categories = $data;
//        $categories = $this->category->latest()->paginate(10);
// LÀM PHÂN TRANG




       return view('admin.category.list')->with(compact('dataPages','categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $dataPages = [
        'titlePageHeader'=>'Thêm Danh Mục',
        'page'=>'Thêm danh mục'
        ];

        $htmlOption = $this->getCategory($parent_id='');

        return view('admin.category.add')->with(compact('dataPages','htmlOption'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryAddRequest $request)
    {
    $this->category->create([
       'name'=>$request->name,
       'parent_id'=>$request->parent_id,
        'slug'=>Str::slug($request->name,'-')
    ]);

    return redirect(route('category.list'))->with('success', 'Thêm thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataPages = [
            'titlePageHeader'=>'Sửa Danh Mục',
            'page'=>'Sửa danh mục'
        ];
        $categoryOld = $this->category->find($id);

        $htmlOption = $this->getCategory($categoryOld->parent_id);

        return view('admin.category.edit')->with(compact('dataPages','htmlOption','categoryOld'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryEditRequest $request, $id)
    {

        DB::beginTransaction();

        try {
            $this->category->find($id)->update([
                'name'=> $request->name,
                'parent_id'=>$request->parent_id,
                'slug'=>Str::slug($request->name)
            ]);


            DB::commit();
            return  redirect()->route('category.list')->with('success', 'Cập Nhập Thành Công');
        } catch (\Exception $e) {
            DB::rollback();
            // something went wrong
            return  redirect()->route('category.list')->with('error', 'Cập Nhập Thất Bại');
        }




    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
     return   $this->deleteModelTrait($id,$this->category);
    }
}
