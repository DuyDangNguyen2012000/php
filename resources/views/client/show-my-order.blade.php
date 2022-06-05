@extends('client.layouts.template')

@section('main')

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="{{  asset('client/img/breadcrumb.jpg') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Mã đơn hàng: {{ $id }}</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                @if ($orderBig->tinhtrang === 0)
                {{ 'Chờ xác nhận' }}
                @elseif ($orderBig->tinhtrang === 1)
                {{ 'Xác nhận' }}
                @elseif ($orderBig->tinhtrang === 2)
                {{ 'Hoàn thành' }}
                @elseif ($orderBig->tinhtrang === 3)
                {{ 'Hủy' }}
                @elseif ($orderBig->tinhtrang === 4)
                {{ 'Đang giao' }}
                @elseif ($orderBig->tinhtrang === 5)
                {{ 'Hoàn' }}
                @endif
                @if ( ($orderBig->tinhtrang === 1)|| ($orderBig->tinhtrang === 4))
                <form style="margin-bottom: 1rem;" method="POST" action="{{ route('order.cancel', ['id' => $orderBig->id_donhang]) }}">
                    @csrf
                    <select name="status" class="status" style="padding:0.4rem 0;outline:none;">
                        @if ($orderBig->tinhtrang === 1)
                        <option value="3" selected>Hủy</option>
                        @elseif ($orderBig->tinhtrang === 4)
                        <option value="2" selected>Hoàn thành</option>
                        <option value="5">Hoàn</option>
                        @endif
                    </select>
                    <button type="submit" class="btn btn-primary" name="submit">Hủy đơn hàng</button>
                </form>
                @endif
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Đơn giá</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $count = 1;
                        @endphp
                        @foreach ($orders as $order)
                        <tr>
                            <td>{{ $count }}</td>
                            <td>{{ $order->ten_sp }}</td>
                            <td>{{ $order->soluong }}</td>
                            <td>{{ number_format((strtotime(date('Y-m-d')) < strtotime($order->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($order->thoigianketthuc)) ? $order->giatien : $order->giakhuyenmai,-3,',',',') }} VND</td>
                            <td>{{ number_format((strtotime(date('Y-m-d')) < strtotime($order->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($order->thoigianketthuc)) ? $order->giatien * $order->soluong : $order->giakhuyenmai * $order->soluong,-3,',',',') }} VND</td>
                        </tr>
                        @php
                        $count++;
                        @endphp
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
@stop