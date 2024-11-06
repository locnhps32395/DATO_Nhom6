<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Quản Lý Sản Phẩm</h2>

    <!-- Hiển thị thông báo thành công -->
    <c:if test="${not empty message}">
        <div class="alert alert-success">
            <p>${message}</p>
        </div>
    </c:if>

    <!-- Form thêm/sửa sản phẩm -->
<form:form action="/admin/them" method="post" modelAttribute="item" enctype="multipart/form-data"  >

        <div class="form-group mb-3">
            <label for="productId" class="form-label">Mã sản phẩm</label>
            <form:input path="productId" id="productId" class="form-control" readonly="true"/>
            <form:errors path="productId" cssClass="text-danger"></form:errors>
        </div>
        <div class="form-group mb-3">
            <label for="productName" class="form-label">Tên sản phẩm</label>
            <form:input path="name" id="productName" class="form-control"/>
            <form:errors path="name" cssClass="text-danger"></form:errors>
        </div>
 <div class="form-group mb-3">
    <label for="category" class="form-label">Danh mục</label>
    <form:select path="category" id="category" class="form-control">
        <form:option value="" label="Chọn danh mục"/>
        <form:options items="${categories}" itemValue="categoryId" itemLabel="name"/>
    </form:select>
    <form:errors path="category" cssClass="text-danger"></form:errors>
</div>


        <div class="form-group mb-3">
            <label for="brand" class="form-label">Thương hiệu</label>
            <form:input path="brand" id="brand" class="form-control"/>
            <form:errors path="brand" cssClass="text-danger"></form:errors>
        </div>
        <div class="form-group mb-3">
            <label for="stock" class="form-label">Số lượng</label>
            <form:input path="stock" id="stock" type="number" class="form-control"/>
            <form:errors path="stock" cssClass="text-danger"></form:errors>
        </div>
        <div class="form-group mb-3">
            <label for="price" class="form-label">Giá bán</label>
            <form:input path="price" id="price" class="form-control"/>
            <form:errors path="price" cssClass="text-danger"></form:errors>
        </div>
           <div class="form-group mb-3">
            <label for="price" class="form-label">Trong kho</label>
            <form:input path="stock" id="stock" class="form-control"/>
            <form:errors path="stock" cssClass="text-danger"></form:errors>
        </div>
        <div class="form-group mb-3">
            <label for="description" class="form-label">Mô tả sản phẩm</label>
            <form:textarea path="description" id="description" rows="4" class="form-control"></form:textarea>
            <form:errors path="description" cssClass="text-danger"></form:errors>
        </div>
<div class="form-group mb-3">
        <label for="imagesFile" class="form-label">Ảnh sản phẩm</label>
        <input type="file" name="imagesFile" class="form-control" id="imagesFile" />
    </div>

        <!-- Nút hành động -->
        <div class="form-actions mt-4">
            <button type="submit" class="btn btn-primary" formaction="/editProduct/them">Thêm</button>
            <button type="submit" class="btn btn-warning" formaction="/editProduct/sua">Sửa</button>
            <button type="submit" class="btn btn-danger" formaction="/delete/${item.productId}">Xóa</button>
            <button type="submit" class="btn btn-success" formaction="/admin/Product/reset"> Tróng</button>
        </div>
    </form:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
