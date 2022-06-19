<?php

namespace App\Http\Controllers\Api\v2;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Product::all();
        return response()->json([
            'status' => 200,
            'message' => 'Get data success',
            'data' => $data
        ], 200);
    }

    public function allProductsWithCate()
    {
        $dataProducts = Product::all();
        $dataCategoies = Category::all();

        $dataNew = [];
        foreach ($dataCategoies as $key => $itemCate) {

            if ($itemCate->category_query_product) {
                $dataNew[] = $itemCate;
            }
        }

        return response()->json([
            'status' => 200,
            'message' => 'Get data success',
            'data' => $dataNew
        ], 200);
    }

    //    -------------------------------------------------
    public function getProductsListByCate(Request $request)
    {
        if ($request->id) {
            $cateId = $request->id;
            $dataCate = Category::find($cateId);
            $data =  $dataCate->category_query_product;
            return response()->json([
                'status' => 200,
                'message' => 'Get product by category success',
                'data' => $data
            ], 200);;
        }
        return response()->json([], 500);
    }







    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'name' => 'required',
        //     'price'=>'required',
        //     'content' => 'required',

        // ]);

        return Product::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Product::find($id);
        if ($data) {
            return response()->json([
                'status' => 200,
                'message' => 'Get data product Success',
                'data' => $data
            ], 200);
        } else {
            return response()->json([
                'status' => 400,
                'message' => 'Get data product Error form Server',
            ], 400);
        }
        // return Product::find($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $product->update($request->all());
        return $product;
    }



    public function relatedProduct($id)
    {
        $data = Product::find($id);
        if (!$data) {
            return response()->json([
                'status' => 400,
                'message' => 'Get data product Error form Server',
            ], 400);
        } else {
            $data = $data->select_cate;
            // Tại vì 1 sản phẩm có thể có nhiều danh mục;
            $dataRelated = [];
            foreach ($data as $value) {
                foreach ($value->category_query_product as $valueItem) {
                    $dataRelated[] = $valueItem;
                };
            }
            return response()->json([
                'status' => 200,
                'message' => 'Get data related product success',
                'data' => $dataRelated
            ], 200);
        }
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Product::destroy($id);
    }

    /**
     * Search for a name
     *
     * @param str $name
     * @return \Illuminate\Http\Response
     */
    public function search($name)
    {
        if ($name) {
            $data =  Product::where('name', 'like', '%' . $name . '%')->get();
            return response()->json([
                'status' => 200,
                'message' => 'Get data success',
                'data' => $data
            ], 200);
        }
        return response()->json([], 500);
    }
}
