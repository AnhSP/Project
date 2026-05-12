<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Đăng nhập</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<main>
    <div data-cue="fadeIn" style="background-image: url(/client/img/BG-WAVE.svg); background-position: center; background-size: cover; background-repeat: no-repeat">
        <section class="py-9" data-cue="fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6" data-cue="fadeIn">
                        <div class="shadow-sm bg-white">
                            <ul class="nav nav-pills mb-5 nav-primary d-flex justify-content-center" style="padding-top: 40px;" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a href="#" data-shop-href="basket-summary-login" class="nav-link me-2" id="pillsDayone-tab" data-bs-toggle="pill" data-bs-target="#pillsDayone" role="tab" aria-controls="pillsDayone" aria-selected="true">
                                        Đăng ký
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a href="#" data-shop-href="basket-summary-login" class="nav-link active me-2" id="pillsDaytwo-tab" data-bs-toggle="pill" data-bs-target="#pillsDaytwo" role="tab" aria-controls="pillsDaytwo" aria-selected="false">
                                        Đăng nhập
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane" id="pillsDayone" role="tabpanel" aria-labelledby="pillsDayone-tab" tabindex="0" data-cues="slideInRight">
                                    <div class="card mb-6 border-0 registercardfoucs">
                                        <div class="card-body border-0">
                                            <form class="needs-validation mb-6" id="register-form">
                                                <div class="mb-3">
                                                    <label for="name" class="form-label"><b>Họ và tên</b></label>
                                                    <input type="text" class="form-control" id="name" required>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="email" class="form-label"><b>Email</b></label>
                                                    <input type="email" class="form-control" id="email" required>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="password" class="form-label"><b>Mật khẩu</b></label>
                                                    <div class="password-field position-relative">
                                                        <input type="password" class="form-control fakePassword" id="password" required>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="confirmPassword" class="form-label"><b>Xác nhận mật khẩu</b></label>
                                                    <div class="password-field position-relative">
                                                        <input type="password" class="form-control fakePassword" id="confirmPassword" required>
                                                        <div id="confirm-error" style="color: red; font-size: 14px;"></div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3"></div>
                                                    <div class="col-md-6">
                                                        <div class="d-grid">
                                                            <button class="btn btn-primary" type="submit">Đăng ký</button>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3"></div>
                                                </div>
                                            </form>
                                            <div class="text-center">
                                                <span>Bằng cách đăng ký, bạn đồng ý với Điều khoản dịch vụ và Chính sách bảo mật của chúng tôi</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane show active" id="pillsDaytwo" role="tabpanel" aria-labelledby="pillsDaytwo-tab" tabindex="0" data-cues="slideInRight">
                                    <div class="card mb-6 border-0 registercardfoucs">
                                        <div class="card-body border-0">
                                            <form class="needs-validation mb-6" novalidate="" id="login-form" method="post">
                                                <div class="mb-3">
                                                    <label for="login-email" class="form-label"><b>Email</b></label>
                                                    <input type="email" class="form-control" id="login-email" required>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="login-password" class="form-label"><b>Mật khẩu</b></label>
                                                    <div class="password-field position-relative">
                                                        <input type="password" class="form-control fakePassword" id="login-password" required>
                                                        <div id="password-error" style="color: red; font-size: 14px;"></div>
                                                        <div class="text-end py-2">
                                                            <a href="" class="text-black">Quên mật khẩu</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3"></div>
                                                    <div class="col-md-6">
                                                        <div class="d-grid">
                                                            <button class="btn btn-primary" type="submit">Đăng nhập</button>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3"></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </section>
    </div>
</main>

<script>
    $(document).ready(function() {
        // Xóa sessionStorage khi tải trang
        sessionStorage.clear();

        $('#register-form').submit(function(e) {
            e.preventDefault();
            const password = $('#password').val();
            const confirmPassword = $('#confirmPassword').val();
            const name = $('#name').val();

            if (!name || name.trim().length < 2) {
                Swal.fire({
                    icon: 'error',
                    title: 'Lỗi',
                    text: 'Họ và tên phải có ít nhất 2 ký tự!'
                });
                return;
            }
            if (password !== confirmPassword) {
                $('#confirm-error').text('Mật khẩu xác nhận không khớp!');
                return;
            }

            const data = {
                name: name,
                email: $('#email').val(),
                password: password
            };
            $.ajax({
                url: '/dang-ky',
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: JSON.stringify(data),
                xhrFields: {
                    withCredentials: true
                },
                success: function(response) {
                    let Swal;
                    Swal.fire({
                        icon: 'success',
                        title: 'Thành công',
                        text: response.message || "Đăng ký thành công!",
                        timer: 1500
                    }).then(() => {
                        if (response.success) {
                            sessionStorage.setItem('userEmail', data.email);
                            window.location.href = '/login';
                        }
                    });
                },
                error: function(xhr) {
                    let errorMessage = "Lỗi khi gửi đăng ký!";
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        errorMessage = xhr.responseJSON.message;
                    }
                    Swal.fire({
                        icon: 'error',
                        title: 'Lỗi',
                        text: errorMessage
                    });
                }
            });
        });

        $('#login-form').submit(function(e) {
            e.preventDefault();
            sessionStorage.clear();
            const email = $('#login-email').val();
            const password = $('#login-password').val();

            const data = {
                email: email,
                password: password
            };

            $.ajax({
                url: '/dang-nhap',
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: JSON.stringify(data),
                xhrFields: {
                    withCredentials: true
                },
                success: function(response) {
                    if (response.success) {
                        sessionStorage.setItem('userEmail', email);
                        window.location.href = '/khach-hang/trang-chu';
                    } else {
                        $('#password-error').text(response.message);
                    }
                },
                error: function(xhr) {
                    let errorMessage = 'Lỗi khi đăng nhập!';
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        errorMessage = xhr.responseJSON.message;
                    }
                    $('#password-error').text(errorMessage);
                }
            });
        });
    });
</script>
</body>
</html>