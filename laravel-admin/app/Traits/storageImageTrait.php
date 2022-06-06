<?php

namespace App\Traits;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
trait storageImageTrait
{
    public function storageTraitUpload($request,$filedName,$foderName){
        if($request->hasFile($filedName)){
            $file = $request->file($filedName);
            $fileNameOrigin  =$file->getClientOriginalName();
            $fileNameHash = Str::random('20').'.'.$file->getClientOriginalExtension();
            $path = $request->file($filedName)->storeAs('public/'.$foderName,$fileNameHash);

            $dataUploadTrait =[
                'file_name'=> $fileNameOrigin,
                'file_path'=> Storage::url($path)
            ];
            return $dataUploadTrait;

        }
        return null;
    }

    public function storageTraitUploadMutiple($file,$foderName){
            $fileNameOrigin  =$file->getClientOriginalName();
            $fileNameHash = Str::random('20').'.'.$file->getClientOriginalExtension();
            $path = $file->storeAs('public/'.$foderName,$fileNameHash);
            $dataUploadTrait =[
                'file_name'=> $fileNameOrigin,
                'file_path'=> Storage::url($path)
            ];
            return $dataUploadTrait;


    }


}
