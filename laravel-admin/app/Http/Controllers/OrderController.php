<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Order_detail;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    private $order;
    private $order_detail ;
    public function __construct(Order $order,Order_detail $order_detail)
    {
        $this->order = $order;
        $this->order_detail= $order_detail;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataPages =[
            'titlePageHeader'=>  'Quản Lý Đơn Hàng',
            'page'=>'Đơn Hàng',
            'page_curd'=>'Thêm Đơn Hàng Mới'
        ];
        $data_list = $this->order->latest()->paginate(10);

        return view('admin.order.list')->with(compact('dataPages','data_list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function detail($id)
    {
        $dataPages =[
            'titlePageHeader'=>  'Chi Tiết Đơn Hàng',
            'page'=>'Đơn Hàng',
        ];
        $data_list = Order_detail::where('order_id',$id)->get();
        $codeOrder =$id;

        return view('admin.order.detail')->with(compact('dataPages','data_list','codeOrder'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
