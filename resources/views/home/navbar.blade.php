<!-- TOP HEADER -->
<div id="top-header">
    <div class="container">
        <ul class="header-links pull-left">
            <li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
            <li><a href="#"><i class="fa fa-envelope-o"></i> tam@gmail.com</a></li>
            <li><a href="#"><i class="fa fa-map-marker"></i> Hà Nội</a></li>
        </ul>
        <ul class="header-links pull-right">
            <li><a href="#"><i class="fa fa-dong-sign"></i> VND</a></li>
            <li>
                @php
                use App\Models\Account;
                $cookie = Cookie::get('id_customer');
                @endphp
                @if(isset($cookie) && $cookie)
                @php
                $account = Account::find($cookie);
                @endphp
                <a href="{{route('account.home',['type' => 'info'])}}" class="fullname-login" data-id="{{$cookie}}"><i class="fa fa-user-o"></i> {{$account->fullname}}</a>
                <a href="{{route('home.logout')}}" class="small fullname-logout">Đăng xuất</a>
                @else
                <a href="{{route('home.login')}}"><i class="fa fa-user-o"></i> Đăng nhập</a>
                @endif
            </li>
        </ul>
    </div>
</div>
<!-- /TOP HEADER -->

<!-- MAIN HEADER -->
<div id="header">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- LOGO -->
            <div class="col-md-3">
                <div class="header-logo">
                    <a href="{{route('home.dashboard')}}" class="logo">
                        <img src="{{asset('fe/img/logo-home.png')}}" class="w-100" alt="">
                    </a>
                </div>
            </div>
            <!-- /LOGO -->

            <!-- SEARCH BAR -->
            <div class="col-md-6">
                <div class="header-search">
                    <form action="{{route('home.search')}}" method="GET">
                        <input class="input" name="keyword" placeholder="Tìm kiếm">
                        <button type="submit" class="search-btn">Tìm kiếm</button>
                    </form>
                </div>
            </div>
            <!-- /SEARCH BAR -->

            <!-- ACCOUNT -->
            <div class="col-md-3 clearfix">
                <div class="header-ctn">
                    @if(isset($cookie) && $cookie)
                    <!-- Wishlist -->
                    <div>
                        <a href="{{route('account.whitelist')}}" class="dropdown-favourite">
                            <i class="fa fa-heart-o"></i>
                            <span>Yêu thích</span>
                            @if($countWhiteList)
                            <div class="qty qty-whitelist">{{$countWhiteList}}</div>
                            @endif
                        </a>
                    </div>
                    <!-- /Wishlist -->

                    <!-- Cart -->
                    <div class="dropdown">
                        <a class="dropdown-toggle dropdown-cart" data-toggle="dropdown" aria-expanded="true">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Giỏ hàng</span>
                            @if ($count)
                            <div class="qty qty-cart">{{$count}}</div>
                            @endif
                        </a>
                        <div class="cart-dropdown">
                            <div class="cart-list">
                                @if ($count)
                                @php
                                $total = 0;
                                @endphp
                                @foreach ($carts as $cart)
                                @php
                                $subtotal = $cart->price * $cart->quantity;
                                $total += $subtotal;
                                @endphp
                                <div class="product-widget">
                                    <div class="product-img">
                                        <img src="{{asset($cart->image)}}" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-name"><a href="{{route('product.detail',['product'=>$cart->id_product])}}">{{$cart->name}}</a></h3>
                                        <h4 class="product-price d-flex justify-content-between"><span>Số lượng: {{$cart->quantity}}</span>{{number_format($subtotal,0,',','.')}} đ</h4>
                                    </div>
                                    <button class="delete delete-cart" data-id="{{$cart->id_cart}}"><i class="fa fa-close"></i></button>
                                </div>
                                @endforeach
                                @endif
                            </div>
                            @if ($count)
                            <div class="cart-summary">
                                <small class="count-cart">Đã có {{$count}} sản phẩm</small>
                                <h4 class="total-cart">Tổng tiền: {{number_format($total,0,',','.')}} đ</h4>
                            </div>
                            <div class="cart-btns font-lalezar">
                                <a href="{{route('cart.home')}}">Xem giỏ hàng</a>
                            </div>
                            @endif
                        </div>
                    </div>
                    <!-- /Cart -->
                    @endif
                    <!-- Menu Toogle -->
                    <div class="menu-toggle">
                        <a href="#">
                            <i class="fa fa-bars"></i>
                            <span>Danh mục</span>
                        </a>
                    </div>
                    <!-- /Menu Toogle -->
                </div>
            </div>
            <!-- /ACCOUNT -->
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</div>
<!-- /MAIN HEADER -->