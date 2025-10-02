# Sales Analysis Project

This project demonstrates how to connect Python with SQLite, run SQL queries, and visualize sales data.

## Files
- `sales_data.db`: SQLite database with sales table
- `main.py`: Python script to query and plot sales summary
- `sales_summary.csv`: CSV export of query results
- `sales_chart.png`: Bar chart of revenue by product

## Steps
1. Connect to the database using `sqlite3`.
2. Run SQL query to calculate total quantity and revenue per product.
3. Import results into pandas DataFrame.
4. Print results and plot bar chart using matplotlib.

## Example SQL Query
```sql
SELECT product, SUM(quantity) AS total_qty, SUM(quantity * price) AS revenue
FROM sales
GROUP BY product;
```

## Outcome
- Learned how to write SQL queries inside Python.
- Imported SQL data into pandas.
- Performed basic data summaries.
- Created first sales chart.
