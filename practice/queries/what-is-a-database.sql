-- Query all users
SELECT * FROM users;

-- Query transactions for a specific user
SELECT * FROM transactions WHERE user_id = 1;

-- Calculate total balance change per user
SELECT
    user_id,
    SUM(CASE
        WHEN type = 'credit' THEN amount
        ELSE -amount
    END) AS net_change
FROM transactions
GROUP BY user_id;