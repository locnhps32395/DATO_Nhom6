use test1


CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    address TEXT,
    role_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);
INSERT INTO Users (username, password, email, phone, address, role_id) VALUES 
('john_doe', 'password123', 'john.doe@example.com', '1234567890', '123 Main St', 2),
('jane_doe', 'password456', 'jane.doe@example.com', '2345678901', '456 Oak St', 2),
('admin_user', 'adminpassword', 'admin@example.com', '3456789012', '789 Elm St', 1),
('manager_user', 'managerpassword', 'manager@example.com', '4567890123', '101 Maple St', 3),
('sales_user', 'salespassword', 'sales@example.com', '5678901234', '202 Pine St', 4),
('admin_loc', 'loc123', 'loc@gmail.com', '0382704546', 'Quan 12', 1);



CREATE TABLE Roles (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL
);
INSERT INTO Roles (role_name) VALUES 
('Admin'),
('Customer'),
('Manager'),
('Sales'),
('Support');




CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO Categories (name, description) VALUES 
('Sofa', 'Various types of sofas and couches.'),
('Dining Table', 'Dining tables of different sizes and materials.'),
('Bed', 'Different types of beds and bed frames.'),
('Chair', 'Chairs for dining, office, and living room.'),
('Cabinet', 'Storage cabinets of various designs.');

CREATE TABLE products (
    product_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    category_id BIGINT,
    images VARCHAR(255), -- Thêm trường hình ảnh
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL
);

);

INSERT INTO Products (name, description, price, stock, category_id,images) VALUES 
('Modern Sofa', 'A stylish modern sofa for your living room.', 599.99, 10, 1,'com'),
('Wooden Dining Table', 'A sturdy wooden dining table for family meals.', 299.99, 5, 2,'com'),
('King Size Bed', 'Comfortable king size bed with storage.', 799.99, 8, 3,'com'),
('Office Chair', 'Ergonomic office chair for comfort.', 199.99, 20, 4,'com'),
('Kitchen Cabinet', 'Spacious kitchen cabinet with multiple compartments.', 399.99, 15, 5,'com');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Pending',
    shipping_address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Orders (user_id, order_date, total_amount, status, shipping_address) VALUES 
(1, '2024-11-01 10:00:00', 799.98, 'Pending', '123 Main St'),
(2, '2024-11-02 14:30:00', 299.99, 'Shipped', '456 Oak St'),
(3, '2024-11-03 16:45:00', 599.99, 'Completed', '789 Elm St'),
(4, '2024-11-04 12:00:00', 999.98, 'Pending', '101 Maple St'),
(5, '2024-11-05 18:15:00', 199.99, 'Cancelled', '202 Pine St');



CREATE TABLE Order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_items (order_id, product_id, quantity, unit_price, total_price) VALUES 
(1, 3, 1, 799.99, 799.99),
(2, 2, 1, 299.99, 299.99),
(3, 1, 1, 599.99, 599.99),
(4, 3, 1, 799.99, 799.99),
(4, 1, 1, 199.99, 199.99),
(5, 4, 1, 199.99, 199.99);
