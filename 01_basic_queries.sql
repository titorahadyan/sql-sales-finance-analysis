
-- SQL Sales & Finance Analysis
-- File 01: Basic Queries
-- Purpose: Practice filtering and sorting sales data

-- 1. Display all records
SELECT *
FROM sales;

-- 2. Select specific columns
SELECT
    order_id,
    order_date,
    product_name,
    quantity,
    sales_amount
FROM sales;

-- 3. Filter sales above 500
SELECT *
FROM sales
WHERE sales_amount > 500;

-- 4. Sort sales from highest to lowest
SELECT *
FROM sales
ORDER BY sales_amount DESC;

-- 5. Show the first 10 records
SELECT *
FROM sales
LIMIT 10;
```sql
    
-- 6. Calculate total sales
SELECT SUM(sales_amount)
FROM sales;

-- 7. Count total transactions
SELECT COUNT(*)
FROM sales;
```

-- 8. Find transactions for products containing the letter 'o'
SELECT
    product_name,
    sales_amount
FROM sales
WHERE product_name LIKE '%o%';

-- 9. List unique product names
SELECT DISTINCT
    product_name
FROM sales;

-- 10. Filter Coffee and Chocolate transactions
-- with sales amounts between 500 and 1000
SELECT
    product_name,
    sales_amount
FROM sales
WHERE product_name IN ('Chocolate', 'Coffee')
  AND sales_amount BETWEEN 500 AND 1000
ORDER BY sales_amount DESC;

-- 11. Retrieve all Tea transactions
-- and Coffee transactions with sales of at least 600
SELECT
    product_name,
    sales_amount,
    quantity
FROM sales
WHERE product_name = 'Tea'
   OR (
       product_name = 'Coffee'
       AND sales_amount >= 600
   )
ORDER BY sales_amount DESC;

-- 12. Calculate total sales for each product
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name;

-- 13. Count transactions for each product
SELECT
    product_name,
    COUNT(*) AS total_transactions
FROM sales
GROUP BY product_name;

-- 14. Calculate total sales and transaction count by product
SELECT
    product_name,
    SUM(sales_amount) AS total_sales,
    COUNT(*) AS total_transactions
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC;

-- 15. Show products with total sales above 1000
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
HAVING SUM(sales_amount) > 1000
ORDER BY total_sales DESC;

-- 16. Find products containing 'o' with more than
-- 2 transactions, ranked by total sales
SELECT
    product_name,
    SUM(sales_amount) AS total_sales,
    COUNT(*) AS total_transactions
FROM sales
WHERE product_name LIKE '%o%'
GROUP BY product_name
HAVING COUNT(*) > 2
ORDER BY total_sales DESC
LIMIT 2;
