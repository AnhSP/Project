<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar Start -->

<header>
    <nav class="navbar navbar-expand-lg transparent navbar-transparent navbar-light">
        <div class="container mainlogo px-3">
            <a class="navbar-brand" href="/">
                <!-- <img src="/client/img/Home page/iz_hosts-logo.png" alt="IZ Hosts Logo"> -->
                <p>HostingHong</p>
            </a>
            <button class="navbar-toggler offcanvas-nav-btn" type="button">
                <i class="bi bi-list"></i>
            </button>
            <div class="offcanvas offcanvas-start offcanvas-nav" style="width: 20rem;">
                <div class="offcanvas-header">
                    <a href="/" class="text-inverse">
                        <p>HostingHong</p>
                        <!-- <img src="/client/img/Home page/iz_hosts-logo.png" alt="IZ Hosts Logo"> -->
                    </a>

                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body pt-0 align-items-center">
                    <ul class="navbar-nav mx-auto align-items-lg-center">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/vps">Cloud VPS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/hosting">Hosting</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/domain">Tên miền</a>
                        </li>
                    </ul>
                    <div class="mt-3 mt-lg-0 d-flex align-items-center">
                        <!--<a href="./register.html" data-shop-href="basket-summary-login" class="btn  mx-2">Get Started</a> -->
                        <a href="/login" data-shop-href="basket-summary-login"  class="btn signbtn px-5">Đăng nhập</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

<!-- Navbar End -->