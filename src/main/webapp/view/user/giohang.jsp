<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thái Công Online Store - Giỏ hàng</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>

<style>
    body {
        background-color: #f5f5f5;
    }
    .cart-title {
        text-align: center;
        margin-top: 40px;
        font-size: 36px;
        font-weight: bold;
    }
    .cart-summary {
        text-align: center;
        margin-bottom: 30px;
    }
    .cart-item {
        border-bottom: 1px solid #ddd;
        padding: 20px 0;
    }
    .cart-item img {
        width: 100px;
    }
    .product-name {
        font-weight: bold;
    }
    .total-price {
        text-align: right;
        font-size: 24px;
        font-weight: bold;
    }
    .btn-custom {
        padding: 10px 20px;
    }
    .btn-custom:hover {
        background-color: rgb(121, 127, 131);
    }
    .btn-update {
        background-color: black;
        color: white;
    }
    .btn-checkout {
        background-color: red;
        color: white;
    }
</style>

<body>
    <!-- Responsive Navbar -->
    <jsp:include page="menu.jsp"/>

  <div class="container" style="margin-top: 80px">
    <h1 class="cart-title">GIỎ HÀNG CỦA BẠN</h1>


   <c:forEach var="product" items="${products}">
    <div class="row cart-item align-items-center">
        <div class="col-md-2">
            <img src="../view/img/${product.images}" alt="${product.name}" />
        </div>
        <div class="col-md-4">
            <div class="brand">Thương hiệu: ${product.brand}</div>
            <h1 class="product-name">${product.name}</h1>
            <p>Đơn giá: ${product.price}₫</p>
        </div>
        <div class="col-md-2">
            <input type="number" class="form-control" value="${cartItems[product.productId]}" disabled>
        </div>
        <div class="col-md-2 text-end">
            <p>Thành tiền: ${cartItems[product.productId] * product.price}₫</p>
        </div>
        <div class="col-md-2 text-end">
            <a href="/giohang/xoa/${product.productId}" class="text-danger">XÓA</a>
        </div>
    </div>
</c:forEach>
<div class="row mt-4">
    <div class="col-md-12 total-price">
        Tổng cộng: ${totalPrice}₫
    </div>
</div>


    <div class="row mt-4">
        <div class="col-md-12 total-price">
            Tổng cộng: ${totalPrice}₫
        </div>
    </div>
</div>

    <!-- Phần footer -->
    <jsp:include page="bannericon.jsp"/>
    <jsp:include page="footer.jsp"/>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
