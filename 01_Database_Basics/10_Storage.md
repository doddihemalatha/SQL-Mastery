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
