-- Total Revenue
SELECT ROUND(SUM(total_price),2) AS total_revenue FROM orders;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders FROM orders;

-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM orders;

-- Monthly Revenue Trend
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  ROUND(SUM(total_price),2) AS revenue
FROM orders
WHERE YEAR(order_date) >= 2009
GROUP BY month
ORDER BY month;

-- Top 10 Products by Revenue
SELECT 
  product_id,
  ROUND(SUM(total_price),2) AS revenue
FROM orders
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

-- Top 10 Customers
SELECT 
  customer_id,
  ROUND(SUM(total_price),2) AS spending
FROM orders
GROUP BY customer_id
ORDER BY spending DESC
LIMIT 10;

