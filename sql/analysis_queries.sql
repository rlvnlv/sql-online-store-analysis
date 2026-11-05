-- 1. Получаем список всех клиентов
SELECT *
FROM customers;


-- 2. Находим все товары дороже 5000
SELECT product_name, category, price
FROM products
WHERE price > 5000
ORDER BY price DESC;


-- 3. Получаем список завершённых заказов
SELECT order_id, customer_id, order_date
FROM orders
WHERE status = 'Completed'
ORDER BY order_date;


-- 4. Считаем общую стоимость каждого завершённого заказа
SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * p.price) AS order_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY o.order_id, c.first_name, c.last_name
ORDER BY order_total DESC;


-- 5. Считаем количество проданных единиц каждого товара
SELECT
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC;


-- 6. Считаем выручку по категориям товаров
SELECT
    p.category,
    SUM(oi.quantity * p.price) AS category_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.category
ORDER BY category_revenue DESC;
