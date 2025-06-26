-- Low stock
SELECT name, stock FROM products WHERE stock < 10;

-- Revenue per product
SELECT p.name, SUM(s.quantity_sold * p.price) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.name;

-- Products never sold
SELECT name FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM sales);
