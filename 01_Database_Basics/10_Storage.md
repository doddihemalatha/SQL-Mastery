Storage

1. What is Storage?

Storage means keeping data in a place so that it can be used later.

In computers, storage is used to keep digital data such as:

Photos

Videos

Documents

Applications

Database records

Simple Memory

Storage = keeping data for future use.

2. Types of Computer Storage

Computer storage can be broadly understood as Primary Storage and
Secondary Storage.

Primary Storage

Examples:

RAM

Cache

Primary storage is mainly used while the computer is actively working
with data.

Secondary Storage

Examples:

HDD

SSD

Secondary storage is used to keep data persistently.

For databases, persistent storage is especially important because data
needs to remain available even after the system is turned off.

3. RAM vs SSD/HDD

Think about studying.

You take a book from a cupboard and put it on your study table so you
can work with it.

Similarly:

SSD/HDD → RAM → CPU

Data can be stored on an SSD/HDD and brought into RAM when the computer
needs to work with it.

RAM

RAM is temporary working memory.

RAM = work now

When the computer is turned off, data in RAM is generally lost.

SSD/HDD

SSD and HDD provide persistent storage.

SSD/HDD = keep for later

Data stored there remains available after the computer is turned off.

4. What is Persistent Storage?

Persistent storage means storage in which data remains available even
when the system is turned off.

Example

You save a photo on your phone, turn off the phone, and turn it on
again.

The photo is still there.

That is an example of persistent storage.

5. Why is Storage Important for Databases?

Databases can contain huge amounts of important data.

For example, an online shopping system may store:

Customers

Products

Orders

Payments

Delivery information

This data must remain available even when the computer or server is
restarted.

Therefore:

Databases need persistent storage to keep data available for future
use.

6. How is Database Data Stored?

In a relational database, we see data as tables.

Example

Students Table

Student_ID | Name  | Course
-----------|-------|-------------
101        | Hema  | Data Science
102        | Ravi  | BCA
103        | Priya | B.Tech

This is the logical view of the data.

Physically, the database system manages how the records are stored on
storage devices.

Conceptually

Logical View
     ↓
   Table
     ↓
Database System
     ↓
Physical Storage
     ↓
  SSD / HDD

You normally do not need to know the exact physical location of each
record.

The DBMS manages those details.

7. Logical Storage vs Physical Storage

Logical Level

At the logical level, we think about:

Students Table
----------------
Student_ID
Name
Course

We focus on the structure and meaning of the data.

Physical Level

At the physical level, the database system handles:

Where the data is stored

How the data is organized on storage

How stored data is accessed

Simple Memory

Logical = what the data looks like

Physical = how the data is actually stored

8. Storage in a DBMS

Suppose a user sends this SQL query:

SELECT * FROM Students;

The user does not need to specify the exact disk location of the
records.

The DBMS manages the underlying data-access process.

Conceptual Flow

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

The DBMS hides the physical storage details from the user.

9. Storage vs Storage Manager

These two terms are different.

Storage

Storage means the place or mechanism where data is kept.

Examples:

SSD
HDD

Storage Manager

The Storage Manager is a DBMS component/responsibility that manages
how database data is stored and how stored data is accessed.

Simple Analogy

Think about a cupboard:

Cupboard    = Storage
Storekeeper = Storage Manager
Clothes     = Data

The cupboard keeps the clothes.

The storekeeper manages them.

Simple Memory

Storage = where data is kept

Storage Manager = manages storage and access to database data

10. Important Distinction

Storage is the general concept of keeping data.

SSD and HDD are examples of storage devices.

Storage can refer more broadly to the mechanisms and systems used to
retain data.

11. Complete Mental Model

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

Understanding the Flow

Data is the information we want to keep.

A Database organizes that data.

The DBMS manages the database.

Storage Management handles how database data is stored and
accessed.

Physical Storage provides the underlying place for persistent
data.

SSD/HDD are examples of physical storage devices.

12. Key Takeaways

Storage means keeping data so it can be used later.

RAM is mainly temporary working memory.

SSD/HDD provide persistent storage.

Persistent storage keeps data available even after the system is
turned off.

Databases need persistent storage to keep important data available.

A relational database provides a logical view of data through
tables.

The DBMS manages the physical storage details.

Logical level focuses on what the data looks like.

Physical level focuses on how the data is actually stored.

Storage and Storage Manager are not the same.

Storage = where data is kept.

Storage Manager = manages storage and access to database data.

Final Memory

Storage
   ↓
Keeps data

RAM
   ↓
Temporary working memory

SSD / HDD
   ↓
Persistent storage

DBMS
   ↓
Manages database data

Storage Manager
   ↓
Manages storage and access

Remember:

Storage = Keep the data

Storage Manager = Manage the data storage and access
