# File System vs Database

## 1. What is a File System?

A file system is a method of storing and managing data in files on a computer.

Before databases became common, organizations often stored information in separate files.

Examples:

- Students.txt
- Marks.txt
- Attendance.txt
- Fees.txt

In a traditional file system, applications are responsible for managing much of the data stored in these files.

---

## 2. What is a Database?

A database is an organized collection of related data that is managed using a Database Management System (DBMS).

In a relational database, related data is organized into tables.

A DBMS provides mechanisms to store, retrieve, insert, update, delete, secure, and manage data.

---

## 3. Core Difference

### File System

Data is mainly stored in separate files and managed through application programs.

### Database

Data is stored in an organized database and managed through a DBMS.

---

## 4. Problems with File Systems

As the amount and complexity of data increase, traditional file systems can create several problems:

- Data redundancy
- Data inconsistency
- Difficult data access
- Difficult data updates
- Limited data sharing
- Security problems
- Data integrity problems
- Concurrency problems
- Difficult backup and recovery
- Difficult management of relationships between data

---

## 5. Example

Consider a college.

A file-based system may contain:

```text
Students.txt
Marks.txt
Attendance.txt
Fees.txt
