-- 1. Проверка клиентов без email
SELECT *
FROM customers
WHERE email IS NULL OR email = '';


-- 2. Проверка товаров с некорректной ценой
SELECT *
FROM products
WHERE price <= 0;


-- 3. Проверка заказов с некорректным статусом
SELECT *
FROM orders
WHERE status NOT IN ('Completed', 'Pending', 'Cancelled');


-- 4. Проверка товаров с нулевым или отрицательным количеством
SELECT *
FROM order_items
WHERE quantity <= 0;


-- 5. Проверка заказов без клиента
SELECT *
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- 6. Проверка позиций заказов без товара
SELECT *
FROM order_items oi
LEFT JOIN products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;
