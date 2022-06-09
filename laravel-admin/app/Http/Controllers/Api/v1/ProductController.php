<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\SessionUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    // Check như thế này rất dễ bị lộ token nên phải dùng đến JsonWebToken (JWT) -- oath---
    // lưu token thì người ta lưu ở cookei hoặc lưu ở storage xong rồi đưa lên header requset
    public function index(Request $request)
    {
        return response()->json(['xin chào']);
        die();
        // get token from header
        $token = $request->header('token');
        $checkTokenIsValid = SessionUser::where('token', $token)->first();
        if (empty($token)) {
            return response()->json([
                'code' => '401',
                'message' => 'Token not send to server',
            ], 401);
        } else if (!$checkTokenIsValid) {
            return response()->json([
                'code' => '401',
                'message' => 'Token is not access',
            ], 401);
        }else{
            $product = Product::all();
            return response()->json([
                'code' => '200',
                'message' => 'OK',
                'data'=>$product
            ], 200);
        }


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
