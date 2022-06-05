<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Mã đơn hàng2</th>
                        <th>Khách hàng</th>
                        <th>Tổng tiền</th>
                        <th>Mã khuyến mãi</th>
                        <th>Ngày đặt hàng</th>
                        <th>Trạng thái</th>
                        <th>Xu ly</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($order2 as $row)
                    <tr>
                        <td>{{ $row->id_donhang }}</td>
                        <td>{{ \App\Models\User::find($row->id_nguoidung)->hoten }}</td>
                        <td>{{ !is_null($row->id_khuyenmai) ? number_format($row->thanhtien - \App\Models\Voucher::find($row->id_khuyenmai)->giatien,-3,',',',') : number_format($row->thanhtien,-3,',',',') }} VND</td>
                        <td>{{ !is_null($row->id_khuyenmai) ? \App\Models\Voucher::find($row->id_khuyenmai)->makhuyenmai : 'Không có' }}
                        </td>
                        <td>{{ date('d/m/Y H:i:s', strtotime($row->created_at)) }}</td>
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
                        @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>