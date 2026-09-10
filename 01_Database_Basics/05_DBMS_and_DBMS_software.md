# DBMS and DBMS Software

## 1. What is DBMS?

**DBMS (Database Management System)** is software that allows users and applications to create, store, retrieve, update, delete, and manage data in a database.

A DBMS also provides features such as:

- Data security
- Data integrity
- Concurrency control
- Backup and recovery
- Efficient data management

### Simple Definition

> A DBMS is software used to manage data stored in a database.

---

## 2. Database vs DBMS

These two terms are different.

### Database

A **database** is an organized collection of related data.

### DBMS

A **DBMS** is software that manages that database.

### Example

```text
Database
    ↓
Contains the actual data

DBMS
    ↓
Manages the database
```

# Types of DBMS

A **Database Management System (DBMS)** can be classified based on how it organizes and manages data.

The major types of DBMS are:

1. Hierarchical DBMS
2. Network DBMS
3. Relational DBMS (RDBMS)
4. Object-Oriented DBMS
5. NoSQL DBMS

---

## 1. Hierarchical DBMS

A **Hierarchical DBMS** organizes data in a **tree-like structure** using parent-child relationships.

Each child record is generally associated with one parent.

### Example

```text
University
│
├── Computer Science
│   ├── Student 1
│   └── Student 2
│
└── Data Science
    ├── Student 3
    └── Student 4
