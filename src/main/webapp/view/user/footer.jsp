<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>


footer {
background-color: #0b0b0b; /* Nền đen */
}

footer a {
color: #fff; /* Màu trắng cho liên kết */
text-decoration: none; /* Bỏ gạch chân */
}

footer a:hover {
text-decoration: underline; /* Hiệu ứng gạch chân khi hover */
}

footer .form-control {
background-color: transparent;
border: 1px solid #fff; /* Viền trắng cho ô nhập email */
color: #fff; /* Chữ trắng */
}

footer .form-control::placeholder {
color: #ccc; /* Màu placeholder nhạt hơn */
}

.container {
    background-color: #f8f9fa; /* Màu nền nhẹ */
    padding: 20px;
}

.row {
    border-top: 1px solid #ddd; /* Đường viền trên cùng */
    padding-top: 20px;
}

.col img {
    max-width: 100%;
    height: auto;
    opacity: 0.8; /* Giảm độ rõ ràng của logo một chút */
    transition: opacity 0.3s ease;
}

.col img:hover {
    opacity: 1; /* Hiệu ứng hover để làm logo rõ nét hơn */
}


.card-custom {
  position: relative;
  overflow: hidden;
  border: none;
  color: white;
  text-align: center;
}

.card-custom img {
  width: 100%;
  height: auto;
  transition: all 0.3s ease;
  filter: brightness(0.7);
 
}

.card-custom:hover img {
  filter: brightness(1);
}

.card-custom .card-body {
  position: absolute;
  bottom: 10%;
  left: 50%;
  transform: translateX(-50%);
  color: white;
}

.card-title {
  font-size: 24px;
  font-weight: bold;
  color: white;
}

.btn-custom {
  font-size: 16px;
  color: white;
  text-decoration: none;
  border-bottom: 1px solid white;
}

.btn-custom:hover {
  color: #ff5e00;
  text-decoration: none;
}

/* Thêm margin giữa các thẻ div */
.col-md-3 {
  margin-bottom: 15px;
}



/*Logo thuong hieu*/

.container {
  background-color: #f8f9fa; /* Màu nền nhẹ */
  padding: 20px;
}

.row {
  border-top: 1px solid #ddd; /* Đường viền trên cùng */
  padding-top: 20px;
}

.col img {
  max-width: 100%;
  height: auto;
  opacity: 0.8; /* Giảm độ rõ ràng của logo một chút */
  transition: opacity 0.3s ease;
}

.col img:hover {
  opacity: 1; /* Hiệu ứng hover để làm logo rõ nét hơn */
}

</style>
<body>

    <footer class="text-white pt-5">
        <div class="container" style="background-color:black">
          <div class="row">
            
            <!-- Bản đồ Google Maps (bên trái) -->
            <div class="col-md-6">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1947.6430098584965!2d106.62738783136516!3d10.853512854429484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b6c59ba4c97%3A0x535e784068f1558b!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEZQVCBQb2x5dGVjaG5pYw!5e1!3m2!1svi!2s!4v1726737341050!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
      
            <!-- Nội dung Footer (bên phải) -->
            <div class="col-md-6">
              <div class="row">
                
                <!-- Menu chính -->
                <div class="col-md-6">
                  <h5>TRANG CHỦ</h5>
                  <ul class="list-unstyled">
                    <li><a href="#" class="text-white">Trang chủ</a></li>
                    <li><a href="#" class="text-white">Sản phẩm</a></li>
                    <li><a href="#" class="text-white">Giới thiệu</a></li>
                    <li><a href="#" class="text-white">Liên hệ</a></li>
                  </ul>
                </div>
      
                <!-- Hướng dẫn -->
                <div class="col-md-6">
                  <h5>HƯỚNG DẪN MUA HÀNG</h5>
                  <ul class="list-unstyled">
                    <li><a href="#" class="text-white">Chính sách đổi trả</a></li>
                    <li><a href="#" class="text-white">Câu hỏi thường gặp</a></li>
                  </ul>
                </div>
                
                <!-- Phương thức thanh toán -->
                <div class="col-md-12 mt-4">
                  <h5>PHƯƠNG THỨC THANH TOÁN</h5>
                  <img src="../img/vnpay.png" alt="VN PAY" width="50">
                  <img src="../img/visa.png" alt="CARD" width="50">
                </div>
      
                <!-- Kết nối với mạng xã hội -->
                <div class="col-md-12 mt-4">
                  <h5>KẾT NỐI VỚI NHÓM</h5>
                  <a href="#"><img src="../img/facebook.png" alt="Facebook" width="40"></a>
                  <a href="#"><img src="../img/intagram.jpg" alt="Instagram" width="40"></a>
                  <a href="#"><img src="../img/youtobe.jpg" alt="YouTube" width="40"></a>
                </div>
                
                <!-- Nhận bản tin -->
                <div class="col-md-12 mt-4">
                  <h5>NHẬN BẢN TIN</h5>
                  <input type="email" class="form-control" placeholder="Vui lòng nhập email của bạn và ENTER">
                </div>
                
              </div>
            </div>
          </div>
          
          <hr>
      
          <!-- Copyright -->
          <div class="row mt-4">
            <div class="col-md-12 text-center">
              <p>Copyright © 2017 Nhom Interior Design. <a href="#" class="text-white">Chính sách</a> | <a href="#" class="text-white">Quy chế hoạt động</a> | <a href="#" class="text-white">Điều khoản và điều kiện</a> | <a href="#" class="text-white">Chủ sở hữu</a></p>
            </div>
          </div>
        </div>
      </footer>
      
      
</body>
</html>