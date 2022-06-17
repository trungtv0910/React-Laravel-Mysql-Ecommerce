<?php

namespace App\Http\Controllers\Api\v2;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function store(Request $request)
    {
        if (auth('sanctum')->check() === true) {
            DB::beginTransaction();
            try {
                $order = Order::create([
                    'price' => $request->total,
                    'status' => 1,
                    'user_id' => $request->user['id']
                ]);
                if ($order) {
                    foreach ($request->products as $item) {
                        $order->OrderDetail()->create([
                            'product_id' => $item['id'],
                            'quantity' => $item['quantity'],
                            'price' => $item['price'],
                            'attributes' => "Color:" . $item['color'] . " Size:" . $item['size']
                        ]);
                    }
                }

                DB::commit();
                // all good
                return response()->json([
                    'status' => 200,
                    'message' => "Order add to database success",
                    'id' => $order->id
                ], 200);
            } catch (\Exception $e) {
                DB::rollback();
                // something went wrong
                return response()->json([
                    'status' => 500,
                    'message' => "Server not Connect Error"
                ], 500);
            }
        } else {
            return response()->json([
                'status' => 401,
                'message' => "Authen is not compare"
            ], 401);
        }
    }
}
