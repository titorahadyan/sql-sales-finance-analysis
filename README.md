# SQL Sales & Finance Analysis

## About This Project

This project demonstrates practical SQL skills through sales data analysis. It uses sample transaction data to explore sales performance, product-level revenue, and transaction volume.

The project is designed as a learning portfolio to demonstrate SQL querying, data aggregation, and business-oriented analysis.

## Project Objectives

- Calculate total sales and transaction volume.
- Compare sales performance across products.
- Filter transactions based on product names and sales amounts.
- Identify products with higher sales and transaction counts.
- Practice translating business questions into SQL queries.

## Dataset

The project uses a sample `sales` table with the following columns:

| Column | Description |
|---|---|
| `order_id` | Transaction identifier |
| `order_date` | Transaction date |
| `product_name` | Product name |
| `quantity` | Quantity sold |
| `sales_amount` | Sales value per transaction |

The dataset contains sample transactions for Coffee, Tea, and Chocolate.

## SQL Skills Demonstrated

- `SELECT` and `FROM`
- `WHERE`, `AND`, and `OR`
- `IN`, `BETWEEN`, and `LIKE`
- `DISTINCT`
- `ORDER BY` and `LIMIT`
- Aggregate functions: `SUM()` and `COUNT()`
- `GROUP BY` and `HAVING`
- Column aliases using `AS`
- Combining filtering, aggregation, and sorting

## Tools

- SQL
- SQLite / SQLiteOnline for query practice
- GitHub for version control and documentation

## Repository Structure

- `01_basic_queries.sql` — basic queries, filtering, sorting, and summary calculations.
- `02_filtering_and_aggregation.sql` — advanced filtering, product-level aggregation, and sales analysis.

## Key Findings

Based on the current sample dataset:

- Total sales amount: 6,600
- Total transactions: 10
- Highest product sales: Coffee, with 2,700
- Chocolate sales: 2,100
- Tea sales: 1,800

These findings describe the sample dataset only and should not be interpreted as real business performance.

## Future Improvements

- Analyze monthly sales trends using `order_date`.
- Investigate customer purchasing activity after adding customer-level data.
- Practice table joins using related sample tables.
- Develop more detailed business insights from sales patterns.

## Project Status

In progress — basic querying and product-level sales aggregation are being developed and documented.

## Disclaimer

This is a learning portfolio project using sample data. It does not contain confidential company information.
