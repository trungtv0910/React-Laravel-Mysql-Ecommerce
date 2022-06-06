@extends('admin.layout.admin')
@section('title')
    <title>{{!empty($dataPages)? $dataPages['titlePageHeader']:'Admin'}}</title>
@endsection
@section('css')

@endsection
@section('js')

@endsection
@section('content')
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">{{!empty($dataPages)? $dataPages['titlePageHeader']:'Thêm'}}</h3>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{!empty($dataPages)? $dataPages['page']:'null'}}</li>
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
                        <form class="forms-sample" method="POST" action="{{route('category.update',['id'=>$categoryOld->id])}}">
                            @csrf
                            <div class="form-group">
                                <label for="catName">Tên Dạnh Mục</label>
                                <input type="text" name="name"
                                       class="form-control @error('name') is-invalid @enderror"
                                       value="{{$categoryOld->name}}"
                                       id="catName" placeholder="Nhập Tên Danh Mục">
                                @error('name')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror

                            </div>

                            <div class="form-group">
                                <label for="exampleSelectGender">Danh Mục Cha</label>
                                <select class="form-control @error('parent_id') is-invalid @enderror" id="exampleSelectGender" name="parent_id">
                                    <option value="0">Chọn Danh Mục Cha</option>
                                    {!!$htmlOption!!}
                                </select>
                                @error('parent_id')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                            </div>
                            <button type="submit" class="btn btn-primary mr-2">Cập Nhập</button>
                            <button class="btn btn-light">Huỷ</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
