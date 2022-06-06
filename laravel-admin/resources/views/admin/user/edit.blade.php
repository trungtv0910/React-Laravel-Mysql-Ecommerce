@extends('admin.layout.admin')
@section('title')
    <title>{{!empty($dataPages)? $dataPages['titlePageHeader']:'Admin'}}</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('css/select2.min.css')}}">

@endsection
@section('js')
    <script src="{{asset('js/select2.min.js')}}"></script>


    <script src="{{asset('ckeditor/ckeditor.js')}}"></script>
    <script>
        $(document).ready(function() {
            $('#role_select').select2();
        });
    </script>
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
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        @if(!empty($dataUser))
                        <form class="forms-sample" method="POST" action="{{route('user.update',['id'=>$dataUser->id])}}">
                            @csrf
                            <div class="form-group">
                                <label for="catName">Tên Tài Khoản</label>
                                <input type="text" name="name"
                                       class="form-control @error('name') is-invalid @enderror"
                                       value="{{$dataUser->name}}"
                                       id="" placeholder="Nhập Tên Tài Khoản">
                                @error('name')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="catName">Tên Email</label>
                                <input type="text" name="email"
                                       class="form-control @error('email') is-invalid @enderror"
                                       value="{{$dataUser->email}}"
                                       id="catName" placeholder="Nhập Email">
                                @error('email')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                            </div>



                            <div class="form-group">
                                <label >Vai Trò</label>
                                <select id="role_select" class="form-control @error('role_id') is-invalid @enderror"  name="role_id[]" multiple="multiple">
                                    <option value="0" >Chọn Danh Vai Trò</option>
                                    {!!$htmlOption!!}
                                </select>
                                @error('role_id')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                            </div>
                            <button type="submit" class="btn btn-primary mr-2">Cập Nhập Tài Khoản</button>
                            <button class="btn btn-light">Huỷ</button>
                        </form>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
