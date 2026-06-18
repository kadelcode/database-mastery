<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [PostgreSQL Cheat Sheet](#postgresql-cheat-sheet)
  - [Connect](#connect)
  - [Database Commands](#database-commands)
    - [List databases:](#list-databases)
    - [Connect to database:](#connect-to-database)
    - [Current database:](#current-database)
  - [Table Commands](#table-commands)
    - [List tables:](#list-tables)
    - [Describe table:](#describe-table)
    - [Show all columns:](#show-all-columns)
  - [CRUD](#crud)
    - [Insert](#insert)
    - [Select](#select)
    - [Filter](#filter)
    - [Update](#update)
    - [Delete](#delete)
    - [Aggregation](#aggregation)
  - [Joins](#joins)
  - [Utility](#utility)
- [MongoDB Cheat Sheet](#mongodb-cheat-sheet)
  - [Connect](#connect-1)
  - [Database Commands](#database-commands-1)
    - [Show databases:](#show-databases)
    - [Use database:](#use-database)
    - [Current database:](#current-database-1)
  - [Collection Commands](#collection-commands)
    - [Show collections:](#show-collections)
    - [Create collection:](#create-collection)
    - [Drop collection:](#drop-collection)
  - [CRUD](#crud-1)
    - [Insert One](#insert-one)
    - [Insert Many](#insert-many)
    - [Find All](#find-all)
      - [Pretty Print](#pretty-print)
    - [Filter](#filter-1)
    - [Update](#update-1)
    - [Delete](#delete-1)
  - [Count](#count)
  - [Nested Query](#nested-query)
  - [Aggregation](#aggregation-1)
  - [Utility](#utility-1)
    - [Exit:](#exit)
- [Redis Cheat Sheet](#redis-cheat-sheet)
  - [Connect](#connect-2)
  - [Key Commands](#key-commands)
    - [List keys:](#list-keys)
    - [Check existence:](#check-existence)
    - [Delete key:](#delete-key)
  - [String Operations](#string-operations)
    - [Set value:](#set-value)
    - [Get value:](#get-value)
    - [Increment:](#increment)
  - [Hash Operations](#hash-operations)
    - [Create hash:](#create-hash)
    - [Get all fields:](#get-all-fields)
    - [Get one field:](#get-one-field)
  - [List Operations](#list-operations)
    - [Push item:](#push-item)
    - [View list:](#view-list)
    - [Pop item:](#pop-item)
  - [Set Operations](#set-operations)
    - [Add member:](#add-member)
    - [View members:](#view-members)
    - [Check membership:](#check-membership)
  - [Sorted Set Operations](#sorted-set-operations)
    - [Add score:](#add-score)
    - [View ranking:](#view-ranking)
    - [Expiration](#expiration)
  - [Utility](#utility-2)
    - [Clear database:](#clear-database)
    - [Exit:](#exit-1)
- [Docker Commands (You'll Use These Daily)](#docker-commands-youll-use-these-daily)
  - [View containers:](#view-containers)
  - [Start containers:](#start-containers)
  - [Stop containers:](#stop-containers)
  - [View logs:](#view-logs)
  - [Enter PostgreSQL:](#enter-postgresql)
  - [Enter MongoDB:](#enter-mongodb)
  - [Enter Redis:](#enter-redis)
- [Mental Model](#mental-model)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# PostgreSQL Cheat Sheet

## Connect

```bash
docker exec -it pg-mastery psql -U admin -d mastery
```

## Database Commands

### List databases:

```sql
\l
```

### Connect to database:

```sql
\c mastery
```

### Current database:

```sql
SELECT current_database();
```

## Table Commands

### List tables:

```sql
\dt
```

### Describe table:
```
\d users
```

### Show all columns:

```sql
\d+ users
```

## CRUD

### Insert

```sql
INSERT INTO users (name)
VALUES ('Alice');
```

### Select

```sql
SELECT * FROM users;
```

### Filter

```sql
SELECT * FROM users
WHERE name = 'Alice';
```

### Update

```sql
UPDATE users
SET name = 'Bob'
WHERE id = 1;
```

### Delete

```sql
DELETE FROM users
WHERE id = 1;
```

### Aggregation

Count:

```sql
SELECT COUNT(*) FROM users;
```

Sum:

```sql
SELECT SUM(amount) FROM orders;
```

Average:

```sql
SELECT AVG(amount) FROM orders;
```

## Joins

```sql
SELECT u.name, o.product
FROM users u
JOIN orders o
ON u.id = o.user_id;
```

## Utility

Run file:

```sql
\i schema.sql
```

Exit:

```
\q
```

# MongoDB Cheat Sheet

## Connect

```bash
docker exec -it mongo-mastery mongosh
```

## Database Commands

### Show databases:

```javascript
show dbs
```

### Use database:

```javascript
use("mastery")
```

### Current database:

```javascript
db
```

## Collection Commands

### Show collections:

```javascript
show collections
```

### Create collection:

```javascript
db.createCollections("users")
```

### Drop collection:

```javascript
db.users.drop()
```

## CRUD

### Insert One

```javascript
db.users.insertOne({
    name: "Alice"
})
```

### Insert Many

```javascript
db.users.insertMany([
    { name: "Alice" },
    { name: "Bob" }
])
```

### Find All

```javascript
db.users.find()
```

#### Pretty Print

```javascript
db.users.find().pretty()
```

### Filter

```javascript
db.users.find({
    name: "Alice"
})
```

### Update

```javascript
db.users.updateOne(
    { name: "Alice" },
    { $set: { name: "Bob" }}
)
```

### Delete

```javascript
db.users.deleteOne({
    name: "Bob"
})
```

## Count

```javascript
db.users.countDocuments()
```

## Nested Query

```javascript
db.users.find({
    "orders.product": "Laptop"
})
```

## Aggregation

```javascript
db.users.aggregate([
    {
        $group: {
            _id: "$name",
            count: { $sum: 1 }
        }
    }
])
```

## Utility

### Exit:

```javascript
exit
```

# Redis Cheat Sheet

## Connect

```bash
docker exec -it redis-mastery redis-cli
```

## Key Commands

### List keys:

```redis
KEYS *
```

### Check existence:

```redis
EXISTS user:1
```

### Delete key:

```redis
DEL user:1
```

## String Operations

### Set value:

```redis
SET user:1 "Alice"
```

### Get value:

```redis
GET user:1
```

### Increment:

```redis
INCR visits
```

## Hash Operations

### Create hash:

```redis
HSET user:1 name Alice age 25
```

### Get all fields:

```redis
HGETALL user:1
```

### Get one field:

```redis
HGET user:1 name
```

## List Operations

### Push item:

```redis
LPUSH tasks "Task A"
```

### View list:

```redis
LRANGE tasks 0 -1
```

### Pop item:

```redis
LPOP tasks
```

## Set Operations

### Add member:

```redis
SADD tags backend database
```

### View members:

```redis
SMEMBERS tags
```

### Check membership:

```redis
SISMEMBER tags backend
```

## Sorted Set Operations

### Add score:

```redis
ZADD leaderboard 100 Alice
```

### View ranking:

```redis
ZRANGE leaderboard 0 -1 WITHSCORES
```

### Expiration

Expire in 60 seconds:

```redis
EXPIRE user:1 60
```

Check TTL:

```redis
TTL user:1
```

## Utility

### Clear database:

```redis
FLUSHDB
```

### Exit:

```redis
QUIT
```

# Docker Commands (You'll Use These Daily)

## View containers:

```bash
docker ps
```

## Start containers:

```bash
docker compose up -d
```

## Stop containers:

```bash
docker compose down
```

## View logs:

```bash
docker logs pg-mastery
docker logs mongo-mastery
docker logs redis-mastery
```

## Enter PostgreSQL:

```bash
docker exec -it pg-mastery psql -U admin -d mastery
```

## Enter MongoDB:

```
docker exec -it mongo-mastery mongosh
```

## Enter Redis:

```bash
docker exec -it redis-mastery redis-cli
```

# Mental Model

As you practice, think of them like this:

| Database   | Stores Data As | Best At                                |
| ---------- | -------------- | -------------------------------------- |
| PostgreSQL | Tables         | Relationships, transactions, reporting |
| MongoDB    | Documents      | Flexible schemas, nested data          |
| Redis      | Keys           | Caching, sessions, fast lookups        |
