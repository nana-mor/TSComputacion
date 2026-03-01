INSERT INTO Categories (category_name) VALUES 
('Writing'),
('Paper & Notebooks'),
('Art Supplies'),
('Organization');

INSERT INTO Products (product_name, price, category_id) VALUES 
('Blue Ballpoint Pen', 1.50, 1),
('Black Gel Pen', 2.25, 1),
('HB Pencil', 0.80, 1),
('Permanent Marker', 3.50, 1),
('A4 Grid Notebook', 4.99, 2),
('Ream of Bond Paper', 15.00, 2),
('Sticky Notes Pack', 2.10, 2),
('Watercolor Set', 12.50, 3),
('Synthetic Brush No. 8', 3.75, 3),
('Sketchbook', 8.90, 3),
('Lever Arch File', 6.50, 4),
('Display Folder', 1.20, 4),
('2026 Planner', 18.00, 4);

INSERT INTO Customers (customer_name, email, shipping_address) VALUES 
('Alice Smith', 'alice@email.com', '123 Moon St, NY'),
('Bob Johnson', 'bob@email.com', '456 Sun Ave, CA'),
('Charlie Brown', 'charlie@email.com', '789 Star Rd, TX');

INSERT INTO Orders (customer_id) VALUES 
(1), 
(2), 
(1);

INSERT INTO Order_Details (order_id, product_id, quantity, purchase_price) VALUES 
(1, 1, 5, 1.50),
(1, 11, 2, 6.50),
(2, 8, 1, 12.50),
(2, 9, 2, 3.75),
(3, 6, 2, 15.00);