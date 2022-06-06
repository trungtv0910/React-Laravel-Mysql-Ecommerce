<?php
namespace App\Traits;

trait DeleteModelTrait{

    public function deleteModelTrait($id,$model){
        try {
            $model->find($id)->delete();
            return response()->json([
                'code'=>200,
                'message'=> 'Delete success'
            ],200);

        }catch (Exception $exception){
            Log::error('Message'. $exception -> getMessage() . 'Line'. $exception->getLine());
            return  response()->json([
                'code'=> 500,
                'message'=>' Delete Error'
            ],500);
        }
    }
}
