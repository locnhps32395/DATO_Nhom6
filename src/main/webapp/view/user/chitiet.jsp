<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${item.name}</title>
    <style>
        .container0 {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 10px;
            margin-top: 130px;
        }

        .product-image {
            width: 40%;
            display: flex;
            align-items: flex-start; 
        }

        .small-images {
            display: flex;
            flex-direction: column; 
            justify-content: flex-start;
            margin-right: 10px; 
        }

        .small-images img {
            width: 80px;
            height: 80px;
            margin-bottom: 10px; 
            border: 1px solid #ddd;
            cursor: pointer;
        }

        .product-image img {
            width: 100%;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .product-details {
            width: 40%;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin-left: 20px;
        }

        .product-details h1 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        .product-details .brand {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        .product-details .price {
            font-size: 28px;
            color: #E74C3C;
            margin-bottom: 20px;
        }

        .product-details ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 20px;
        }

        .product-details ul li {
            margin-bottom: 10px;
        }

        .quantity-selector {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .quantity-selector button {
            padding: 5px 10px;
            border: 1px solid #ddd;
            background-color: white;
            cursor: pointer;
        }

        .quantity-selector input {
            width: 40px;
            text-align: center;
            margin: 0 10px;
            padding: 5px;
            border: 1px solid #ddd;
        }

        .add-to-cart, .buy-now {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            color: white;
            background-color: #333;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
        }

        .buy-now {
            background-color: #E74C3C;
        }

        .product-description {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #ddd;
        }

        .product-description h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .product-description p {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>

    <div class="container0">
        <div class="product-image">
            <div class="small-images">
             
                        
                
            </div>
            <img src="/view/img/${item.images}" alt="${item.name}" />
        </div>
        <div class="product-details">
            <h1>${item.name}</h1>
            <div class="brand">Thương hiệu: ${item.brand}</div>
            <div class="price">${item.price}₫</div> 
            <ul>
                
        
                <li>Thương hiệu: ${item.brand}</li>
             
            </ul>

            <div class="quantity-selector">
                <button>-</button>
                <input type="number" value="1" min="1">
                <button>+</button>
               
            </div>

        <a href="/giohang/${item.productId}" class="add-to-cart">THÊM VÀO GIỎ HÀNG</a>



            <a href="#" class="buy-now">THANH TOÁN NGAY</a>

            <div class="product-description">
                <h2>Mô tả sản phẩm</h2>
                <p>Chi tiết sản phẩm: ${item.description}</p>
               
            </div>
        </div>
    </div>
</body>
</html>
