-- Database for an online stationery store
/*
We will consider:

- Having a product catalog with prices and categories.
- Registering customers for shipments.
- Storing purchase orders.
*/


CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);


CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    CONSTRAINT chk_product_price CHECK (price >= 0),
    CONSTRAINT fk_category FOREIGN KEY (category_id) 
        REFERENCES Categories(category_id)
        ON DELETE RESTRICT
);


CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    shipping_address TEXT
);


CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    customer_id INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) 
        REFERENCES Customers(customer_id)
        ON DELETE RESTRICT
);


CREATE TABLE Order_Details (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    purchase_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT chk_quantity CHECK (quantity > 0),
    CONSTRAINT fk_order FOREIGN KEY (order_id) 
        REFERENCES Orders(order_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id) 
        REFERENCES Products(product_id)
        ON DELETE RESTRICT
);