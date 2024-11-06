<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title><fmt:message key="title.home" /></title>
</head>

<style>

.navbar {
  position: fixed; /* Đặt thanh điều hướng cố định trên trang */
  top: 0; /* Đặt ở vị trí đầu trang */
  left: 0; /* Đặt sát bên trái trang */
  width: 100%; /* Đảm bảo thanh điều hướng trải rộng toàn bộ chiều rộng của trang */
  background-color: #f3ecec; /* Màu nền (có thể tùy chỉnh theo ý muốn) */
  z-index: 1000; /* Đảm bảo thanh điều hướng luôn nằm trên các phần tử khác */
}

.dropdown {
position: relative; /* Để menu dropdown có thể được định vị chính xác */
}

  /* Phong cách cho menu dropdown */
.dropdown-menu {
display: none; /* Ẩn menu dropdown mặc định */
position: absolute; /* Để menu dropdown có thể được định vị chính xác */
top: 100%; /* Đặt menu dropdown ngay dưới phần tử chứa */

}

.dropdown-menu a {
text-decoration: none; /* Bỏ gạch chân */
}

.dropdown-menu a:hover {
text-decoration: underline; /* Hiệu ứng gạch chân khi hover */
font-weight: bold; /* Hoặc dùng giá trị cụ thể như 700 */
}
/* Hiển thị menu dropdown khi hover */
.dropdown:hover .dropdown-menu {
display: block; /* Hiển thị menu dropdown */
transition-delay: 2s; /* Delay 2 giây trước khi áp dụng các hiệu ứng chuyển tiếp */  
}

/* Tùy chỉnh ảnh và nút bên trong ảnh */
.product-container {
  position: relative;
  overflow: hidden;
  margin-bottom: 20px;
}
/* Hiệu ứng khi hover */
.nav-link:hover::after {
  content: ""; /* Tạo một phần tử giả để làm dấu gạch chân */
  position: absolute;
  bottom: -0.1px; /* Khoảng cách từ chữ đến dấu gạch chân */
  left: 0;
  width: 100%;
  height: 1px; /* Độ dày của dấu gạch chân */
  background-color: currentColor; /* Sử dụng màu chữ hiện tại để dấu gạch chân */
}
/* Nút hiển thị ở giữa ảnh */
.product-container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);

  border: none;
}
/* Hiển thị menu dropdown khi hover */
.nav-item.dropdown:hover .dropdown-menu {
display: block;
margin-top: 0; /* Giảm khoảng cách giữa mục cha và dropdown */
background-color: rgb(224, 221, 221);
}

/* Hiệu ứng khi hover vào các mục trong menu */
.nav-item .dropdown-item:hover {
background-color: #f0f0f0;
color: black;
}
</style>

<body>
    <fmt:setLocale value="${param.lang}" />
    <fmt:setBundle basename="i18n/messages" />

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: black">
        <div class="container-fluid">
            <!-- Logo -->
            <a class="navbar-brand" href="/TrangChu.jsp">
                <h1><fmt:message key="home.title" /></h1>
            </a>
            <!-- Menu items -->
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                <ul class="navbar-nav">
                    <!-- Dropdown cho Sản phẩm -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="/sanpham.jsp" aria-expanded="false">
                            <fmt:message key="nav.sanpham" />
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/donoithat.jsp"><fmt:message key="nav.donoithat" /></a></li>
                            <li><a class="dropdown-item" href="/nenthom.jsp"><fmt:message key="nav.nenthom" /></a></li>
                            <!-- Thêm các mục khác tương tự -->
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#"><fmt:message key="nav.thuonghieu" /></a>
                        <ul class="dropdown-menu" aria-labelledby="brandDropdown">
                            <li><a class="dropdown-item" href="/saintlouis.jsp"><fmt:message key="nav.saintlouis" /></a></li>
                            <li><a class="dropdown-item" href="/ciretrvdon.jsp"><fmt:message key="nav.ciretrvdon" /></a></li>
                            <!-- Thêm các mục khác tương tự -->
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/gioithieu.jsp"><fmt:message key="nav.gioithieu" /></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/lienhe.jsp"><fmt:message key="nav.lienhe" /></a>
                    </li>
                </ul>
            </div>

            <!-- Right-side menu (Login, Cart, Language) -->
            <div class="d-flex">
                <ul class="navbar-nav">
                    <!-- Language options -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-globe"></i> <fmt:message key="nav.language" />
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="languageDropdown">
                            <li><a class="dropdown-item" href="?lang=vi">Việt Nam</a></li>
                            <li><a class="dropdown-item" href="?lang=en">English</a></li>
                        </ul>
                    </li>

                    <!-- Login/Register -->
                    <li class="nav-item">
                        <a class="nav-link" href="/login"><fmt:message key="nav.dangnhap.dangky" /></a>
                    </li>

                    <!-- Cart -->
                    <li class="nav-item">
                        <a class="nav-link" href="/giohang.jsp"><fmt:message key="nav.giohang" /></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
