-- Task 4 SQL Queries

-- 1. Customers from India signed up after 2022
SELECT * FROM users
WHERE country = 'India' AND signup_date > '2022-01-01';

-- 2. Average Revenue per User (ARPU)
SELECT u.user_id, u.name, SUM(p.price * oi.quantity) / COUNT(DISTINCT u.user_id) AS avg_revenue
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY u.user_id;

-- 3. Top 5 products by sales revenue
SELECT p.name, SUM(p.price * oi.quantity) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC
LIMIT 5;

-- 4. Monthly sales trend
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month, SUM(p.price * oi.quantity) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 5. Customers with total spend > 1000
SELECT u.name, SUM(p.price * oi.quantity) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY u.user_id
HAVING total_spent > 1000;

-- 6. Create a view for customer revenue
CREATE VIEW customer_revenue AS
SELECT u.user_id, u.name, SUM(p.price * oi.quantity) AS total_revenue
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY u.user_id;

-- 7. Subquery: Customers who spent more than average order value
SELECT name FROM users
WHERE user_id IN (
    SELECT u.user_id
    FROM users u
    JOIN orders o ON u.user_id = o.user_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY u.user_id
    HAVING SUM(p.price * oi.quantity) >
           (SELECT AVG(total) FROM (
                SELECT SUM(p.price * oi.quantity) AS total
                FROM orders o
                JOIN order_items oi ON o.order_id = oi.order_id
                JOIN products p ON oi.product_id = p.product_id
                GROUP BY o.order_id
           ) t)
);
