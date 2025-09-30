-- Insert sample users
INSERT INTO users (name, email, country, signup_date) VALUES
('Alice', 'alice@example.com', 'India', '2023-05-10'),
('Bob', 'bob@example.com', 'USA', '2022-07-15'),
('Charlie', 'charlie@example.com', 'UK', '2021-12-01'),
('David', 'david@example.com', 'India', '2024-01-20'),
('Eva', 'eva@example.com', 'Canada', '2020-11-30');

-- Insert sample products
INSERT INTO products (name, category, price) VALUES
('Laptop', 'Technology', 800.00),
('Phone', 'Technology', 500.00),
('Chair', 'Furniture', 150.00),
('Desk', 'Furniture', 300.00),
('Notebook', 'Office Supplies', 5.00),
('Printer', 'Technology', 200.00);

-- Insert sample orders
INSERT INTO orders (user_id, order_date) VALUES
(1, '2024-03-05'),
(2, '2024-03-10'),
(1, '2024-04-01'),
(3, '2023-08-15'),
(4, '2024-06-20');

-- Insert sample order_items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(2, 5, 10),
(3, 6, 1),
(3, 4, 1),
(4, 5, 20),
(5, 2, 2),
(5, 1, 1);
