@extends('admin.layout.admin')
@section('title')
    <title>{{!empty($dataPages)? $dataPages['titlePageHeader']:'Admin'}}</title>
@endsection
@section('css')



@endsection
@section('js')
    <script src="{{asset('js/sweetAlert2.js')}}"></script>
    <script src="{{asset('js/deleteAjax.js')}}"></script>
    <script src="{{asset('js/customerCheckbox.js')}}"></script>
@endsection
@section('content')
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">{{!empty($dataPages)? $dataPages['titlePageHeader']:'null'}}</h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active"
                        aria-current="page">{{!empty($dataPages)? $dataPages['page']:'null'}}</li>
                </ol>
            </nav>

            @if(!empty($dataPages['page_curd']))
                @can('add-product')
                <a href="{{route('product.add')}}"
                   class="btn btn-primary purchase-button btn-sm my-1 my-sm-0 ml-auto">{{$dataPages['page_curd']}}</a>
                @endcan
            @else
                <a href="{{ url()->previous() }}" class="btn btn-success purchase-button btn-sm my-1 my-sm-0 ml-auto">Quay
                    Lại</a>
            @endif
        </div>
        <div class="row">
            <div class="col-12">
                @if (session('error'))
                    <div class="alert alert-danger" role="alert">
                        {{ session('error') }}
                    </div>
                @endif

                @if (session('success'))
                    <div class="alert alert-success" role="alert">
                        {{session('success')}}
                    </div>
                @endif
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="d-sm-flex align-items-center mb-4">

                            {{--                            <a href="#" class="text-dark ml-auto mb-3 mb-sm-0"> </a>--}}
                            <div class="warapper_do_action   mb-sm-0">
                                <select name="" id="select_action" class="">
                                    <option value="0">Hành động</option>
                                    <option value="delete">Xoá</option>

                                </select>
                                <input type="submit" id="do_action" class="btn  btn-dark action" disabled
                                       value="Áp Dụng">
                            </div>
                            <h4 class="card-title ml-auto mb-sm-0">Danh sách</h4>
                        </div>
                        <div class="table-responsive border rounded p-1">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width:20px;" class="font-weight-bold">
                                        <input type="checkbox" class="checkbox_all">
                                    </th>
                                    <th style="width:100px;" class="font-weight-bold">hình ảnh</th>
                                    <th style="width:30%;" class="font-weight-bold">Tên</th>
                                    <th style="width:100px;" class="font-weight-bold">Mã Sản Phẩm</th>

                                    <th style="width:100px;" class="font-weight-bold">Giá</th>
                                    <th style="width:60px;" class="font-weight-bold">Danh Mục</th>
                                    <th style="width:100px;" class="font-weight-bold">Ngày Tạo</th>
                                    <th style="width:100px;" class="font-weight-bold">Status </th>
                                    <th style="width:200px;" class="font-weight-bold">Options</th>

                                </tr>
                                </thead>
                                <tbody class="list_render">
                                @if(!empty($data_list) && count($data_list)>0)
                                    @foreach($data_list as $key => $prodItem)
                                        <tr>
                                            <td><input type="checkbox" name="checkbox_id[]" class="checkbox_childrent">
                                            </td>
                                            <td >
                                                <img src="{{ asset($prodItem->feature_image_path) }}" alt="">

                                            </td>
                                            {{--                                        <td>{{$prodItem['name']}}</td>--}}
                                            <td>{!!$prodItem->name!!}</td>
                                            <td>{{$prodItem->id}}</td>

                                            <td>{{number_format($prodItem->price,0,',','.')}}đ</td>

                                            <td>

                                                @foreach($prodItem->select_cate as $cate)
                                                    {!!  '<div>'. $cate->name. ', ' .'<div>' !!}
                                                @endforeach
                                            </td>

                                            <td>{{$prodItem->created_at}}</td>
                                            <td>
                                                {!!($prodItem->status)==1?"<i class='fa-solid fa-check'></i>":"<i class='fa-solid fa-ban'></i>"!!}
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary btn-sm ">
                                                    <i class=" icon-eye "></i>
                                                </button>
                                                @can('edit-product')
                                                <a href="{{route('product.edit',['id'=>$prodItem['id']])}}" data-url=""
                                                   class="btn btn-dark btn-sm">
                                                    <i class=" icon-pencil "></i>
                                                </a>
                                                @endcan
                                                @can('delete-product')

                                                <a href="{{route('product.delete',['id'=>$prodItem['id']])}}"
                                                   data-url="{{route('product.delete',['id'=>$prodItem['id']])}}"
                                                   type="button" class="btn btn-danger btn-sm btn-action-delete">
                                                    <i class=" icon-trash"></i>
                                                </a>
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                                <tfoot>
                                {{--                                <tr>--}}
                                {{--                                    <td colspan="3">--}}

                                {{--                                    </td>--}}
                                {{--                                    <td>--}}

                                {{--                                    </td>--}}
                                {{--                                </tr>--}}
                                </tfoot>
                            </table>
                        </div>
                        <div class="d-flex mt-4 flex-wrap">

                            <nav class="ml-auto">
                                @if(!empty($data_list) && count($data_list)>0)
                                    {{ $data_list->links() }}
                                @endif
                            </nav>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
