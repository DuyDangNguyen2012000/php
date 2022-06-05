@if ($products->count() > 0)
    @foreach ($products as $product)
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="{{ asset($product->image->first()->url) }}">
                    @if (!Auth::guard('admin')->check())
                        <ul class="product__item__pic__hover">
                            <li><a href="javascript:void(0)" onclick="addToCart({{ $product->id_sp }});"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    @endif
                </div>
                <div class="latest-product__item__text">
                    <h6><a style="color:black;" href="{{ route('client.product.detail', ['id' => $product->id_sp]) }}">{{ $product->ten_sp }}</a></h6>
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
        {!! $products->links() !!}
    </div>
@else
    <div class="col-lg-4 col-md-6 col-sm-6">
        Không có sản phẩm nào
    </div>
@endif