-- SQLBook: Code
CREATE DATABASE data_warehouse;
USE data_warehouse;


-- DIMENSION: DATE
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE NOT NULL
);


-- DIMENSION: STORE
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    store_name VARCHAR(100),
    store_city VARCHAR(50)
);


-- DIMENSION: PRODUCT
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50)
);


-- FACT TABLE: SALES
CREATE TABLE fact_sales (
    transaction_id VARCHAR(20) PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);



--insert data into dimension tables
INSERT INTO dim_date VALUES
(1, '2023-08-29'),
(2, '2023-12-12'),
(3, '2023-02-05'),
(4, '2023-02-20'),
(5, '2023-01-15'),
(6, '2023-08-09'),
(7, '2023-03-31'),
(8, '2023-10-26'),
(9, '2023-12-08'),
(10, '2023-08-15');

--insert data into dimension tables
INSERT INTO dim_store VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Bangalore MG', 'Bangalore'),
(4, 'Pune FC Road', 'Pune'),
(5, 'Mumbai Central', 'Mumbai');

--insert data into dimension tables
INSERT INTO dim_product VALUES
(1, 'Speaker', 'Electronics'),
(2, 'Tablet', 'Electronics'),
(3, 'Phone', 'Electronics'),
(4, 'Smartwatch', 'Electronics'),
(5, 'Atta 10kg', 'Groceries'),
(6, 'Jeans', 'Clothing'),
(7, 'Biscuits', 'Groceries');


--insert data into fact table
INSERT INTO fact_sales VALUES
('TXN5000', 1, 1, 1, 3, 49262.78, 147788.34),
('TXN5001', 2, 1, 2, 11, 23226.12, 255487.32),
('TXN5002', 3, 1, 3, 20, 48703.39, 974067.80),
('TXN5003', 4, 2, 2, 14, 23226.12, 325165.68),
('TXN5004', 5, 1, 4, 10, 58851.01, 588510.10),
('TXN5005', 6, 3, 5, 12, 52464.00, 629568.00),
('TXN5006', 7, 4, 4, 6, 58851.01, 353106.06),
('TXN5007', 8, 4, 6, 16, 2317.47, 37079.52),
('TXN5008', 9, 3, 7, 9, 27469.99, 247229.91),
('TXN5009', 10, 3, 4, 3, 58851.01, 176553.03);

--select data from tables
USE data_warehouse;
SELECT * FROM fact_sales;
select * from dim_date;
select * from dim_store;
select * from dim_product;  