@extends('admin.layouts.index')

@section('content')
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Thống kê</h1>
<div class="wrap-dash">
    <div class="row">
        <div class="col-md-6 ">
            <div class="card z-index-2  ">
                <div class="dash-one">
                    <div class="bg-gradient-success shadow-success border-radius-lg py-4 pe-1">
                        <div class="chart">
                            @foreach ($order1 as $item)

                            <div class="col-canvas" style="height: {{(($item->sum)/($sum2[0] ->sum))*100 + 30}}%;">
                                <p>{{($item->sum)/ 1000}}K</p><span>{{$item->month}}</span>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-sm ">Số tiền thu được theo tháng ( Tháng nào có thu nhập mới hiện, các đơn giao thành công )</p>
                </div>
            </div>
        </div>
    </div>
</div>

<form action="{{ route('filter.money') }}" method="GET" enctype="multipart/form-data">
    <h2 class=" py-4">Tính số tiền theo ngày - trạng thái :</h2>
    <div class="col-md-12">
        <div class="form-group">
            <div class="row">
                <div class="col-md-3">
                    <label for="start_date">Ngày bắt đầu: </label>
                    <input type="date" class="form-control" id="start_date" name="start_date">
                </div>
                <div class="col-md-3">
                    <label for="end_date">Ngày kết thúc: </label>
                    <input type="date" class="form-control" id="end_date" name="end_date">
                </div>
                <div class="col-md-2">
                    <label>Trạng thái đơn hàng:</label>
                    <select class="form-control" name="trangthai" id="trangthai">
                        <option value="0">Chờ xác nhận</option>
                        <option value="1">Xác nhận</option>
                        <option value="2">Hoàn thành</option>
                        <option value="3">Hủy đơn hàng</option>
                        <option value="4">Đang giao</option>
                        <option value="5">Hoàn</option>
                    </select>
                </div>
                <div class="col-md-1">
                    <div class="div-btn">
                        <button type="submit" class="btn btn-primary">Lọc</button>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="div-btn">
                        @if (isset($money))
                        Tổng tiền thu được: {{ number_format($money,-3,',',',') }} VND
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

@endsection