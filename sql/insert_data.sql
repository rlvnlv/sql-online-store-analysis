-- Добавляем клиентов
INSERT INTO customers (customer_id, first_name, last_name, email, city)
VALUES
(1, 'Anna', 'Ivanova', 'anna@example.com', 'Moscow'),
(2, 'Petr', 'Smirnov', 'petr@example.com', 'Saint Petersburg'),
(3, 'Maria', 'Petrova', 'maria@example.com', 'Kazan'),
(4, 'Alex', 'Sidorov', 'alex@example.com', 'Moscow'),
(5, 'Elena', 'Kozlova', 'elena@example.com', 'Kazan');

-- Добавляем товары
INSERT INTO products (product_id, product_name, category, price)
VALUES
(1, 'Laptop', 'Electronics', 75000.00),
(2, 'Mouse', 'Electronics', 1500.00),
(3, 'Keyboard', 'Electronics', 3500.00),
(4, 'Desk', 'Furniture', 12000.00),
(5, 'Chair', 'Furniture', 8500.00),
(6, 'Headphones', 'Electronics', 5000.00);

-- Добавляем заказы
INSERT INTO orders (order_id, customer_id, order_date, status)
VALUES
(1, 1, '2026-10-01', 'Completed'),
(2, 2, '2026-10-02', 'Completed'),
(3, 1, '2026-10-05', 'Pending'),
(4, 3, '2026-10-07', 'Completed'),
(5, 4, '2026-10-10', 'Cancelled'),
(6, 5, '2026-10-12', 'Completed');

-- Добавляем товары в заказы
INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 2, 6, 1),
(5, 3, 4, 1),
(6, 4, 5, 2),
(7, 5, 2, 1),
(8, 6, 1, 1),
(9, 6, 6, 2);
