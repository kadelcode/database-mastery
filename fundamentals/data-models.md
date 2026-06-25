# Data Models

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Objective](#objective)
- [What is a Data Model?](#what-is-a-data-model)
- [Relational Model](#relational-model)
  - [Students](#students)
  - [Courses](#courses)
- [Tables, Rows, and Columns](#tables-rows-and-columns)
  - [Table](#table)
  - [Row](#row)
  - [Column](#column)
- [Entity-Relationship (ER) Model](#entity-relationship-er-model)
  - [Entity](#entity)
  - [Attribute](#attribute)
  - [Relationship](#relationship)
- [ER Example](#er-example)
- [Mapping ER Models to Tables](#mapping-er-models-to-tables)
- [Key Concepts](#key-concepts)
  - [Primary Key](#primary-key)
  - [Foreign Key](#foreign-key)
  - [Relationship Types](#relationship-types)
- [Summary](#summary)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Objective

Understand how data is structured in databases using the relational model and entity-relationship (ER) modeling.

---

## What is a Data Model?

A data model defines how data is organized, stored, and related within a database.

It serves as a blueprint for designing databases and ensures data can be stored and retrieved efficiently.

---

## Relational Model

The relational model organizes data into tables.

Each table contains:

- Rows (records)
- Columns (attributes)

Example:

### Students

| id | name  |
| -- | ----- |
| 1  | Alice |
| 2  | Bob   |

### Courses

| id | title            |
| -- | ---------------- |
| 1  | Database Design  |
| 2  | SQL Fundamentals |

Each table represents a single entity.

---

## Tables, Rows, and Columns

### Table

A collection of related data.

Example:

Students

### Row

A single record in a table.

Example:

| id | name  |
| -- | ----- |
| 1  | Alice |

### Column

A specific attribute of an entity.

Example:

| Column |
| ------ |
| id     |
| name   |

---

## Entity-Relationship (ER) Model

An ER model describes:

- Entities
- Attributes
- Relationships

before implementing the database.

### Entity

A real-world object.

Examples:

- Student
- Course
- Instructor

### Attribute

A property of an entity.

Student:

- id
- name
- email

### Relationship

A connection between entities.

Examples:

- Student enrolls in Course
- Customer places Order

---

## ER Example

University Enrollment System

```text
Student
--------
id
name

        enrolls in

Course
--------
id
title
```

Many students can enroll in many courses.

This is a many-to-many relationship.

To implement it in a relational database we use a junction table:

```text
Student
    |
    | 1..*
    |
Enrollment
    |
    | *..1
    |
Course
```

---

## Mapping ER Models to Tables

Student

| Column |
| ------ |
| id     |
| name   |

Course

| Column |
| ------ |
| id     |
| title  |

Enrollment

| Column     | Key Type                  |
| ---------- | ------------------------- |
| student_id | Primary Key, Foreign Key  |
| course_id  | Primary Key, Foreign Key  |

The `Enrollment` table is a junction table that implements the many-to-many relationship between `Students` and `Courses`.

It uses a **composite primary key** (`student_id`, `course_id`) to ensure that each student can only be enrolled in the same course once.

Both columns are also **foreign keys**:

- `student_id` references `students(id)`
- `course_id` references `courses(id)`

---

## Key Concepts

### Primary Key

Uniquely identifies a row.

Example:

student.id

### Foreign Key

References another table.

Example:

enrollment.student_id → students.id

### Relationship Types

One-to-One (1:1)

Example:

User ↔ Profile

One-to-Many (1:N)

Example:

Customer → Orders

Many-to-Many (M:N)

Example:

Students ↔ Courses

---

## Summary

The relational model stores data in tables.

ER models help visualize entities and relationships before implementation.

Good data modeling leads to:

- Better database design
- Easier querying
- Reduced redundancy
- Improved maintainability
