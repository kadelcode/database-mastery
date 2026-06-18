-- Users

INSERT INTO users (name)
VALUES
  ('Alice'),
  ('Bob');


-- Orders

INSERT INTO orders (user_id, product, amount)
VALUES
  (1, 'Laptop', 1200.00),
  (1, 'Mouse', 25.00),
  (2, 'Keyboard', 75.00);


-- JSON Data

INSERT INTO user_orders_json (data)
VALUES
(
    '{
        "name": "Alice",
        "orders": [
            {
                "product": "Laptop",
                "amount": 1200
            },
            {
                "product": "Mouse",
                "amount": 25
            }
        ]
    }'
),
(
    '{
        "name": "Bob",
        "orders": [
            {
                "product": "Keyboard",
                "amount": 75
            }
        ]
    }'
);
