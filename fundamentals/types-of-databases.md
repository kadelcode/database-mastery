# Types of Databases

## Objective
Understand different types of databases and when to use them.

---

## 1. Relational Databases (SQL)

Relational databases store data in **tables (rows and columns)** with predefined schemas.

### Examples
- PostgreSQL
- MySQL
- SQLite

### Key Features
- Structured schema
- Relationships (foreign keys)
- ACID compliance (strong consistency)
- SQL querying

### When to Use
- Financial systems (banking, fintech)
- Systems requiring strong consistency
- Complex queries and joins

---

## 2. NoSQL Databases

NoSQL databases are **schema-flexible** and designed for scalability and performance.

---

## 2.1 Document Databases

Store data as JSON-like documents.

#### Examples
- MongoDB
- CouchDB

#### Features
- Flexible schema
- Nested data support
- Easy to evolve structure

#### Use Cases
- User profiles
- CMS systems
- APIs with evolving data

---

### 2.2 Key-Value Databases

Store data as simple key-value pairs.

#### Examples
- Redis
- DynamoDB (partially)

#### Features
- Extremely fast
- Simple structure

### Use Cases
- Caching
- Session storage
- Rate Limiting

---

### 2.3 Graph Databases

Store data as nodes and relationships (edges).

#### Examples
- Neo4j
- Amazon Neptune

#### Features
- Relationship-first design
- Efficient traversal

#### Use Cases
- Social networks
- Recommendation systems
- Fraud detection

---

## Trade-offs

| Feature                | Relational (SQL)            | NoSQL                         |
|------------------------|-----------------------------|-------------------------------|
| Schema                 | Fixed                       | Flexible                      |
| Scalability            | Vertical (mostly)           | Horizontal                    |
| Consistency            | Strong (ACID)               | Eventual (often)              |
| Query Complexity       | Powerful (JOINs)            | Limited (depends on type)     |
| Performance            | Moderate                    | High (specific use cases)     |
| Flexibility            | Low                         | High                          |

---

## Key Insight

- Use **SQL** when correctness matters more than speed.
- Use **NoSQL** when scale and flexibility matter more than strict structure.
- In real systems, **you often use BOTH**.

Example:
- PostgreSQL -> transactions
- Redis -> caching
- MongoDB -> flexible user data

---

## Summary

There is no "best" database

Only the **right database for the problem**.