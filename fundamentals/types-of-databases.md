# Types of Databases

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Types of Databases](#types-of-databases)
  - [Objective](#objective)
  - [1. Relational Databases (SQL)](#1-relational-databases-sql)
    - [Examples](#examples)
    - [Key Features](#key-features)
    - [When to Use](#when-to-use)
  - [2. NoSQL Databases](#2-nosql-databases)
    - [2.1 Document Databases](#21-document-databases)
      - [Document Examples](#document-examples)
      - [Document Features](#document-features)
      - [Document Use Cases](#document-use-cases)
    - [2.2 Key-Value Databases](#22-key-value-databases)
      - [Key-Value Examples](#key-value-examples)
      - [Key-Value Features](#key-value-features)
      - [Key-Value Use Cases](#key-value-use-cases)
    - [2.3 Graph Databases](#23-graph-databases)
      - [Graph Examples](#graph-examples)
      - [Graph Features](#graph-features)
      - [Graph Use Cases](#graph-use-cases)
  - [Trade-offs](#trade-offs)
  - [Key Insight](#key-insight)
  - [Summary](#summary)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

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

- Financial systems (banking, financial technology)
- Systems requiring strong consistency
- Complex queries and joins

---

## 2. NoSQL Databases

NoSQL databases are **schema-flexible** and designed for scalability and performance.

---

### 2.1 Document Databases

Store data as JSON-like documents.

#### Document Examples

- MongoDB
- CouchDB

#### Document Features

- Flexible schema
- Nested data support
- Easy to evolve structure

#### Document Use Cases

- User profiles
- CMS systems
- APIs with evolving data

---

### 2.2 Key-Value Databases

Store data as simple key-value pairs.

#### Key-Value Examples

- Redis
- DynamoDB (partially)

#### Key-Value Features

- Extremely fast
- Simple structure

#### Key-Value Use Cases

- Caching
- Session storage
- Rate Limiting

---

### 2.3 Graph Databases

Store data as nodes and relationships (edges).

#### Graph Examples

- Neo4j
- Amazon Neptune

#### Graph Features

- Relationship-first design
- Efficient traversal

#### Graph Use Cases

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
