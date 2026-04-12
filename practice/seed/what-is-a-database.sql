-- Seed users
INSERT INTO users (name, email, balance)
VALUES
('Alice', 'alice@example.com', 0),
('Bob', 'bob@example.com', 0);

-- Seed transactions
INSERT INTO transactions (user_id, amount, type)
VALUES
(1, 2000, 'debit'),
(1, 5000, 'credit'),
(2, 1000, 'debit');