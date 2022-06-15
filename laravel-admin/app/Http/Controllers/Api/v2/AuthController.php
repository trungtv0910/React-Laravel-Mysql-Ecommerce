<?php

namespace App\Http\Controllers\Api\v2;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

//use Symfony\Component\HttpFoundation\Response;


class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name'     => 'required|string|between:2,100',
                'email'    => 'required|email|unique:users',
                'password' => 'required|min:6',
            ]
        );
        // 'password' => 'required|confirmed|min:6',
        if ($validator->fails()) {
            return response()->json(
                [$validator->errors()],
                422
            );
        }

        $user = User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password'))
        ]);
        $token = $user->createToken($user->email . '_token')->plainTextToken;
        $dataUser = [
            "name" => $request->input('name'),
            "email" => $request->input('email')
        ];
        return response()->json([
            'status' => 200,
            'user' => $dataUser,
            'token' => $token,
            'message' => 'Registered Successfully'

        ], 200);
    }

    public function login(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6'
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        } else {
            $user = User::Where('email', $request->email)->first();
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response([
                    'status' => 401,
                    'message' => 'Invalid Credentials, SAI!'
                ], 401);
            } else {
                $token = $user->createToken($user->email . '_token')->plainTextToken;
                return response()->json([
                    'status' => 200,
                    'user' => $user,
                    'token' => $token,
                    'message' => 'Logged In Successfully',
                ], 200);
            }
        }

        //--------------------------------------------------------------------------------

        // if (!Auth::attempt($request->only('email', 'password'))) {
        //     return response([
        //         'message' => 'Invalid credentials!'
        //     ], Response::HTTP_UNAUTHORIZED);
        // }
        /*
        check email
        $user  = User::where('email'.$fields['email'])->first();
        check password
        if(!user || ! Hash::check($field['password'],$user->password)){
            return response([
                'message'=>'Bad creds'
            ],401);
        }
        */
        // $user = Auth::user();

        // $token = $user->createToken('token')->plainTextToken;

        // $cookie = cookie('jwt', $token, 60 * 24); // 1 day

        // return response([
        //     'status' => 200,
        //     'user' => $user,
        //     'token' => $token
        // ], 200)->withCookie($cookie);
        //------------------------------------------------------
        // return response([
        //     'status' => 200,
        //     'user' => $user,
        //     'token' => $token
        // ], 200);
    }



    public function user()
    {
        return Auth::user();
    }

    public function logout(Request $request)
    {
        // Auth::user()->tokens()->delete();
        // $cookie = Cookie::forget('jwt');
        // $request->user()->currentAccessToken()->delete();
        // auth()->user()->tokens()->delete();
        // return response([
        //     'status' => 200,
        //     'message' => 'Success',
        //     'user' => Auth::user(),
        //     'token' => null,
        // ], 200)->withCookie($cookie);
        auth()->user()->tokens()->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Login Success',
            'user' => 'cxxc',
        ], 200);
    }
}
