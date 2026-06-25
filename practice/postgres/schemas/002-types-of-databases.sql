-- Relational Tables

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,

    CONSTRAINT fk_orders_user
      FOREIGN KEY (user_id)
      REFERENCES users(id)
);

-- NoSQL-like Table Using JSONB

CREATE TABLE user_orders_json (
    id SERIAL PRIMARY KEY,
    data JSONB NOT NULL
);