<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\SessionUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        if(!$request->email || !$request->password){
            return response()->json([
                'code'=>'400',
                'message'=>'Missing Parameter',

            ],
                400);
        }else{
            // Bước 1 xác thực user có trong databse hay chưa
            $email =$request->email;
            $password=$request->password;
            if(Auth::attempt(['email'=>$email,'password'=>$password])){
                // Tạo Token nhưng trước khi tạo mới phải check token đã tồn tại trong 30 ngày hay chưa?

//                check token
                $checkTokenExit = SessionUser::where('user_id',Auth::id())->first();
                if(empty($checkTokenExit)){
                    $userSession = SessionUser::create([
                        'token'=> Str::random(40),
                        'refresh_token'=> Str::random(40),
                        'token_expried'=> date('Y-m-d H:i:s', strtotime('+30 day')),
                        'refresh_token_expried'=> date('Y-m-d H:i:s', strtotime('+360 day')),
                        'user_id'=>Auth::id()
                    ]);
                }else{
                    $userSession = $checkTokenExit;
                }

                if($userSession){
                    return response()->json([
                        'code'=>'200',
                        'message'=>'Login Success',
                        'data'=>$userSession,
                        'data_user'=>Auth::user()
                    ],
                        200);
                }else{
                    return response()->json([
                        'code'=>'500',
                        'message'=>'Internall Server Error'
                    ],
                        500);
                }

            }else{
                return response()->json([
                    'code'=>'401',
                    'message'=>'User name Not Found'
                ],
                    401);
            }
// Bước 2 Thêm token

        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
