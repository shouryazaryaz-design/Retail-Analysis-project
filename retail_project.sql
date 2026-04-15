CREATE DATABASE retail_project;
USE retail_project;
SHOW DATABASES;

CREATE TABLE orders (
order_id INT,
order_date DATE,
region VARCHAR(50),
product VARCHAR(50),
category VARCHAR(50),
customer_id VARCHAR(10),
sales INT,
profit INT,
quantity INT
);

INSERT INTO orders VALUES
(1001,'2024-01-01','South','Laptop','Electronics','C101',55000,7000,1),
(1002,'2024-01-02','North','Chair','Furniture','C102',4000,-500,2),
(1003,'2024-01-03','East','Mobile','Electronics','C103',20000,3000,1),
(1004,'2024-01-04','West','Table','Furniture','C104',7000,1000,1),
(1005,'2024-01-05','South','Laptop','Electronics','C105',53000,6000,1),
(1006,'2024-01-06','North','Chair','Furniture','C106',4200,-400,2),
(1007,'2024-01-07','East','Mobile','Electronics','C101',21000,2500,1),
(1008,'2024-01-08','West','Table','Furniture','C102',7500,1200,1),
(1009,'2024-01-09','South','Mobile','Electronics','C103',22000,2800,1),
(1010,'2024-01-10','North','Laptop','Electronics','C104',54000,6500,1),
(1011,'2024-01-11','East','Chair','Furniture','C105',3800,-300,1),
(1012,'2024-01-12','West','Table','Furniture','C106',7800,1300,1),
(1013,'2024-01-13','South','Laptop','Electronics','C101',56000,7500,1),
(1014,'2024-01-14','North','Mobile','Electronics','C102',23000,2700,1),
(1015,'2024-01-15','East','Table','Furniture','C103',8000,1400,1),
(1016,'2024-01-16','West','Laptop','Electronics','C104',57000,8000,1),
(1017,'2024-01-17','South','Chair','Furniture','C105',3600,-200,1),
(1018,'2024-01-18','North','Mobile','Electronics','C106',24000,2900,1),
(1019,'2024-01-19','East','Table','Furniture','C101',8200,1500,1),
(1020,'2024-01-20','West','Chair','Furniture','C102',3900,-350,1),
(1021,'2024-01-21','South','Laptop','Electronics','C103',58000,8200,1),
(1022,'2024-01-22','North','Mobile','Electronics','C104',25000,3000,1),
(1023,'2024-01-23','East','Chair','Furniture','C105',3700,-250,1),
(1024,'2024-01-24','West','Table','Furniture','C106',8400,1600,1),
(1025,'2024-01-25','South','Mobile','Electronics','C101',26000,3200,1);

SELECT * FROM ORDERS;

SELECT region, SUM(sales) AS
total_sales
FROM orders
GROUP BY region;

SELECT category, SUM(profit) AS
total_profit
FROM orders
GROUP BY category;

SELECT product, SUM(sales) AS
total_sales
FROM orders
GROUP BY product
ORDER BY total_sales DESC;

SELECT * FROM orders
WHERE category='Electronics';

SELECT region, SUM(sales) AS
total_sales
FROM orders
WHERE category='Electronics'
GROUP BY region;

CREATE TABLE customers (
customer_id VARCHAR(10),
customer_name VARCHAR(50),
segment VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers VALUES
('C101','Rahul Sharma','Corporate','Hyderabad'),
('C102','Priya Verma','Consumer','Delhi'),
('C103','Amit Patel','Corporate','Mumbai'),
('C104','Sneha Reddy','Home Office','Hyderabad'),
('C105','Arjun Singh','Consumer','Bangalore'),
('C106','Neha Gupta','Corporate','Pune');

SELECT o.order_id, c.customer_name,
o.sales
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id;

SELECT c.customer_name, SUM(o.sales)
AS total_sales
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.customer_name;

SELECT c.customer_name, SUM(o.sales)
AS total_sales
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
WHERE c.segment='Corporate'
GROUP BY c.customer_name;

SELECT c.customer_name, SUM(o.sales)
AS total_sales
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;

CREATE TABLE products (
product VARCHAR(50),
category VARCHAR(50),
cost_price INT,
selling_price int);

INSERT INTO products VALUES
('Laptop','Electronics',48000,55000),
('Chair','Furniture',2000,4000),
('Mobile','Electronics',15000,20000),
('Table','Furniture',5000,7000);

SELECT o.product, p.cost_price,
p.selling_price, o.sales
FROM orders o
JOIN products p
ON o.product=p.product;

SELECT o.product, SUM(o.profit) AS
total_profit
FROM orders o
JOIN products p
ON o.product=p.product
GROUP BY o.product
ORDER BY total_profit DESC;

SELECT o.product, SUM(o.profit) AS
total_profit
FROM orders o
JOIN products p
ON o.product=p.product
GROUP BY o.product
HAVING total_profit<0;

SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM products;



