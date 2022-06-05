@extends('client.layouts.template')

@section('main')

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="{{  asset('client/img/breadcrumb.jpg') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Kết quả tìm kiếm</h2>
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
                <div class="row">
                    @foreach ($products as $product)
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="{{  asset($product->image->first()->url) }}">
                                    @if (!Auth::guard('admin')->check())
                                        <ul class="product__item__pic__hover">
                                            <li><a href="javascript:void(0)" onclick="addToCart({{ $product->id_sp }});"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    @endif
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="{{ route('client.product.detail', ['id' => $product->id_sp]) }}">{{ $product->ten_sp }}</a></h6>
                                    @if (strtotime(date('Y-m-d')) < strtotime($product->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($product->thoigianketthuc))
                                        <h5>{{ number_format($product->giatien,-3,',',',') }} VND</h5>
                                    @else
                                        <h5 class="text-danger">{{ number_format($product->giakhuyenmai,-3,',',',') }} VND</h5>
                                        <small class="text-secondary"><del>{{ number_format($product->giatien,-3,',',',') }} VND</del></small>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
                    <div class="col-lg-12 col-md-12 col-sm-12">
                         {{ $products->appends(request()->except('page'))->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
@stop
