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
        return response()->json([
            'status' => 200,
            'username' => $request->input('name'),
            'email' => $request->input('email'),
            'token' => $token,
            'message' => 'Registered Successfully'

        ], 200);
    }

    public function login(Request $request)
    {
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response([
                'message' => 'Invalid credentials!'
            ], Response::HTTP_UNAUTHORIZED);
        }

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


        $user = Auth::user();

        $token = $user->createToken('token')->plainTextToken;

        $cookie = cookie('jwt', $token, 60 * 24); // 1 day

        return response([
            'user' => $user,
            'token' => $token
        ])->withCookie($cookie);
    }



    public function user()
    {
        return Auth::user();
    }

    public function logout()
    {
        // Auth::user()->tokens()->delete();
        $cookie = Cookie::forget('jwt');

        return response([
            'message' => 'Success'
        ])->withCookie($cookie);
    }
}
