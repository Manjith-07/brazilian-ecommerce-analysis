# creating database
CREATE DATABASE
olist_commerce_project;

# use database
USE olist_commerce_project;

# creating table combining essential columns from all tables
CREATE TABLE 
	master_sales_table AS
SELECT
	t1.order_id,
    t1.customer_id,
    t1.order_status,
    t1.order_purchase_timestamp,
    t2.order_item_id,
    t2.product_id,
    t2.price,
    t2.freight_value,
    t3.customer_unique_id,
    t3.customer_city,
    t3.customer_state,
    t4.product_category_name,
    t5.product_category_name_english
FROM 
	orders t1
LEFT JOIN
	order_items t2 ON t1.order_id = t2.order_id
LEFT JOIN
	customers t3 ON t1.customer_id = t3.customer_id
LEFT JOIN
	products t4 ON t2.product_id = t4.product_id
LEFT JOIN 
	category_translation t5 ON t4.product_category_name = t5.﻿product_category_name;
    
SELECT * FROM master_sales_table;


# Adding a column "total_sales" to check overall revenue
ALTER TABLE
master_sales_table
ADD COLUMN 
total_sale DECIMAL(10,2);


# Filling the new column with price + freight_value
UPDATE master_sales_table
SET total_sale = price + freight_value;


# Create new table "monthly_sales_summary" to get result based on "order_status" as delivered
CREATE TABLE 
	monthly_sales_summary AS
SELECT
	YEAR(order_purchase_timestamp) AS 'Sale_Year',
    MONTH(order_purchase_timestamp) AS 'Sale_Month',
    COUNT(DISTINCT order_id) AS 'Total_Orders',
    SUM(total_sale) AS 'Monthly_Revenue'
FROM 
	master_sales_table
WHERE 
	order_status = 'delivered'
GROUP BY 
	Sale_Year, Sale_Month
ORDER BY 
	Sale_Year, Sale_Month;

SELECT * FROM monthly_sales_summary;
