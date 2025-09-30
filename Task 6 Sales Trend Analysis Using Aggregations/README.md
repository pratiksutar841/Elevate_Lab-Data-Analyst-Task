# Task 6 - Sales Trend Analysis

This folder contains SQL scripts, dataset, and results for Task 6 (Sales Trend Analysis).

## Files
- `schema.sql` → Table definition for `online_sales`
- `sample_data.sql` → Insert statements with synthetic data (3 years: 2022-2024)
- `online_sales.csv` → Dataset in CSV format
- `task6_sales_trend.sql` → SQL queries for monthly revenue, order volume, and top months
- `results_monthly.csv` → Query output: monthly revenue & order volume
- `results_top3.csv` → Query output: top 3 months by revenue
- `results_2024.csv` → Query output: revenue trend for 2024

## How to Run
1. Create database in MySQL or PostgreSQL.
2. Run `schema.sql` to create table.
3. Run `sample_data.sql` to insert synthetic data.
4. Execute queries in `task6_sales_trend.sql`.
5. Compare with included results CSVs.

## Insights
- Monthly revenue and order volume vary by month.
- Top 3 months by revenue show seasonal peaks.
- 2024 revenue trend available separately.
