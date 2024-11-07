@extends('home')
@section('content')
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="{{route('home.dashboard')}}">Trang chủ</a></li>
                    <li class="active">Sản phẩm yêu thích</li>
                </ul>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>

<div class="section">
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- STORE -->
            <div id="store" class="col-md-12">
                <div class="row">
                    @if ($arrWhitelist)
                    @foreach ($arrWhitelist as $product)
                    @php
                    $priceAfter = intval($product['price']) - (intval($product['price']) * intval($product['discount']) / 100);
                    @endphp
                    <div class="col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img">
                                <img src="{{asset($product->image)}}" width="262" height="262" class="object-fit-cover" alt="">
                                <div class="product-label">
                                    @if ($product->discount)
                                    <span class="sale">-{{$product->discount}}%</span>
                                    @endif
                                    <span class="new">Mới</span>
                                </div>
                            </div>
                            <div class="product-body font-lalezar">
                                <h3 class="product-name h-80px"><a href="{{route('product.detail',['product' => $product->id_product])}}">{{$product->name}}</a></h3>
                                <h4 class="product-price">{{number_format($priceAfter,0,',','.')}} đ
                                    @if ($product->discount)
                                    <del class="product-old-price">{{number_format($product->price,0,",",".")}} đ</del>
                                    @endif
                                </h4>
                                <div class="product-btns">
                                    <button class="add-to-wishlist add-favourite" data-id="{{$product->id_product}}"><i class="fa fa-heart-o"></i><span class="tooltipp">Bỏ yêu thích</span></button>
                                    <button class="quick-view" data-id="{{$product->id_product}}"><i class="fa fa-eye"></i><span class="tooltipp">Xem chi tiết</span></button>
                                </div>
                            </div>
                            <div class="add-to-cart">
                                <button class="add-to-cart-btn add-this-product" data-id="{{$product->id_product}}"><i class="fa fa-shopping-cart"></i>Thêm giỏ hàng</button>

                            </div>
                        </div>
                    </div>
                    @endforeach
                    @else
                    <h2 class="text-center">Hiện không có sản phẩm yêu thích</h2>
                    @endif
                </div>
                <!-- /store products -->
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
@endsection