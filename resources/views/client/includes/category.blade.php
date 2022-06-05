<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                @foreach ($categories as $category)
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="{{ asset($category->image->first()->url) }}">
                            <h5><a href="{{ route('client.product.category',['category' => $category->id_dmsp]) }}">{{ $category->ten_dmsp }}</a></h5>
                        </div>
                    </div>  
                @endforeach
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->