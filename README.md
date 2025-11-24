 🛒 Retail Store Sales Analysis — SQL Project

📌 Overview
This project focuses on analyzing the sales performance of a retail store using SQL.  
The goal is to explore customer behavior, sales patterns, product performance, and revenue trends using relational database queries.

This project demonstrates the use of:
- SQL Joins  
- Aggregations  
- Grouping  
- Date functions  
- Business insights extraction  

Perfect for Data Analyst beginners.

---

- Database Structure

This project uses four main tables:

1. customers1
| Column        | Type        |
|---------------|-------------|
| customer_id   | INT (PK)    |
| customer_name | VARCHAR     |
| city          | VARCHAR     |

2. products
| Column        | Type         |
|---------------|--------------|
| product_id    | INT (PK)     |
| product_name  | VARCHAR      |
| category      | VARCHAR      |
| price         | DECIMAL(10,2)|

3. orders1
| Column      | Type    |
|-------------|---------|
| order_id    | INT (PK)|
| customer_id | INT (FK)|
| order_date  | DATE    |

4. order_item
| Column      | Type    |
|-------------|---------|
| item_id     | INT (PK)|
| order_id    | INT (FK)|
| product_id  | INT (FK)|
| quantity    | INT     |

---

🧰 SQL Queries Used

📊 Insights

1.From the analysis performed:

2.Delhi generates the highest number of orders, indicating strong customer activity.

3.Shampoo and T-shirt are the top-selling products.

4.The Clothing category contributes the highest revenue.

5.Revenue increased from January to February, showing positive sales growth.

6.Majority of sales are driven by returning customers, showing good customer loyalty.


🚀 How to Run This Project

1.Create a local SQL database (PostgreSQL or MySQL).

2.Create tables using the schema provided.

3.Insert sample data.

4.Run the SQL queries from this project.

5.Observe results and insights generated.

🎯 Skills Demonstrated

-SQL Joins (INNER JOIN, Foreign Keys)

-Aggregations (SUM, COUNT)

-GROUP BY & ORDER BY

-Date formatting (TO_CHAR, DATE_TRUNC)

-Data modeling

-Business insight generation

📘 Conclusion

This project helped analyze sales patterns, customer behavior, and product performance using SQL.

It demonstrates core SQL skills and serves as a strong beginner portfolio project for Data Analyst roles.

