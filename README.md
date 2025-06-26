# 📦 Inventory Management SQL Project

This SQL project models a basic inventory system used by small businesses or eCommerce stores. It tracks stock, sales, and product categories.

## 📂 Schema Overview

- `categories` – Product categories
- `products` – Product names, stock, and prices
- `sales` – Records quantity and sale info

## Example 📷 
```sql
SELECT p.name, SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.name;
```

## ⚙️ Technologies Used

- MySQL (or compatible)
- Complex queries, conditional filtering, aggregations

## 🔍 Key Queries

- Identify products with low stock
- Calculate revenue per product
- List unsold products

## 📄 Files Included

- `schema.sql` – Defines all tables and inserts example data
- `queries.sql` – Revenue tracking, low-stock filtering

## 💡 Use Case

Useful for business analysis, stock audits, or interview exercises related to backend or database roles.
