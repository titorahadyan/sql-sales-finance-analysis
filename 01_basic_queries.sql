
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
