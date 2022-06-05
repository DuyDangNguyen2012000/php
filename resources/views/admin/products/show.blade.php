@extends('admin.layouts.index')


@section('content')
<h1 class="h3 mb-2 text-gray-800">Chi tiết sản phẩm</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" width="100%" cellspacing="0">
                <tr>
                    <th>Ảnh sản phẩm</th>
                    <td>
                        <div class="row">
                            @foreach($product->image as $item)
                                <div class="col-md-4">
                                    <img src="{{ asset($item->url) }}" width="200" height="200">
                                </div>
                            @endforeach
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>Loại sản phẩm</th>
                    <td>{{ $product->loai_sp == 0 ? 'Sản phẩm thường' : 'Sản phẩm khuyến mãi' }}</td>
                </tr>
                <tr>
                    <th>Tên sản phẩm</th>
                    <td>{{ $product->ten_sp }}</td>
                </tr>
                <tr>
                    <th>Giá tiền</th>
                    <td>
                        @php
                            if ($product->giatien != 0) {
                                echo number_format($product->giatien,-3,',',',') . ' VND';
                            } else {
                                echo 'N/A';
                            }
                        @endphp
                    </td>
                </tr>
                <tr>
                    <th>Giá khuyến mãi</th>
                    <td>
                        @php
                            if ($product->giakhuyenmai != 0 && $product->loai_sp == 1) {
                                echo number_format($product->giakhuyenmai,-3,',',',') . ' VND';
                            } else {
                                echo 'N/A';
                            }
                        @endphp
                    </td>
                </tr>
                <tr>
                    <th>Thời gian bắt đầu</th>
                    <td>
                        @php
                            if (!is_null($product->thoigianbatdau) && $product->loai_sp == 1) {
                                echo date('d/m/Y', strtotime($product->thoigianbatdau));
                            } else {
                                echo 'N/A';
                            }
                        @endphp
                    </td>
                </tr>
                <tr>
                    <th>Thời gian kết thúc</th>
                    <td>
                        @php
                            if (!is_null($product->thoigianketthuc) && $product->loai_sp == 1) {
                                echo date('d/m/Y', strtotime($product->thoigianketthuc));
                            } else {
                                echo 'N/A';
                            }
                        @endphp
                    </td>
                </tr>
                <tr>
                    <th>Mô tả sản phẩm</th>
                    <td>{!! $product->mota ?? 'Không có' !!}</td>
                </tr>
                <tr>
                    <th>Danh mục sản phẩm</th>
                    <td>{{ \App\Models\Category::find($product->id_dmsp)->ten_dmsp }}</td>
                </tr>
                <tr>
                    <th>Số lượng</th>
                    <td>{{ $product->soluong }}</td>
                </tr>
                <tr>
                    <th>Trạng thái</th>
                    <td>{{ $product->tinhtrang == 1 ? 'Hiện' : 'Ẩn' }}</td>
                </tr>
            </table>
        </div>
    </div>
</div>
@endsection