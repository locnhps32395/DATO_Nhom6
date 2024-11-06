<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

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

/* Đảm bảo nút luôn hiển thị trên ảnh */
.row > .col-lg-6 {
  padding-left: 0; /* Loại bỏ khoảng cách bên trái */
  padding-right: 0; /* Loại bỏ khoảng cách bên phải */
}
/* Hiệu ứng phóng to và tăng độ sáng cho ảnh khi hover */
.product-container:hover img {
  transform: scale(1.1); /* Phóng to ảnh khi hover */
  filter: brightness(1.1); /* Tăng độ sáng của ảnh khi hover */
}
/* Phong cách ảnh */
.product-container img {
  width: 100%;
  height: 800px;
  transition: transform 0.3s ease-in-out, filter 0.3s ease-in-out; /* Thêm hiệu ứng chuyển tiếp cho filter */
  filter: brightness(0.8); /* Giảm độ sáng của ảnh khi hover */
}
/* Phong cách liên kết mặc định */
.nav-link {
  text-decoration: none; /* Loại bỏ dấu gạch chân mặc định */
  position: relative; /* Để có thể sử dụng vị trí tuyệt đối cho hiệu ứng gạch chân */
}



</style>
<body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-6 col-md-12">
          <div class="product-container">
            <a href="#,">
            <img src="../view/img/Banner_ly.jpg" alt="Product 1" class="img-fluid" />
          </a>
          </div>
        </div>
        <div class="col-lg-6 col-md-12">
          <div class="product-container">
            <a href="#.">
            <img
              src="../view/img/Banner_nen.jpg"
              alt="Product 2"
              class="img-fluid"
            />
          </a>
          </div>
        </div>
      </div>
   
    </div>

</body>
</html>