<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>


.product-section .product-card {
border: 1px solid #e0e0e0;
padding: 15px;
background-color: #fff;
transition: all 0.3s ease-in-out;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.product-section .product-card img {
width: 100%;
height: auto;
margin-bottom: 15px;
}

.product-section .product-card .brand-name {
color: #888;
font-size: 14px;
margin-bottom: 5px;
}

.product-section .product-card .product-name {
font-size: 16px;
font-weight: bold;
color: #333;
margin-bottom: 10px;
}

.product-section .product-card .price {
font-size: 18px;
color: #ff5e00;
}

.product-section .product-card:hover {
box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
transform: translateY(-5px);
}


.banchay{
  text-align: center;
  margin-top: 60px;
  margin-bottom: 60px;
    
}
.xemtatca{
  text-decoration: none;
  color: #171616;
}
.xemtatca:hover{
 
  color: #403d3d;
  text-decoration: underline;
}


</style>
<body>
  <div class="container product-section">

      <div class="banchay">
        <h1 style="font-size: 60px;">Bán chạy nhất</h1>
        <a href="#" class="xemtatca">Xem tất cả</a>
      </div>
       

        <!-- Bắt đầu danh sách sản phẩm -->
<div class="row">
    <c:forEach var="product" items="${listProduct}">
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="product-card text-center">
                <a href="/san-pham/${product.productId}"> <!-- Sử dụng productId -->
                    <img src="/view/img/${product.images}" alt="Product Image" class="img-thumbnail">
                </a>
                <p>${product.name}</p>
                <h5>${product.description}</h5>
                <p class="price">
                    <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="VND"/>
                </p>
            </div>
        </div>
    </c:forEach>
</div>

        </div>
    


<!--Logo nhãn hiệu-->
<div class="container my-5">
  <div class="row text-center align-items-center">
      <div class="col">
          <img src="../view/img/baccarat-logo.jpg" alt="Baccarat" class="img-fluid">
      </div>
      <div class="col">
          <img src="../view/img/trudon-logo.jpg" alt="Trudon" class="img-fluid">
      </div>
      <div class="col">
          <img src="../view/img/arcahorn-logo.jpg" alt="Arcahorn" class="img-fluid">
      </div>
      <div class="col">
          <img src="../view/img/fur-logo.jpg" alt="Fürstenberg" class="img-fluid">
      </div>
      <div class="col">
          <img src="../view/img/riviere-logo.jpg" alt="Riviere" class="img-fluid">
      </div>
      <div class="col">
          <img src="../view/img/lauren-logo.jpg" alt="Ralph Lauren" class="img-fluid">
      </div>
  </div>
</div>










    <div class="container">
      <div class="row">
          <!-- Hàng đầu tiên với 4 ảnh -->
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/nen_thom.jpg" class="card-img-top" alt="Nến Thơm">
                  <div class="card-body">
                      <h5 class="card-title">Nến Thơm</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/binh_hoa.jpg" class="card-img-top" alt="Bình Hoa">
                  <div class="card-body">
                      <h5 class="card-title">Bình Hoa</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/khunghinh.jpg" class="card-img-top" alt="Khung Hình">
                  <div class="card-body">
                      <h5 class="card-title">Khung Hình</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/dophale.jpg" class="card-img-top" alt="Đồ Pha Lê">
                  <div class="card-body">
                      <h5 class="card-title">Đồ Pha Lê</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
      </div>
  
      <div class="row">
          <!-- Hàng thứ hai với 4 ảnh -->
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/khay.jpg" class="card-img-top" alt="Khay">
                  <div class="card-body">
                      <h5 class="card-title">Khay</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/den.jpg" class="card-img-top" alt="Đè">
                  <div class="card-body">
                      <h5 class="card-title">Đèn</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/donhatam.jpg" class="card-img-top" alt="Đồ nhà tắm">
                  <div class="card-body">
                      <h5 class="card-title">Đồ nhà tắm </h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-custom">
                  <img src="../view/img/dotrangtri.jpg" class="card-img-top" alt="Đồ trang trí">
                  <div class="card-body">
                      <h5 class="card-title">Đồ trang trí</h5>
                      <a href="#" class="btn-custom">Xem tất cả</a>
                  </div>
              </div>
          </div>
      </div>
  </div>
  
</body>
</html>