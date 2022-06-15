<?php

namespace App\Http\Controllers\Api\v2;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function addtocart(Request $request)
    {

        if (auth('sanctum')->check() === true) {
            $user = auth('sanctum')->user();
            $user_id = auth('sanctum')->user()->id;

            $product_id = $request->product['id'];

            $product_qty = $request->quantity;

            $productCheck = Product::where('id', $product_id)->first();
            if ($productCheck) {
                /*
                check cart if(Cart::where('product_id',$product_id)->where('user_id')->exists())
                        return 409 mes ,'Already added to cart

                        else{
                            thêm mới vào cart
                        }
                */
                return response()->json([
                    'status' => 200,
                    'message' => "cart add to product success",
                    'data' => $productCheck,
                    'user' => $user,
                ], 200);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => "product not found",
                    'user_404' => $user
                ], 404);
            }
        } else {
            return response()->json([
                'status' => 401,
                'message' => "You dont login! Login to buy product",
            ]);
        }
    }
}
