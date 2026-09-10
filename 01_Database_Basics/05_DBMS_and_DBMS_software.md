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

## Relational Database Management System (RDBMS)

An RDBMS is a type of DBMS that mainly stores structured data in tables consisting of rows and columns.

RDBMS software commonly supports:

Tables
Rows
Columns
Relationships between tables
SQL

###Examples
MySQL
PostgreSQL
Oracle Database
Microsoft SQL Server
SQLite

## NoSQL Database Management Systems

NoSQL databases are non-relational database systems designed to work with data models other than traditional relational tables.

Common NoSQL models include:

Document
Key-value
Graph
Wide-column

###Examples
MongoDB
Redis
Neo4j
Cassandra

###Document Database
Definition

A document database stores data as documents, commonly using formats such as JSON-like structures.

####Example
{
  "student_id": 101,
  "name": "Hema",
  "department": "Data Science",
  "skills": ["Python", "SQL", "Tableau"]
}

Instead of storing this information in rows and columns, the complete record can be represented as a document.

####Examples
MongoDB
CouchDB
Couchbase

####Common Uses
Web applications
Content management
Product catalogs
User profiles
Applications with flexible data structures

###Key-Value Database
Definition

A key-value database stores information as a collection of key-value pairs.

####Example
Key              Value
------------------------------
student:101      Hema
student:102      Ravi
student:103      Priya

The key is used to identify and retrieve the corresponding value.

####Examples
Redis
Amazon DynamoDB
Riak

####Common Uses
Caching
Session management
Real-time applications
Fast lookups

###Wide-Column Database
Definition

A wide-column database organizes data using rows and flexible columns grouped into column families.

It is designed for large-scale distributed data workloads.

####Examples
Apache Cassandra
HBase
Google Cloud Bigtable

####Common Uses
Large-scale applications
Distributed systems
Time-series workloads
High-volume data processing

###Graph Database
Definition

A graph database represents data using:

Nodes
Relationships
Properties
Example
Hema
  │
  │ follows
  ↓
Priya
  │
  │ follows
  ↓
Ravi

Here:

Hema = Node
Priya = Node
Ravi = Node
"follows" = Relationship
####Examples
Neo4j
Amazon Neptune
ArangoDB

####Common Uses
Social networks
Recommendation systems
Fraud detection
Network analysis
Relationship-heavy applications


##Hierarchical Database Management Systems

A hierarchical database organizes data in a tree-like structure using parent-child relationships.

####Example:

University
│
├── Department
│   ├── Student
│   └── Student
│
└── Department
    ├── Student
    └── Student

Data is organized from parent to child.

###Network Database Management Systems

A network database represents data using relationships between records.

Unlike a simple hierarchical structure, a record can have relationships with multiple other records.

This allows more complex relationships between data.

##Object-Oriented Database Management Systems

An object-oriented database stores data in the form of objects, similar to the object-oriented programming concept.

Objects can contain:

Data
Attributes
Methods

These databases are useful for applications that work heavily with object-oriented programming concepts.
