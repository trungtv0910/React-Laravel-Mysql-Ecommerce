<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login','register']]);
    }
//LOGIN WITH DIS

//    public function login(Request $request)
//    {
//        if (!Auth::attempt($request->only('email', 'password'))) {
//            return response([
//                'message' => 'Invalid credentials!'
//            ], 400);
//        }
//
//        $user = Auth::user();
//
//        $token = $user->createToken('token')->plainTextToken;
//
//
//
//        $cookie = cookie('jwt', $token, 60 * 24); // 1 day
//
//        return response([
//            'message' => $token
//        ])->withCookie($cookie);
//    }





// END LOGIN


    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email'=>'required|email',
            'password'=>'required|string|min:6'
        ]);
        if($validator->fails()){
            return response()->json($validator->errors(),400);
        }
        $token_validity = 24* 60;
        $this->guard()->factory()->setTTL($token_validity);
        if (! $token = $this->guard()->attempt($validator->validate())) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    }
/*
 * REGISTER
 *
 */
    public function register(Request  $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name'     => 'required|string|between:2,100',
                'email'    => 'required|email|unique:users',
                'password' => 'required|confirmed|min:6',
            ]
        );
        if ($validator->fails()) {
            return response()->json(
                [$validator->errors()],
                422
            );
        }
        $user = User::create(
            array_merge(
                $validator->validated(),
                ['password' => bcrypt($request->password)]
            )
        );

        return response()->json(['message' => 'User created successfully', 'user' => $user],200);



    }





    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }
    public function profile()
    {
        return response()->json($this->guard()->user());

    }//end profile()

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        $this->guard()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken($this->guard()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'token' => $token,
            'token_type' => 'bearer',
            'token_validity' => ($this->guard()->factory()->getTTL() * 60)
        ]);
    }
    protected function guard()
    {
        return Auth::guard();

    }//end guard()



}
