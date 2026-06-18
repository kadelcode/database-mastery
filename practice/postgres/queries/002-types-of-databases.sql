-- Relational Query (JOIN)
SELECT u.name, o.product, o.amount
FROM users u
JOIN orders o ON u.id = o.user_id;

-- Aggregation (Relational Strength)
SELECT u.name, SUM(o.amount) AS total_spent
FROM users u
JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name;

-- JSON Query (NoSQL-like)
SELECT
    data->>'name' AS name,
    jsonb array elements(data->'orders') AS order_info
FROM user_orders_json;

-- Extract Nested JSON Fields
SELECT
    data->>'name' AS name,
    order_item->>'product' AS product,
    (order_item->>'amount')::DECIMAL AS amount
FROM user_orders_json,
jsonb_array_elements(data->'orders') AS order_item;
