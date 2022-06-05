<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\OrderExport;
use App\Models\Product;
use Illuminate\Support\Facades\DB as FacadesDB;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = Order::all();
        $order1 = FacadesDB::table('donhang')
            ->select(FacadesDB::raw('month(donhang.created_at) as month, sum(donhang.thanhtien) as sum'))
            ->where('tinhtrang', 2)
            ->groupBy('month')
            ->get();
        $sum2 = FacadesDB::table('donhang')
            ->select(FacadesDB::raw('sum(donhang.thanhtien) as sum'))
            ->where('tinhtrang', 2)
            ->get();


        return view('admin.dashboard.index', compact(['order1', 'sum2']));
    }

    public function fillterMonney(Request $request)
    {
        $orders = Order::all();
        $startDate = $request->start_date;
        $endDate = $request->end_date;
        $trangthai = $request->trangthai;
        $money = 0;
        
        $orders = Order::all();
        $order1 = FacadesDB::table('donhang')
            ->select(FacadesDB::raw('month(donhang.created_at) as month, sum(donhang.thanhtien) as sum'))
            ->where('tinhtrang', 2)
            ->groupBy('month')
            ->get();
        $sum2 = FacadesDB::table('donhang')
            ->select(FacadesDB::raw('sum(donhang.thanhtien) as sum'))
            ->where('tinhtrang', 2)
            ->get();

        if ($startDate == null && $endDate == null) {
            $order = Order::where('tinhtrang', $trangthai)->get();
            foreach ($order as  $value) {
                $money = $money + $value->thanhtien;
            }
        } elseif ($startDate != null && $endDate == null) {
            $order = Order::whereBetween('created_at', [$startDate . ' 00:00:00', date("Y-m-d") . ' 23:59:59'])
                ->where('tinhtrang', $trangthai)
                ->get();
            foreach ($order as  $value) {
                $money = $money + $value->thanhtien;
            }
        } elseif ($startDate == null && $endDate != null) {
            $order = Order::whereBetween('created_at', [date("Y-m-d") . ' 00:00:00', $endDate . ' 23:59:59'])
                ->where('tinhtrang', $trangthai)
                ->get();
            foreach ($order as  $value) {
                $money = $money + $value->thanhtien;
            }
        } elseif ($startDate != null && $endDate != null) {
            $order = Order::whereBetween('created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59'])
                ->where('tinhtrang', $trangthai)
                ->get();
            foreach ($order as  $value) {
                $money = $money + $value->thanhtien;
            }
        }

        return view('admin.dashboard.index', compact(['order1', 'sum2','money']));
    }

    public function exportExcel()
    {
        $url = url()->previous();
        $url_components = parse_url($url);
        parse_str($url_components['query'], $params);
        return Excel::download(new OrderExport($params), 'orders.xlsx');
    }
}
