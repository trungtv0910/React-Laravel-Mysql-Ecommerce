<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
                <div class="profile-image">
                    <img class="img-xs rounded-circle" src="{{asset('images/faces/face8.jpg')}}" alt="profile image">
                    <div class="dot-indicator bg-success"></div>
                </div>
                <div class="text-wrapper">
                    <p class="profile-name">{{ Auth::user()->name }}</p>
                    <p class="designation">Administrator</p>
                </div>
                <div class="icon-container">
                    <i class="icon-bubbles"></i>
                    <div class="dot-indicator bg-danger"></div>
                </div>
            </a>
        </li>
        <li class="nav-item nav-category">
            <span class="nav-link">Dashboard</span>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="index.html">
                <span class="menu-title">Dashboard</span>
                <i class="icon-screen-desktop menu-icon"></i>
            </a>
        </li>
        <li class="nav-item nav-category"><span class="nav-link">Trang</span></li>
        @can('list-category')
            <li class="nav-item">
                <a class="nav-link" href="{{route('category.list')}}">
                    <span class="menu-title">Quản Lý Danh Mục</span>
                    <i class="icon-book-open menu-icon"></i>
                </a>
            </li>
        @endcan
        @can('list-product')
        <li class="nav-item">
            <a class="nav-link" href="{{route('product.list')}}">
                <span class="menu-title">Quản Lý Sản Phẩm</span>
                <i class="icon-book-open menu-icon"></i>
            </a>
        </li>
        @endcan
        @can('list-user')
        <li class="nav-item">
            <a class="nav-link" href="{{route('user.list')}}">
                <span class="menu-title">Quản Lý Tài Khoản</span>
                <i class="icon-book-open menu-icon"></i>
            </a>
        </li>
        @endcan
        @can('list-role')
        <li class="nav-item">
            <a class="nav-link" href="{{route('role.list')}}">
                <span class="menu-title">Quản Lý Phân Quyền</span>
                <i class="icon-book-open menu-icon"></i>
            </a>
        </li>
        @endcan

        <li class="nav-item">
            <a class="nav-link" href="{{route('order.list')}}">
                <span class="menu-title">Quản Lý Đơn Hàng</span>
                <i class="icon-book-open menu-icon"></i>
            </a>
        </li>
        <hr>

    </ul>
</nav>
