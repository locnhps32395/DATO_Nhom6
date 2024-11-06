<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thái Công Online Store</title>
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Font Awesome for Icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
</head> 
<style>
    .container {
        margin-top: 50px;
        font-size: 0.9rem; /* Giảm kích thước font chữ */
    }

    h2 {
        font-size: 24px; /* Giảm kích thước tiêu đề */
        font-weight: 700;
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: 500;
        font-size: 0.9rem; /* Giảm kích thước label */
    }

    .form-control {
        font-size: 0.9rem; /* Giảm kích thước input */
        padding: 8px; /* Giảm padding cho input */
    }

    .btn-block {
        margin-top: 15px;
        font-size: 0.9rem; /* Giảm kích thước nút */
        padding: 8px; /* Giảm padding cho nút */
    }

    .border-right {
        border-right: 1px solid #ddd; /* Đường phân cách giữa hai phần đăng nhập và đăng ký */
    }

    hr {
        margin: 30px 0;
    }

    @media (max-width: 768px) {
        .border-right {
            border-right: none; /* Bỏ đường phân cách trên màn hình nhỏ */
            margin-bottom: 20px;
        }
    }
</style>
<body>
    <!-- Responsive Navbar -->
    <jsp:include page="menu.jsp"/>


   <!-- Hiển thị thông báo thành công -->
    <c:if test="${not empty message}">
        <div class="alert alert-success">
            <p>${message}</p>
        </div>
    </c:if>

    <div class="container">
        <div class="row">
            <!-- Đăng nhập -->
            <div class="col-md-6 border-right">
                <h2 class="font-weight-bold">ĐĂNG NHẬP</h2>
                <form action="/login" method="post">
                    <div class="form-group">
                        <label for="email">Họ và tên *</label>
                        <input type="type" class="form-control" id="username" name="username" placeholder="Họ và tên">
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu *</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu">
                    </div>
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="remember">
                        <label class="form-check-label" for="remember">Nhớ mật khẩu</label>
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">ĐĂNG NHẬP</button>
                    <a href="#" class="d-block mt-2">Quên mật khẩu? Click vào đây!</a>
                </form>
                <hr>
                <p class="text-center">Hoặc đăng nhập bằng</p>
                <button class="btn btn-primary btn-block"><i class="fab fa-facebook-f"></i> TÀI KHOẢN FACEBOOK</button>
                <button class="btn btn-red btn-block mt-2" style="margin-left: 180px;">TÀI KHOẢN GOOGLE</button>
            </div>

            <!-- Tạo tài khoản -->
       <div class="col-md-6">
    <h2 class="font-weight-bold">TẠO TÀI KHOẢN</h2>
    <form action="${pageContext.request.contextPath}/register" method="post">
        <div class="form-group">
            <label for="name">Họ & Tên *</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Họ & Tên" required>
        </div>
        <div class="form-group">
            <label for="email-register">Email *</label>
            <input type="email" class="form-control" id="email-register" name="email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <label for="password-register">Mật khẩu *</label>
            <input type="password" class="form-control" id="password-register" name="password" placeholder="Mật khẩu" required>
        </div>
        <div class="form-group">
            <label for="confirm-password">Nhập lại mật khẩu *</label>
            <input type="password" class="form-control" id="confirm-password" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
        </div>
        <button type="submit" class="btn btn-dark btn-block">ĐĂNG KÝ</button>
        <a href="#" class="d-block mt-2">Quay về trang chủ</a>
    </form>
</div>

        </div>
    </div>

    <jsp:include page="footer.jsp"/>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
