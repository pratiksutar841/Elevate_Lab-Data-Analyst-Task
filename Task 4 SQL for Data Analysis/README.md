# SQL Task 4 - Data Analysis

This repository contains SQL scripts and queries for the Data Analyst Internship Task 4.

## Contents
- `schema.sql` → Create tables for Ecommerce database
- `sample_data.sql` → Insert dummy data (users, products, orders, order_items)
- `task4_queries.sql` → Queries covering SELECT, WHERE, GROUP BY, JOINS, subqueries, HAVING, views
- `README.md` → This documentation

## How to Run
1. Open MySQL Workbench (or CLI).
2. Create a new database:
   ```sql
   CREATE DATABASE ecommerce_db;
   USE ecommerce_db;
   ```
3. Run `schema.sql` to create tables.
4. Run `sample_data.sql` to insert test data.
5. Run queries from `task4_queries.sql` to perform analysis.

## Queries Included
- Customers from India after 2022
- Average Revenue per User (ARPU)
- Top 5 products by sales
- Monthly sales trend
- Customers with spend > 1000
- Create customer revenue view
- Subquery: high-value customers

## Output
Take screenshots of query execution results in MySQL Workbench or phpMyAdmin and add them to your GitHub repo.
