-- SQLBook: Code for Data Warehouse Queries
CREATE DATABASE IF NOT EXISTS data_warehouse;
USE data_warehouse;

-- Q1: Total sales revenue by product category for each month
SELECT 
    DATE_FORMAT(d.date, '%Y-%m') AS month,
    p.category,
    SUM(f.total_amount) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY month, p.category
ORDER BY month, total_revenue DESC;

-- Q2: Top 2 performing stores by total revenue
SELECT 
    s.store_name,
    SUM(f.total_amount) AS total_revenue
FROM fact_sales f
JOIN dim_store s ON f.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_revenue DESC
LIMIT 2;

-- Q3: Month-over-month sales trend across all stores
SELECT 
    DATE_FORMAT(d.date, '%Y-%m') AS month,
    SUM(f.total_amount) AS monthly_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY month
ORDER BY month;