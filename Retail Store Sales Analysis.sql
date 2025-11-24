CREATE TABLE customers1 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE products1 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders1 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_item (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY(order_id) REFERENCES orders1(order_id),
    FOREIGN KEY(product_id) REFERENCES products1(product_id)
);

INSERT INTO customers1 VALUES
(1,'Aarav','Delhi'),
(2,'Riya','Mumbai'),
(3,'Kabir','Delhi'),
(4,'Simran','Bangalore');

INSERT INTO products1 VALUES
(101,'Shampoo','Personal Care',150),
(102,'Notebook','Stationery',50),
(103,'T-shirt','Clothing',500),
(104,'Coffee','Beverages',200);

INSERT INTO orders1 VALUES
(1001,1,'2024-01-05'),
(1002,2,'2024-01-06'),
(1003,1,'2024-02-01'),
(1004,3,'2024-02-15');

INSERT INTO order_item VALUES
(1,1001,101,2),
(2,1001,102,3),
(3,1002,103,1),
(4,1003,101,1),
(5,1003,104,2),
(6,1004,103,1);

--Total Sales reveue
SELECT SUM(oi.quantity * p.price) AS total_revenue
FROM order_item oi
JOIN products1 p ON oi.product_id = p.product_id;

--Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders1;

--Top 3 best-selling products
SELECT p.product_name, SUM(oi.quantity) AS total_qty_sold
FROM order_item oi
JOIN products1 p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_qty_sold DESC
LIMIT 3;

--Category-wise revenue
SELECT p.category, SUM(oi.quantity * p.price) AS category_revenue
FROM order_item oi
JOIN products1 p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;


--City-wise customer order count
SELECT c.city, COUNT(o.order_id) AS total_orders
FROM customers1 c
JOIN orders1 o ON c.customer_id = o.customer_id
GROUP BY c.city;

--Monthly revenue trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(oi.quantity * p.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month
ORDER BY month;


