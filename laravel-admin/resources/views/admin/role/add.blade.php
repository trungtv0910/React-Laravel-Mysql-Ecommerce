@extends('admin.layout.admin')
@section('title')
    <title>{{!empty($dataPages)? $dataPages['titlePageHeader']:'Admin'}}</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('css/select2.min.css')}}">

@endsection
@section('js')
    <script src="{{asset('js/select2.min.js')}}"></script>
    <script src="{{asset('js/roleCheckbox.js')}}"></script>
    <script src="{{asset('ckeditor/ckeditor.js')}}"></script>

@endsection
@section('content')
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">{{!empty($dataPages)? $dataPages['titlePageHeader']:'Thêm'}}</h3>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active"
                        aria-current="page">{{!empty($dataPages)? $dataPages['page']:'null'}}</li>
                </ol>
            </nav>

            @if(!empty($dataPages['page_curd']))
                <a href="{{route('category.add')}}"
                   class="btn btn-primary purchase-button btn-sm my-1 my-sm-0 ml-auto">{{$dataPages['page_curd']}}</a>
            @else
                <a href="{{ url()->previous() }}" class="btn btn-success purchase-button btn-sm my-1 my-sm-0 ml-auto">Quay
                    Lại</a>
            @endif
        </div>
        <div class="row">
            @if ($errors->any())
                <div class="col-12">
                    <div class="alert alert-danger" role="alert">
                        Thêm Không Thành Công
                    </div>
                </div>

            @endif
        </div>
        <form class="forms-sample" method="POST" action="{{route('role.store')}}">
            <div class="row">
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">

                            @csrf
                            <div class="form-group">
                                <label for="catName">Tên Phân Quyền</label>
                                <input type="text" name="name"
                                       class="form-control @error('name') is-invalid @enderror"
                                       value="{{old('name')}}"
                                       id="" placeholder="Nhập Tên Phân Quyền">
                                @error('name')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="catName">Mô Tả</label>
                                <input type="text" name="display_name"
                                       class="form-control @error('display_name') is-invalid @enderror"
                                       value="{{old('display_name')}}"
                                       id="" placeholder="Mô Tả Phân Quyền">
                                @error('display_name')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                            </div>



                        </div>
                    </div>
                </div>
            </div>
            {{--            row--}}
            <div class="row">
                <div class="col-12 grid-margin ">

                    <label for="_checkAll">
                        <input type="checkbox" id="_checkAll" class=" checkboxAllPermission"> Chọn Tất Cả Các Quyền
                    </label>
                    @foreach($permissions_parent as $key => $permission)
                        <div class="card mt-3">
                            <div class="card-header">
                                <label for="_checkGroup{{$key}}">
                                    <input type="checkbox" id="_checkGroup{{$key}}"  class="checkGroupPermission"> {{$permission->name}}
                                </label>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    @foreach($permission->handleGetPermissionChild  as $keyChild=> $perChild)
                                    <div class="col-md-3">
                                        <label for="_checkChild{{$key.$keyChild}}"><input type="checkbox" id="_checkChild{{$key.$keyChild}}" class="checkbox_children" name="permission_id[]" value="{{$perChild->id}}"> {{$perChild->name}}</label>
                                    </div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="col-12">

                    <button type="submit" class="btn btn-primary mr-2">Thêm Tài Khoản</button>

                </div>
            </div>
        </form>
    </div>
@endsection
