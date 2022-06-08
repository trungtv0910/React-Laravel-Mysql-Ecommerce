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
        $(document).ready(function () {
            $(".tags").select2({
                tags: true,
                tokenSeparators: [',']
            })

            $(".handle_categories").select2({
                tags: true,
                tokenSeparators: [',']
            })
        });


    </script>

    <script>
        // Replace the <textarea id="editor1"> with a CKEditor 4
        // instance, using default configuration.
        CKEDITOR.replace('editor1');
        CKEDITOR.replace('desShort');
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
        <form class="forms-sample" method="POST" action="{{route('product.store')}}"  enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-9 grid-margin ">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="catName">Tên sản phẩm</label>
                                <input type="text" name="name"
                                       class="form-control @error('name') is-invalid @enderror"
                                       value="{{old('name')}}"
                                       id="catName" placeholder="Nhập tên sản phẩm">
                                @error('name')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror

                            </div>
                        </div>
                    </div>
                    <br>
                    {{--                    nội dung chi tiết sản phẩm--}}
                    <div class="card">
                        <div class="card-header">
                            Nội dung sản phẩm
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <textarea name="contents" id="editor1" rows="10" cols="80" @error('contents') is-invalid @enderror">
                                    {{old('contents')}}
                                </textarea>

                                @error('contents')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror

                            </div>
                        </div>
                    </div>
                    <br>
                    {{--                    thông tin sản phẩm--}}
                    <div class="card">
                        <div class="card-header">
                            Thông tin sản phẩm
                        </div>
                        <div class="card-body">

                            <div class="form-group row">
                                <div class="col">

                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Giá Gốc</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="price" @error('price') is-invalid @enderror">
                                            @error('price')
                                            <span style="color: red;font-style: italic"> {{$message}}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Giảm Giá</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="discount">
                                        </div>
                                    </div>
{{--                                    end form group--}}
                                </div>
                                <div class="col">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Trọng lượng</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Kích Thước</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Màu Sắc</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    {{--                    mô tả năngns--}}
                    <div class="card">
                        <div class="card-header">
                            Mô tả ngắn của sản phẩm
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <textarea name="desc" id="desShort" rows="10" cols="80"></textarea>

                            </div>
                        </div>
                    </div>


                </div>
                {{--                col 9--}}
                <div class="col-3  ">

                    {{--Chọn danh mục--}}
                    <div class="card">
                        <div class="card-header">
                            Danh mục sản phẩm
                        </div>
                        <div class="card-body">
                            <div class="form-group overflow-auto ">
                                @error('category_id')
                                <span style="color: red;font-style: italic"> {{$message}}</span>
                                @enderror
                                <label for="exampleSelectGender">Tất cả danh mục</label>

                                {!!$htmlOption!!}


                            </div>


                        </div>
                    </div>
                    <br>
                    {{--Đăng --}}
                    <div class="card">
                        <div class="card-header">
                            Đăng
                        </div>
                        <div class="card-body">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" checked value="1" name="status"> Công khai
                                    <i class="input-helper"></i></label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" value="0" name="status"> Chờ duyệt <i
                                        class="input-helper"></i></label>
                            </div>

                            <p class="card-text"> Trạng Thái: <b>Đăng ngay lập tức</b></p>
                            <div class="form-group row">
                                <div class="col">
                                    <button type="submit" class="btn btn-primary mr-2">Đăng</button>
                                    <button class="btn btn-light">Huỷ</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>
                    {{--chọn file ảnh--}}
                    <div class="card">
                        <div class="card-header">
                            Ảnh Thumbnail
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Tải lên ảnh Thumbnail</label>
                                <input type="file" name="img" class="form-control-file form-control-sm">


                            </div>
                        </div>
                    </div>
                    <br>
                    {{--chọn file ảnh chi tiết--}}
                    <div class="card">
                        <div class="card-header">
                            Album hình ảnh sản phẩm
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Tải lên nhiều hình ảnh</label>
                                <input type="file" name="album_img[]" class="form-control-file form-control-sm" multiple>

                            </div>
                        </div>
                    </div>
                    {{--tag sản phẩm--}}
                    <br>
                    <div class="card">
                        <div class="card-header">
                            Thẻ tag sản phẩm
                        </div>
                        <div class="card-body">

                            <div class="form-group ">
                                <label>Thêm thẻ tag</label>
                                <select class="form-control tags" multiple="multiple" name="tags[]">

                                </select>
                            </div>
                        </div>
                    </div>


                </div>
                {{--                col 3--}}
            </div>
        </form>
    </div>
@endsection
