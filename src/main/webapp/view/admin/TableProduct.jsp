<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div class="d-flex justify-content-between mb-3">
		<div class="d-flex">
			<label for="limit" class="form-label me-2">Hiển thị</label> <select
				id="limit" class="form-select form-select-sm me-3"
				style="width: 75px;">
				<option>10</option>
				<option>20</option>
				<option>50</option>
			</select> <label for="category" class="form-label me-2">Danh mục</label> <select
				id="category" class="form-select form-select-sm"
				style="width: 150px;">
				<option>Tất cả</option>
				<option>Bàn ăn</option>
				<option>Ghế gỗ</option>
			</select>
		</div>
		<div>
			<input type="text" class="form-control form-control-sm"
				placeholder="Tìm kiếm...">
		</div>
	</div>

	<!-- Product Table -->
	<div class="table-responsive">
		<table class="table table-bordered align-middle" id="adminTable">
			<thead class="table-light">
				<tr>
				
					<th>Mã sản phẩm</th>
					
					<th>Tên sản phẩm</th>
					<th>Mô tả sản phẩm</th>
					<th>Thương hiệu</th>
					<th>Giá tiền</th>
					<th>Trong kho</th>
					<th>Danh mục</th>
					<th>Ngày tạo</th>
					<th>Ngày cập nhật</th>
					<th>Ảnh</th>
					<th>Chức năng</th>



				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
					<tr>
						<td><c:out value="${item.productId}" /></td>
						<td><c:out value="${item.name}" /></td>
						<td><c:out value="${item.description}" /></td>
						<td><c:out value="${item.brand}" /></td>
						<td><c:out value="${item.price}" /></td>
						<td><c:out value="${item.stock}" /></td>
						<td><c:out value="${item.category.name}" /></td>
						<td><c:out value="${item.createdAt}" /></td>
						<td><c:out value="${item.updatedAt}" /></td>
						<td>
						<img src="../view/img/${item.images}"
     class="img-thumbnail" alt="Product Image"
     style="width: 100px; height: auto;">

							</td>


						<td>
							<button class="btn btn-warning btn-sm" data-bs-toggle="modal"
								data-bs-target="#editProductModal">
								              <a  href="/editProduct/${item.productId}" style="color: white;"> Sửa </a>
								</button>
							
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>