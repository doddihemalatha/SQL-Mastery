# Database and Its Types

## 1. What is a Database?

A database is an organized collection of related data that allows data to be stored, accessed, managed, and updated efficiently.

### Example

A college database can contain:

- Student details
- Course details
- Attendance
- Marks
- Fees
- Teacher details

A database is not just a single table. A relational database can contain multiple tables and other database objects.

---

## 2. Why Do We Need a Database?

A database is used to:

- Store large amounts of data.
- Organize related data.
- Retrieve data efficiently.
- Update existing data.
- Delete unwanted data.
- Manage data efficiently.

---

# 3. Types of Databases

Databases can be classified into different types based on how they organize and store data.

## 3.1 Relational Database

A relational database stores structured data in tables consisting of rows and columns.

### Example

| StudentID | Name | Age | Course |
|-----------|------|-----|--------|
| 101 | Hema | 20 | BSc DS |
| 102 | Rahul | 21 | BSc CS |

### Examples

- MySQL
- PostgreSQL
- Oracle Database
- Microsoft SQL Server

Relational databases use SQL to store, retrieve, and manage data.

---

## 3.2 NoSQL Database

NoSQL databases do not primarily use the traditional relational table structure.

Common types of NoSQL databases include:

- Document Database
- Key-Value Database
- Graph Database
- Wide-Column Database

### Examples

- MongoDB
- Redis
- Neo4j
- Cassandra

---

## 3.3 Hierarchical Database

A hierarchical database organizes data in a tree-like structure using parent-child relationships.

### Example

College
├── BSc
│   ├── Data Science
│   └── Computer Science
└── BCom

---

## 3.4 Network Database

A network database organizes data using relationships between records.

Unlike a hierarchical database, a record can have multiple parent or related records.

---

## 3.5 Object-Oriented Database

An object-oriented database stores data in the form of objects, similar to objects used in object-oriented programming.

---

# 4. Important Point

Not all databases use tables.

Relational databases primarily use tables, while other database types may use documents, key-value pairs, graphs, or other structures.

---

# 5. Key Takeaways

- A database is an organized collection of related data.
- Databases help store, retrieve, update, and manage data efficiently.
- Relational databases organize data mainly into tables.
- NoSQL databases use different structures such as documents, key-value pairs, and graphs.
- MySQL is a relational database management system (RDBMS).

