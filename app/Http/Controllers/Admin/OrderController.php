<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = Order::join('nguoidung', 'donhang.id_nguoidung', '=', 'nguoidung.id_nguoidung')->orderBy('created_at', 'desc')->get(['donhang.*', 'nguoidung.hoten']);
        
        return view('admin.orders.list', compact('orders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $orders_detail = OrderDetail::where('id_donhang', $id)
            ->join('sanpham', 'sanpham.id_sp', '=', 'chitietdonhang.id_sp')
            ->get(['chitietdonhang.*', 'sanpham.ten_sp', 'sanpham.giatien', 'sanpham.giakhuyenmai', 'sanpham.thoigianbatdau', 'sanpham.thoigianketthuc']);
        $order = Order::find($id);

        return view('admin.orders.show', compact('orders_detail', 'order'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function fillterOrder2(Request $request)
    {
        $startDate = $request->start_date;
        $endDate = $request->end_date;
        $status = $request->status;
        if ($startDate == null && $endDate == null) {
            if ($status == -1) {
                $order2 = Order::all();
            } else {
                $order2 = Order::where('tinhtrang', $status)
                    ->get();
            }
        } elseif ($startDate != null && $endDate == null) {
            if ($status == -1) {
                $order2 = Order::whereBetween('created_at', [$startDate . ' 00:00:00', date("Y-m-d") . ' 23:59:59'])->get();
            } else {
                $order2 = Order::whereBetween('created_at', [$startDate . ' 00:00:00', date("Y-m-d") . ' 23:59:59'])
                    ->where('tinhtrang', $status)
                    ->get();
            }
        } elseif ($startDate == null && $endDate != null) {
            if ($status == -1) {
                $order2 = Order::whereBetween('created_at', [date("Y-m-d") . ' 00:00:00', $endDate . ' 23:59:59'])->get();
            } else {
                $order2 = Order::whereBetween('created_at', [date("Y-m-d") . ' 00:00:00', $endDate . ' 23:59:59'])
                    ->where('tinhtrang', $status)
                    ->get();
            }
        } elseif ($startDate != null && $endDate != null) {
            if ($status == -1) {
                $order2 = Order::whereBetween('created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59'])->get();
            } else {
                $order2 = Order::whereBetween('created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59'])
                    ->where('tinhtrang', $status)
                    ->get();
            }
        }
        return view('admin.orders.list', compact('order2'));
    }

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
        $order = Order::find($id);
        if ($request->status == 3) {
            $orderDetails = OrderDetail::where('id_donhang', $id)->get();
            foreach ($orderDetails as $orderDetail) {
                $product = Product::find($orderDetail->id_sp);
                Product::where('id_sp', $orderDetail->id_sp)->update(['soluong' => $product->soluong + $orderDetail->soluong]);
                Product::where('id_sp', $orderDetail->id_sp)->update(['soluongban' => $product->soluong - $orderDetail->soluong]);
            }
        }
        $order->tinhtrang = $request->status;
        $order->save();
        return redirect()->route('order.list')->with('success', 'C???p nh???t tr???ng th??i th??nh c??ng.');
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

    public function print($id)
    {
        $order = Order::find($id);
        $orders_detail = OrderDetail::where('id_donhang', $id)
            ->join('sanpham', 'sanpham.id_sp', '=', 'chitietdonhang.id_sp')
            ->get(['chitietdonhang.*', 'sanpham.ten_sp', 'sanpham.giatien', 'sanpham.giakhuyenmai', 'sanpham.thoigianbatdau', 'sanpham.thoigianketthuc']);
        return view('admin.orders.print', compact('order', 'orders_detail'));
    }
}
