<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Exception;
use function Sodium\compare;
use App\Components\RoleRecusive;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\UserAddRequest;
use App\Traits\DeleteModelTrait;


class UserController extends Controller
{
    use DeleteModelTrait;
    private $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataPages = [
            'titlePageHeader' => 'Quản Lý Tài Khoản',
            'page' => 'Tài Khoản',
            'page_curd' => 'Thêm Tài Khoản'
        ];
        $data_list = $this->user->latest()->paginate(10);

        return view('admin.user.list')->with(compact('dataPages', 'data_list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $dataPages = [
            'titlePageHeader' => 'Thêm Tài Khoản',
            'page' => 'Thêm Tài Khoản',

        ];
        $roleRecusive = new RoleRecusive();
        $htmlOption = $roleRecusive->roleRecusive();


        return view('admin.user.add')->with(compact('dataPages', 'htmlOption'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserAddRequest $request)
    {
        DB::beginTransaction();
        try {
            $dataNewUser = [
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'is_admin' => 1
            ];
            $userInsert = $this->user->create($dataNewUser);

            if ($userInsert) {
                $userInsert->roles()->attach($request->role_id);
                DB::commit();
            }

            return redirect()->route('user.list')->with('success', 'Thêm user thành công');
        } catch (\Exception $e) {
            DB::rollback();
        }

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
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataPages = [
            'titlePageHeader' => 'Sửa Tài Khoản',
            'page' => 'Sửa Tài Khoản',

        ];
        $dataUser = $this->user->find($id);
        $roleRecusive = new RoleRecusive();
        if ($dataUser) {
            $htmlOption = $roleRecusive->roleRecusive($dataUser->roles);
            return view('admin.user.edit')->with(compact('dataPages', 'htmlOption', 'dataUser'));
        }
        return abort(403);


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
        DB::beginTransaction();
        try {
            $dataUpdateUser = [
                'name' => $request->name,
                'email' => $request->email
            ];
            $userUpdate = $this->user->find($id)->update($dataUpdateUser);

            if ($userUpdate) {
                $this->user->find($id)->roles()->sync($request->role_id);
                DB::commit();
            }

            return redirect()->route('user.list')->with('success', 'Cập nhập thành công');
        } catch (\Exception $e) {
            DB::rollback();
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
        return $this->deleteModelTrait($id,$this->user);
    }
}
