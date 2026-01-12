SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE '/usr/local/mysql-files/clean_ecommerce_data.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS
(order_id, product_id, @product_name, quantity, order_date, @unit_price, customer_id, @country, total_price);

