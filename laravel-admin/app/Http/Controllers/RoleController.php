<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Traits\DeleteModelTrait;
use App\Http\Requests\RoleAddRequest;
use App\Http\Requests\RoleEditRequest;

class RoleController extends Controller
{
    use DeleteModelTrait;
    private $role;
    private $permission;
    public function __construct(Role $role, Permission $permission)
    {
        $this->role =$role;
        $this->permission=$permission;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataPages = [
            'titlePageHeader' => 'Quản Lý Phân Quyền',
            'page' => 'Phân Quyền',
            'page_curd' => 'Thêm Phân Quyền'
        ];
        $data = $this->role;
        if($data){
            $data_list =$data->latest()->paginate(10);
        }else{
            $data_list= [];
        }

        return view('admin.role.list')->with(compact('dataPages','data_list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $dataPages = [
            'titlePageHeader' => 'Thêm Phân Quyền',
            'page' => 'Thêm Phân Quyền',
        ];
        $permissions_parent = $this->permission->where('parent_id',0)->get();

        return view('admin.role.add')->with(compact('dataPages','permissions_parent'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RoleAddRequest $request)
    {
        DB::beginTransaction();
        try {
            $dataNewRole = [
                'name'=>$request->name,
                'display_name'=>$request->display_name
            ];
            $dataCreateRole = $this->role->create($dataNewRole);
            $dataPermission = $request->permission_id;
            if($dataCreateRole && $dataPermission){
                $dataCreateRole->permissionRole()->attach($dataPermission);
            }
            DB::commit();
            return redirect()->route('role.list')->with('success', 'Thêm phân quyền thành công');
        } catch (\Exception $e) {
            DB::rollback();

        }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\role  $role
     * @return \Illuminate\Http\Response
     */
    public function show(role $role)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataPages = [
            'titlePageHeader' => 'Sửa Phân Quyền',
            'page' => 'Sửa Phân Quyền',
        ];
        $permissions_parent = $this->permission->where('parent_id',0)->get();
        $dataRole = $this->role->find($id);
        $roleOfPermission= $dataRole->permissionRole;
        return view('admin.role.edit')->with(compact('dataPages','permissions_parent','dataRole','roleOfPermission'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\role  $role
     * @return \Illuminate\Http\Response
     */
    public function update(RoleEditRequest $request, $id)
    {
        DB::beginTransaction();
        try {
            $dataNewRole = [
                'name'=>$request->name,
                'display_name'=>$request->display_name
            ];
            $dataUpdateRole = $this->role->find($id)->update($dataNewRole);
            $dataPermission = $request->permission_id;
            if($dataUpdateRole==true && $dataPermission){
                $this->role->find($id)->permissionRole()->sync($dataPermission);
            }
            DB::commit();
            return redirect()->route('role.list')->with('success', 'Cập nhập phân quyền thành công');
        } catch (\Exception $e) {
            DB::rollback();

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return $this->deleteModelTrait($id,$this->role);
    }
}
