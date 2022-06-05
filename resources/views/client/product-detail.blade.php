@extends('client.layouts.template')

@section('css')
    <link rel="stylesheet" href="{{ asset('client/css/comment.css') }}">
@stop

@section('main')
<style>
    .list-inline-rating {
        display: flex;
    }
</style>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="{{  asset('client/img/breadcrumb.jpg') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>{{ $product->ten_sp }}</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <section class="slider" style="display: inline-block; width: 100%">
                    <div class="flexslider">
                        <ul class="slides">
                            @foreach ($product->image as $item)
                                <li data-setbg="{{ asset($item->url) }}">
                                    <img src="{{ asset($item->url) }}"/>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </section>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>{{ $product->ten_sp }}</h3>
                    {{-- <ul class="list-inline-rating">
                        @for ($count = 1;$count <= 5;$count++)
                            @php
                                if ($count <= $rating) {
                                    $color = 'color:#ffcc00;';
                                } else {
                                    $color = 'color:#ccc;';
                                }
                            @endphp
                            <li id="{{ $product->id_sp }}-{{ $count }}"
                                data-index="{{ $count }}"
                                data-product_id="{{ $product->id_sp }}"
                                data-rating="{{ $rating }}"
                                class="rating"
                                style="cursor:pointer;{{ $color }}font-size:30px">&#9733;</li>
                        @endfor
                    </ul> --}}
                    <div class="product__details__price">{{ number_format((strtotime(date('Y-m-d')) < strtotime($product->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($product->thoigianketthuc)) ? $product->giatien : $product->giakhuyenmai,-3,',',',') }} VND
                        @if (!(strtotime(date('Y-m-d')) < strtotime($product->thoigianbatdau) || strtotime(date('Y-m-d')) > strtotime($product->thoigianketthuc)))
                            <small class="text-secondary"><del>{{ number_format($product->giatien,-3,',',',') }} VND</del></small>
                        @endif
                    </div>
                    @if (!Auth::guard('admin')->check())
                        <a href="javascript:void(0)" onclick="addToCart({{ $product->id_sp }});" class="primary-btn">THÊM GIỎ HÀNG</a>
                    @endif
                    <ul>
                        <li><b>Danh mục</b> <span>{{ $product->cate_title }}</span></li>
                        <li><b>Nhà cung cấp</b> <span>{{ $product->supplier_title }}</span></li>
                        <li><b>Trạng thái</b> <span>{{ $product->soluong > 0 ? 'Còn hàng' : 'Hết hàng' }}</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active">Mô tả sản phẩm</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <p>{!! $product->mota !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->
<!-- Start comment-sec Area -->
<section class="comment-sec-area pt-80 pb-80">
    <div class="container">
        <div class="row flex-column">
        <h5 class="text-uppercase pb-80">{{ $comments->count() }} bình luận</h5>
        <br />
        <div class="comment">
            @foreach ($comments as $comment)
                <div class="comment-list comment-container">
                <div class="single-comment justify-content-between d-flex">
                    <div class="user justify-content-between d-flex">
                    <div class="thumb">
                        <img src="{{ asset('client/img/people.png') }}" alt="Avatar" width="50px">
                    </div>
                    <div class="desc mb-4">
                        <h5><a href="javascript:void(0)">{{ $comment->hoten }}</a></h5>
                        <p class="date">{{ date('d/m/Y H:i:s', strtotime($comment->created_at)) }}</p>
                        <p class="comment">
                        {{ $comment->noidung }}
                        </p>
                        @if (Auth::check() || Auth::guard('admin')->check())
                        <a class="text-primary reply" cid="{{ $comment->id }}" name_a="{{ Auth::check() ? Auth::user()->hoten : Auth::guard('admin')->user()->hoten }}" token="{{ csrf_token() }}">Phản hồi</a>
                        <div class="row flex-row d-flex reply-form"></div>
                        @endif
                    <!-- show reply -->
                    @foreach ($replies as $reply)
                        @if ($reply->id_binhluan === $comment->id)
                        <div class="comment-list left-padding">
                            <div class="single-comment justify-content-between d-flex mt-4 mb-4" >
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                <img src="{{ asset('client/img/people.png') }}" alt="Avatar" width="50px"/>
                                </div>
                                <div class="desc">
                                <h5><a href="javascript:void(0)">{{ $reply->nguoiphanhoi }}</a></h5>
                                <p class="date">{{ date('d/m/Y H:i:s', strtotime($reply->created_at)) }}</p>
                                <p class="comment">
                                    {{ $reply->noidung }}
                                </p>
                                @if (Auth::check() || Auth::guard('admin')->check())
                                    <a class="text-primary reply-to-reply" rid="{{ $reply->id_binhluan }}" rname="{{ Auth::check() ? Auth::user()->hoten : Auth::guard('admin')->user()->hoten }}" token="{{ csrf_token() }}">Phản hồi</a>
                                    <div class="row flex-row d-flex reply-to-reply-form"></div>
                                @endif
                                </div>
                            </div>
                            </div>
                        </div>
                        @endif
                    @endforeach
                    <!-- end reply -->
                    </div>
                </div>
                </div>
            @endforeach
        </div>
        </div>
    </div>
</section>
<!-- End comment-sec Area -->

<!-- Start commentform Area -->
@if (Auth::check())
    <section class="commentform-area pb-120 pt-80 mb-100">
        <div class="container">
            <h5 class="text-uppercas pb-50">Bình luận</h5>
            <div class="row flex-row d-flex">
                <div class="col-lg-12">
                    <form action="{{ route('add.comment') }}" method="POST">
                        @csrf
                        <input type="hidden" name="user_id" value="{{ Auth::user()->id_nguoidung }}" />
                        <input type="hidden" name="product_id" value="{{ $product->id_sp }}" />
                        <textarea
                        class="form-control mb-10"
                        name="message"
                        cols="5"
                        rows="4"
                        placeholder="Nhập bình luận"
                        required
                        ></textarea>
                        <button type="submit" class="primary-btn mt-20" href="#">Bình luận</button>
                    </form>
                </div>
            </div>
        </div>
    </section> 
@endif
<!-- End commentform Area -->
<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Sản phẩm liên quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach ($products as $product)
                <div class="col-lg-3 col-md-4 col-sm-6">
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
        </div>
    </div>
</section>
<!-- Related Product Section End -->
@stop