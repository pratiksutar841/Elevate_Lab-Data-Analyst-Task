-- Task 6 Sales Trend Analysis Queries

-- Monthly Revenue & Order Volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- Top 3 Months by Revenue
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;

-- Monthly Revenue Trend for 2024 Only
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS revenue_2024
FROM online_sales
WHERE YEAR(order_date) = 2024
GROUP BY month
ORDER BY month;
