CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE orders (
  order_id VARCHAR(20),
  product_id VARCHAR(20),
  quantity INT,
  order_date DATE,
  customer_id INT,
  total_price DECIMAL(10,2)
);

CREATE TABLE customers AS
SELECT DISTINCT customer_id
FROM orders
WHERE customer_id IS NOT NULL;

CREATE TABLE products AS
SELECT DISTINCT product_id
FROM orders;
