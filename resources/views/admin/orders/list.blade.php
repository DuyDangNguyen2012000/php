@extends('admin.layouts.index')


@section('content')
<h1 class="h3 mb-2 text-gray-800">Đơn hàng</h1>

@if(Session::has('invalid'))
<div class="alert alert-danger alert-dismissible">
    <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
    {{Session::get('invalid')}}
</div>
@endif
@if(Session::has('success'))
<div class="alert alert-success alert-dismissible">
    <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
    {{Session::get('success')}}
</div>
@endif
<!-- DataTales Example -->

<form action="{{ route('order.list2') }}" method="GET" enctype="multipart/form-data">
    <div class="col-md-12">
        <div class="form-group">
            <div class="row">
                <div class="col-md-4">
                    <label for="start_date">Ngày bắt đầu: <span class="text-danger">*</span></label>
                    <input type="date" class="form-control" id="start_date" name="start_date">
                </div>
                <div class="col-md-4">
                    <label for="end_date">Ngày kết thúc: <span class="text-danger">*</span></label>
                    <input type="date" class="form-control" id="end_date" name="end_date">
                </div>
                <div class="col-md-3">
                    <label for="status">Trạng thái:</label>
                    <select class="form-control" id="status" name="status">
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
            </div>
        </div>
    </div>
</form>
@if (isset($order2))
    @include('admin.orders.includes.order2')
@endif
@if (isset($orders))
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Mã đơn hàng1</th>
                        <th>Khách hàng</th>
                        <th>Tổng tiền</th>
                        <th>Mã khuyến mãi</th>
                        <th>Ngày đặt hàng</th>
                        <th>Trạng thái</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($orders as $row)
                    <tr>
                        <td>{{ $row->id_donhang }}</td>
                        <td>{{ $row->hoten }}</td>
                        <td>{{ !is_null($row->id_khuyenmai) ? number_format($row->thanhtien - \App\Models\Voucher::find($row->id_khuyenmai)->giatien,-3,',',',') : number_format($row->thanhtien,-3,',',',') }} VND</td>
                        <td>{{ !is_null($row->id_khuyenmai) ? \App\Models\Voucher::find($row->id_khuyenmai)->makhuyenmai : 'Không có' }}</td>
                        <td>{{ $row->created_at }}</td>
                        <td>
                            @if ($row->tinhtrang === 0)
                            {{ 'Chờ xác nhận' }}
                            @elseif ($row->tinhtrang === 1)
                            {{ 'Xác nhận' }}
                            @elseif ($row->tinhtrang === 2)
                            {{ 'Hoàn thành' }}
                            @elseif ($row->tinhtrang === 3)
                            {{ 'Hủy' }}
                            @elseif ($row->tinhtrang === 4)
                            {{ 'Đang giao' }}
                            @elseif ($row->tinhtrang === 5)
                            {{ 'Hoàn' }}
                            @endif
                        </td>
                        <td>
                            <a href="{{ route('order.show',['id' => $row->id_donhang]) }}" class="btn btn-primary btn-circle btn-sm">
                                <i class="fas fa-eye"></i>
                            </a>
                            <a href="{{ route('order.print',['id' => $row->id_donhang]) }}" class="btn btn-warning btn-circle btn-sm" target="_blank">
                                <i class="fas fa-print"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endif
@endsection