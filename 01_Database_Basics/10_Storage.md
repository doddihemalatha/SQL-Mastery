# Storage

## 1. What is Storage?

**Storage means keeping data in a place so that it can be used later.**

In computers, storage is used to keep digital data such as:

* Photos
* Videos
* Documents
* Applications
* Database records

### Simple Memory

> **Storage = keeping data for future use.**

---

# 2. Types of Computer Storage

Computer storage can be broadly understood as **Primary Storage** and **Secondary Storage**.

## Primary Storage

Primary storage is mainly used while the computer is actively working with data.

Examples:

* RAM
* Cache

Primary storage provides fast access to data needed during processing.

### Simple Memory

> **Primary Storage = Used while the computer is working**

## Secondary Storage

Secondary storage is used to keep data **persistently**.

Examples:

* HDD
* SSD

Secondary storage retains data even when the computer is turned off.

For databases, persistent storage is especially important because database data needs to remain available after a system restart or shutdown.

### Simple Memory

> **Secondary Storage = Keep data for later**

---

# 3. RAM vs SSD/HDD

Think about studying.

You take a book from a cupboard and put it on your study table so you can work with it.

Similarly:

```text
SSD / HDD
    ↓
  RAM
    ↓
  CPU
```

Data can be stored on an SSD or HDD and brought into RAM when the computer needs to work with it.

## RAM

**RAM (Random Access Memory)** is temporary working memory used by the computer while programs are running.

> **RAM = Work now**

When the computer is turned off, the data stored in RAM is generally lost.

## SSD/HDD

**SSD (Solid-State Drive)** and **HDD (Hard Disk Drive)** provide persistent storage.

> **SSD/HDD = Keep for later**

Data stored on them remains available after the computer is turned off.

### Simple Comparison

| Feature                       | RAM                      | SSD/HDD                |
| ----------------------------- | ------------------------ | ---------------------- |
| Purpose                       | Temporary working memory | Persistent storage     |
| Data retained after shutdown? | Generally no             | Yes                    |
| Speed                         | Very fast                | Slower than RAM        |
| Main use                      | Active processing        | Long-term data storage |

---

# 4. What is Persistent Storage?

**Persistent storage** means storage in which data remains available even when the system is turned off.

### Example

You save a photo on your phone.

Then:

```text
Save Photo
    ↓
Turn off phone
    ↓
Turn on phone
    ↓
Photo is still available
```

The photo is stored in persistent storage.

### Simple Definition

> **Persistent storage keeps data even when the system is powered off.**

---

# 5. Why is Storage Important for Databases?

Databases can contain huge amounts of important data.

For example, an online shopping system may store:

* Customers
* Products
* Orders
* Payments
* Delivery information

This data must remain available even when the computer or server is restarted.

Therefore:

> **Databases need persistent storage to keep data available for future use.**

### Example

Imagine an online shopping database stores an order:

```text
Order ID: 5001
Customer: Hema
Product: Laptop
Amount: ₹50,000
```

If this information were stored only in RAM, it would generally be lost when the system shuts down.

The database therefore relies on persistent storage to retain important data.

---

# 6. How is Database Data Stored?

In a relational database, we see data as **tables**.

### Example

```text
Students Table

Student_ID | Name  | Course
-----------|-------|-------------
101        | Hema  | Data Science
102        | Ravi  | BCA
103        | Priya | B.Tech
```

This is the **logical view** of the data.

Physically, the database system manages how the records are stored on persistent storage.

### Conceptual Flow

```text
Logical View
     ↓
   Table
     ↓
   DBMS
     ↓
Physical Storage
     ↓
 SSD / HDD
```

You normally do not need to know the exact physical location of each record.

The **DBMS manages those details**.

---

# 7. Logical Storage vs Physical Storage

## Logical Level

At the logical level, we think about the structure and meaning of the data.

For example:

```text
Students Table
----------------
Student_ID
Name
Course
```

We focus on:

* What data exists
* How the data is organized
* How different pieces of data are related

### Simple Memory

> **Logical = What the data looks like**

---

## Physical Level

At the physical level, the database system handles details related to how data is stored and accessed.

This includes:

* Where the data is stored
* How the data is organized on storage
* How stored data is accessed
* How storage structures are managed

Users normally do not need to know these details.

### Simple Memory

> **Physical = How the data is actually stored**

---

# 8. Storage in a DBMS

Suppose a user sends this SQL query:

```sql
SELECT * FROM Students;
```

The user does not need to specify the exact physical location of the student records.

The DBMS manages the underlying data-access process.

### Conceptual Flow

```text
User
  ↓
SQL Query
  ↓
DBMS
  ↓
Data Access / Storage Management
  ↓
Physical Storage
  ↓
SSD / HDD
```

The DBMS hides the physical storage details from the user.

### What the User Knows

The user knows:

```text
Students Table
```

and can execute:

```sql
SELECT * FROM Students;
```

### What the DBMS Handles

The DBMS handles the internal process of:

```text
Finding the required data
        ↓
Accessing the stored data
        ↓
Reading the required records
        ↓
Returning the result
```

The exact internal implementation depends on the DBMS.

---

# 9. Storage vs Storage Manager

These two terms are different.

## Storage

**Storage** means the place or mechanism where data is kept.

Examples:

```text
SSD
HDD
```

Storage provides the underlying persistent medium for retaining data.

### Simple Memory

> **Storage = Where data is kept**

---

## Storage Manager

The **Storage Manager** is a component/responsibility within a DBMS that manages how database data is stored, retrieved, and accessed at the storage level.

It acts as a bridge between higher-level database operations and the underlying storage system.

Conceptually:

```text
Database Operations
        ↓
Storage Manager
        ↓
Storage
```

### Simple Analogy

Think about a cupboard:

```text
Cupboard    = Storage
Storekeeper = Storage Manager
Clothes     = Data
```

The cupboard provides the place where the clothes are kept.

The storekeeper manages how the clothes are organized and retrieved.

### Simple Memory

> **Storage = Where data is kept**

> **Storage Manager = Manages storage and access to database data**

---

# 10. Important Distinction

Storage and storage devices should not be treated as exactly the same concept.

### Storage

**Storage** is the general concept of retaining data.

### Storage Device

A **storage device** is hardware used to store data.

Examples:

```text
SSD
HDD
```

So:

```text
Storage
   ↓
General concept of keeping data

Storage Device
   ↓
Physical hardware used to retain data

Examples
   ↓
SSD
HDD
```

Storage can refer more broadly to the mechanisms and systems used to retain data.

---

# 11. Database Storage and Memory

It is important to understand the difference between **memory used for active processing** and **persistent storage**.

A simplified view is:

```text
Persistent Storage
       ↓
     RAM
       ↓
     CPU
```

### Persistent Storage

Examples:

* SSD
* HDD

Purpose:

> Keep data for the long term.

### RAM

Purpose:

> Hold data and instructions needed for active processing.

### CPU

Purpose:

> Execute instructions and perform processing.

### Simple Mental Model

```text
SSD/HDD → Keep data
RAM     → Work with data
CPU     → Process data
```

This is a simplified model. Modern computer systems have additional layers such as CPU caches and other memory/storage mechanisms.

---

# 12. Complete Mental Model

The relationship between data, database, DBMS, storage management, and physical storage can be understood as:

```text
DATA
  ↓
DATABASE
  ↓
DBMS
  ↓
STORAGE MANAGEMENT
  ↓
PHYSICAL STORAGE
  ↓
SSD / HDD
```

### Understanding the Flow

### 1. Data

Data is the information we want to keep.

Example:

```text
Student_ID = 101
Name = Hema
Course = Data Science
```

### 2. Database

A database organizes related data so that it can be stored and managed systematically.

### 3. DBMS

The DBMS is software that manages the database.

It allows users and applications to perform operations such as:

* Create
* Read
* Update
* Delete

### 4. Storage Management

The DBMS manages how database data is stored and accessed.

### 5. Physical Storage

Physical storage provides the persistent medium where data can be retained.

### 6. SSD/HDD

SSD and HDD are examples of physical storage devices.

---

# 13. Example: Retrieving Student Data

Suppose the database contains:

```text
Students

Student_ID | Name  | Course
-----------|-------|-------------
101        | Hema  | Data Science
102        | Ravi  | BCA
103        | Priya | B.Tech
```

The user executes:

```sql
SELECT * FROM Students;
```

Conceptually:

```text
User
  ↓
SQL Query
  ↓
DBMS
  ↓
Storage Management
  ↓
Persistent Storage
  ↓
Stored Database Data
  ↓
DBMS
  ↓
Result
  ↓
User
```

The user does not need to know the physical location of the records.

The DBMS handles the underlying storage and retrieval process.

---

# 14. Logical View vs Physical Storage

The same database can be understood at two different levels.

### Logical View

The user or application thinks in terms of:

```text
Database
   ↓
Table
   ↓
Rows
   ↓
Columns
```

Example:

```text
Students
-----------------------------
Student_ID | Name | Course
```

### Physical View

The DBMS deals with details such as:

```text
Database Files
       ↓
Storage Structures
       ↓
Indexes
       ↓
Physical Storage
```

The exact implementation varies between database systems.

### Important Point

> **Users generally work with the logical representation, while the DBMS manages the physical storage details.**

---

# 15. Key Takeaways

* **Storage** means keeping data so it can be used later.
* **RAM** is mainly temporary working memory.
* **SSD/HDD** provide persistent storage.
* **Persistent storage** keeps data available even after the system is turned off.
* Databases need persistent storage to retain important data.
* A relational database provides a logical view of data through tables.
* The DBMS manages the physical storage details.
* **Logical level** focuses on what the data looks like.
* **Physical level** focuses on how the data is actually stored.
* **Storage** and **Storage Manager** are not the same.
* **Storage = Where data is kept.**
* **Storage Manager = Manages storage and access to database data.**
* The exact physical storage implementation depends on the DBMS and underlying system.

---

# 16. Final Memory

```text
                 STORAGE
                    ↓
              Keeps the data
                    ↓
        ┌───────────┴───────────┐
        ↓                       ↓
      RAM                    SSD / HDD
        ↓                       ↓
 Temporary working          Persistent
    memory                   storage
        ↓                       ↓
     Work now              Keep for later
```

For databases:

```text
DATA
  ↓
DATABASE
  ↓
DBMS
  ↓
STORAGE MANAGEMENT
  ↓
PHYSICAL STORAGE
  ↓
SSD / HDD
```

### Remember

> **Storage = Keep the data**

> **Storage Device = Physical hardware used to retain data**

> **Storage Manager = Manage database storage and access**

> **RAM = Work with data temporarily**

> **SSD/HDD = Keep data persistently**
