<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .sidebar {
            background-color: #0d6efd;
            color: white;
            height: 100vh;
        }
        .sidebar .nav-link, .sidebar .nav-link.active {
            color: white;
        }
        .btn-toolbar button {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-2 d-none d-md-block sidebar position-sticky" style="top: 0;">
                <div class="text-center my-4">
                    <img src="https://via.placeholder.com/100" class="rounded-circle mb-2" alt="User">
                    <h5>Vũ Trường</h5>
                    <p>Chào mừng bạn trở lại</p>
                </div>
                <ul class="nav flex-column px-3">
                    <li class="nav-item"><a class="nav-link active" href="#">POS Bán Hàng</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Bảng điều khiển</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Quản lý nhân viên</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Quản lý khách hàng</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Quản lý sản phẩm</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Quản lý đơn hàng</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Quản lý nội bộ</a></li>
                </ul>
            </nav>

            <!-- Main Content -->
            <main class="col-md-10 ms-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h4">Danh Sách Sản Phẩm</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <button class="btn btn-success btn-sm">Tạo mới sản phẩm</button>
                        <button class="btn btn-warning btn-sm">Tải tệp file</button>
                        <button class="btn btn-info btn-sm">Sao chép</button>
                        <button class="btn btn-success btn-sm">Xuất Excel</button>
                        <button class="btn btn-danger btn-sm">Xuất PDF</button>
                        <button class="btn btn-secondary btn-sm">Xóa tất cả</button>
                    </div>
                </div>
                
        
                
            
             
                <jsp:include page="FormProduct.jsp"/>
                
               <hr>   
                   <!-- Product Table -->
                     <jsp:include page="TableProduct.jsp"/>
                
            </main>
        </div>
    </div>

  


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
