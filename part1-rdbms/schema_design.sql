-- SQL Schema Design to create tables and insert sample data for a sales database as per orders_flat.csv
CREATE DATABASE orders_flat;
USE orders_flat;
-- CUSTOMERS
CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- PRODUCTS
CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- SALES REPRESENTATIVES
CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(50) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(150) NOT NULL
);

-- ORDERS
CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    sales_rep_id VARCHAR(50) NOT NULL,
    order_date DATE NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- ORDER ITEMS
CREATE TABLE order_items (
    order_id VARCHAR(50) NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,

    PRIMARY KEY (order_id, product_id),

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);



-- Inserting sample data into the tables which is given in orders_flat.csv

-- CUSTOMERS
INSERT INTO customers VALUES
('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
('C004', 'Sneha Iyer', 'sneha@gmail.com', 'Chennai'),
('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore'),
('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi'),
('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai');


-- PRODUCTS
INSERT INTO products VALUES
('P005', 'Headphones', 'Electronics', 3200),
('P002', 'Mouse', 'Electronics', 800),
('P001', 'Laptop', 'Electronics', 55000),
('P003', 'Desk Chair', 'Furniture', 8500),
('P004', 'Notebook', 'Stationery', 120);


-- SALES REPS
INSERT INTO sales_reps VALUES
('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR03', 'Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 560001'),
('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001');


-- ORDERS
INSERT INTO orders VALUES
('ORD1004', 'C001', 'SR01', '2023-11-29'),
('ORD1001', 'C004', 'SR03', '2023-02-22'),
('ORD1016', 'C003', 'SR03', '2023-05-06'),
('ORD1000', 'C002', 'SR03', '2023-05-21'),
('ORD1022', 'C005', 'SR01', '2023-10-15');


-- ORDER ITEMS
INSERT INTO order_items VALUES
('ORD1004', 'P005', 5),
('ORD1001', 'P002', 5),
('ORD1016', 'P005', 2),
('ORD1000', 'P001', 2),
('ORD1022', 'P002', 5);

--Select Statements to verify the inserted data
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM sales_reps;
SELECT * FROM orders;
SELECT * FROM order_items;