# What is SQL and Why SQL?

## 1. What is SQL?

**SQL** stands for **Structured Query Language**.

SQL is a **language used to communicate with relational databases**. It allows users and applications to work with data stored in relational databases.

In simple words:

> **SQL is a language that we use to communicate with a relational database and perform operations on its data.**

Using SQL, we can:

* Retrieve data
* Insert new data
* Update existing data
* Delete data
* Filter data
* Sort data
* Combine data from multiple tables
* Perform calculations
* Analyze data
* Create database objects
* Modify database structures
* Control access to data

### Simple Definition

> **SQL is a language used to communicate with relational databases to store, retrieve, update, delete, and manage data.**

---

# 2. Why is SQL Needed?

In the real world, companies deal with **very large amounts of data**.

For example, an e-commerce company may have:

* Millions of customers
* Millions of products
* Millions of orders
* Millions of payment records
* Millions of delivery records

If we try to manually search through this data, it would be:

* Difficult
* Time-consuming
* Inefficient
* Error-prone

Therefore, companies need a way to **communicate with the database and retrieve exactly the information they need**.

SQL provides that capability.

### Real-World Example

Suppose an e-commerce company has **10 million customer records**.

The manager asks:

> "Find all customers who are from Andhra Pradesh."

Manually checking millions of records would take a lot of time.

Instead, we can write:

```sql
SELECT *
FROM Customers
WHERE State = 'Andhra Pradesh';
```

The database processes this query and returns only the customers whose state is Andhra Pradesh.

### Core Idea

```text
Large Amount of Data
        ↓
Manual Searching is Difficult
        ↓
SQL Query
        ↓
Database Processes the Query
        ↓
Required Information
```

Therefore:

> **SQL reduces the difficulty of working with large amounts of data by allowing us to retrieve and manipulate the required information efficiently.**

---

# 3. Why Not Search Data Manually?

Suppose a company has the following data:

```text
10,000,000 Customers
5,000,000 Products
20,000,000 Orders
15,000,000 Payments
```

Imagine someone asks:

> "Show customers who placed more than 5 orders this month."

Manually, we would need to inspect a huge amount of information.

SQL allows us to give the database a precise instruction.

For example:

```sql
SELECT Customer_ID, COUNT(*) AS Order_Count
FROM Orders
WHERE Order_Date >= '2026-09-01'
GROUP BY Customer_ID
HAVING COUNT(*) > 5;
```

The database can process the request and return the required result.

### Important Idea

> **SQL does not mean manually searching the database. SQL gives instructions to the database about what information we need or what operation we want to perform.**

---

# 4. Where is SQL Used?

SQL is mainly used wherever organizations store structured data in **relational databases**.

SQL is commonly used in:

* E-commerce
* Banking
* Healthcare
* Education
* Finance
* Insurance
* Telecommunications
* Government systems
* Social media applications
* Travel applications
* IT companies
* Business applications

---

# 5. SQL in the Real World

## 5.1 E-Commerce

An e-commerce company may store:

* Customers
* Products
* Orders
* Payments
* Deliveries
* Reviews

A Data Analyst may use SQL to answer questions such as:

> Which products generated the highest revenue?

> How many orders were placed this month?

> Which city generated the most sales?

> Who are the top 10 customers by purchase amount?

Example:

```sql
SELECT Product_Name, SUM(Sales_Amount) AS Total_Sales
FROM Orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC;
```

---

## 5.2 Banking

A bank may store:

* Customers
* Accounts
* Transactions
* Loans
* Payments
* Credit information

SQL can be used to retrieve:

* Customer transactions
* Total transactions
* Customers with outstanding loans
* Account balances
* Transactions during a particular period

Example:

```sql
SELECT *
FROM Transactions
WHERE Transaction_Date >= '2026-09-01';
```

---

## 5.3 College Management

A college database may contain:

* Students
* Courses
* Marks
* Attendance
* Fees

SQL can help answer:

> Which students have attendance below 75%?

```sql
SELECT *
FROM Students
WHERE Attendance < 75;
```

It can also find average marks:

```sql
SELECT AVG(Marks)
FROM Students;
```

---

# 6. What Can We Do Using SQL?

SQL allows us to perform many operations on data.

The most important operations include:

1. Retrieve data
2. Insert data
3. Update data
4. Delete data
5. Filter data
6. Sort data
7. Group data
8. Perform calculations
9. Combine data from multiple tables
10. Create database structures
11. Modify database structures
12. Control access to data

---

# 7. Retrieve Data

We can use SQL to retrieve information from a database.

The most commonly used command for retrieving data is:

```sql
SELECT
```

Example:

```sql
SELECT *
FROM Students;
```

This retrieves all columns and all rows from the `Students` table.

We can also retrieve only specific columns:

```sql
SELECT Name, Marks
FROM Students;
```

This retrieves only the `Name` and `Marks` columns.

### Why is this useful?

In real companies, tables may contain many columns.

For example:

```text
Student_ID
Name
Age
Gender
Phone
Email
Address
Marks
Attendance
Department
```

If we only need the student's name and marks, we don't need to retrieve every column.

We can write:

```sql
SELECT Name, Marks
FROM Students;
```

---

# 8. Insert Data

SQL can be used to add new records to a table.

The command is:

```sql
INSERT
```

Example:

```sql
INSERT INTO Students
VALUES (101, 'Hema', 90);
```

This adds a new student record.

A more explicit form is:

```sql
INSERT INTO Students (Student_ID, Name, Marks)
VALUES (101, 'Hema', 90);
```

### Purpose

> **INSERT is used to add new data into a table.**

---

# 9. Update Data

Sometimes existing data needs to be changed.

SQL provides the:

```sql
UPDATE
```

command.

Example:

```sql
UPDATE Students
SET Marks = 95
WHERE Student_ID = 101;
```

This changes the marks of student `101` from the previous value to `95`.

### Important

The `WHERE` condition is very important.

Without a `WHERE` condition:

```sql
UPDATE Students
SET Marks = 95;
```

the command can update **all students' marks** to 95.

Therefore:

> **Always carefully check the condition when updating data.**

---

# 10. Delete Data

SQL can also remove records.

The command is:

```sql
DELETE
```

Example:

```sql
DELETE FROM Students
WHERE Student_ID = 101;
```

This deletes the student whose ID is 101.

Again, the `WHERE` condition is important.

Without `WHERE`:

```sql
DELETE FROM Students;
```

all records in the table may be deleted.

Therefore:

> **DELETE removes existing records from a table.**

---

# 11. Filter Data

Usually, we do not need all the records.

We may need only records that satisfy a particular condition.

SQL uses:

```sql
WHERE
```

for filtering.

Example:

```sql
SELECT *
FROM Students
WHERE Marks > 80;
```

This retrieves only students whose marks are greater than 80.

Another example:

```sql
SELECT *
FROM Customers
WHERE State = 'Andhra Pradesh';
```

This retrieves customers from Andhra Pradesh.

### Core Idea

```text
All Records
     ↓
   WHERE
     ↓
Required Records
```

---

# 12. Sort Data

Sometimes we want to arrange data in a particular order.

SQL uses:

```sql
ORDER BY
```

Example:

```sql
SELECT *
FROM Students
ORDER BY Marks DESC;
```

This displays students from highest marks to lowest marks.

### ASC

Ascending order:

```sql
SELECT *
FROM Students
ORDER BY Marks ASC;
```

Result:

```text
60
70
80
90
95
```

### DESC

Descending order:

```sql
SELECT *
FROM Students
ORDER BY Marks DESC;
```

Result:

```text
95
90
80
70
60
```

### Memory Trick

> **ASC = Small → Large**

> **DESC = Large → Small**

---

# 13. Perform Calculations

SQL can perform calculations on data.

Common aggregate functions include:

| Function  | Purpose             |
| --------- | ------------------- |
| `COUNT()` | Counts records      |
| `SUM()`   | Calculates total    |
| `AVG()`   | Calculates average  |
| `MIN()`   | Finds minimum value |
| `MAX()`   | Finds maximum value |

### COUNT()

```sql
SELECT COUNT(*)
FROM Students;
```

Finds the number of students.

### SUM()

```sql
SELECT SUM(Marks)
FROM Students;
```

Finds the total marks.

### AVG()

```sql
SELECT AVG(Marks)
FROM Students;
```

Finds the average marks.

### MIN()

```sql
SELECT MIN(Marks)
FROM Students;
```

Finds the lowest marks.

### MAX()

```sql
SELECT MAX(Marks)
FROM Students;
```

Finds the highest marks.

---

# 14. Group Data

SQL can group records based on a particular column.

The command used is:

```sql
GROUP BY
```

Example:

```sql
SELECT Department, COUNT(*) AS Student_Count
FROM Students
GROUP BY Department;
```

This tells the database:

> "Group students according to their department and count how many students are in each department."

Example result:

| Department       | Student_Count |
| ---------------- | ------------: |
| Data Science     |            50 |
| Computer Science |            80 |
| Electronics      |            40 |

---

# 15. Work With Multiple Tables

A relational database usually contains multiple related tables.

For example:

```text
Customers
    ↓
Orders
    ↓
Products
```

A customer may place many orders.

An order may contain products.

Therefore, important information may be distributed across different tables.

SQL allows us to combine related tables.

This is commonly done using:

```sql
JOIN
```

Example:

```sql
SELECT Customers.Name, Orders.Order_ID
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;
```

This combines information from the `Customers` and `Orders` tables using their related `Customer_ID`.

### Core Idea

> **JOIN allows us to combine related data from multiple tables.**

---

# 16. SQL and CRUD

SQL supports the basic **CRUD** operations used for managing data.

| CRUD  | Meaning              | SQL Command |
| ----- | -------------------- | ----------- |
| **C** | Create / Add data    | `INSERT`    |
| **R** | Read / Retrieve data | `SELECT`    |
| **U** | Update data          | `UPDATE`    |
| **D** | Delete data          | `DELETE`    |

### Memory Trick

```text
C → Create
R → Read
U → Update
D → Delete
```

> **CRUD = Create → Read → Update → Delete**

---

# 17. SQL Is a Language, Not a Database

This is one of the most important concepts to understand.

SQL itself does **not store data**.

SQL is a **language** used to communicate with a database system.

```text
SQL
 ↓
Language
```

A database stores the actual data.

```text
Database
 ↓
Stores Data
```

A DBMS manages the database.

```text
DBMS
 ↓
Manages Database
```

### Complete Concept

```text
User / Application
        ↓
    SQL Query
        ↓
      DBMS
        ↓
    Database
        ↓
      Data
```

---

# 18. SQL vs Database vs DBMS

| Term         | Meaning                                                |
| ------------ | ------------------------------------------------------ |
| **SQL**      | Language used to communicate with relational databases |
| **Database** | Organized collection of data                           |
| **DBMS**     | Software used to manage databases                      |
| **RDBMS**    | DBMS based on the relational model                     |
| **Table**    | Structure used to organize data into rows and columns  |
| **Query**    | Instruction written using SQL                          |

### Example

**SQL** → Language

**MySQL** → RDBMS software

**Database** → Collection of stored data

**Table** → Structure inside a relational database

**Query** → Instruction written in SQL

---

# 19. SQL and MySQL Are Not the Same

This is another important distinction.

### SQL

SQL is a language.

### MySQL

MySQL is a **relational database management system (RDBMS)** that supports SQL.

Therefore:

```text
SQL
 ↓
Language
```

```text
MySQL
 ↓
RDBMS Software
```

### Example

We can write:

```sql
SELECT *
FROM Students;
```

MySQL can process this SQL statement and retrieve the requested data from the database.

So:

❌ SQL is not MySQL.

❌ MySQL is not SQL.

✅ MySQL uses SQL.

---

# 20. SQL Query

A **SQL query** is an instruction written using SQL that tells the database what information or operation is required.

Example:

```sql
SELECT Name
FROM Students
WHERE Marks > 90;
```

The meaning of this query is:

> "Give me the names of students whose marks are greater than 90."

Therefore:

```text
SQL
 ↓
Language

SQL Query
 ↓
Instruction written using SQL
```

### Simple Example

```text
English:
"Give me students whose marks are greater than 90."

SQL:
SELECT *
FROM Students
WHERE Marks > 90;
```

SQL converts our requirement into a form that the database system can process.

---

# 21. SQL and Relational Databases

SQL is primarily associated with **relational databases**.

A relational database organizes structured data mainly into **tables**.

Example:

### Students Table

| Student_ID | Name  | Marks |
| ---------: | ----- | ----: |
|        101 | Hema  |    90 |
|        102 | Ravi  |    85 |
|        103 | Priya |    92 |

The table contains:

* **Rows** → Individual records
* **Columns** → Attributes or fields

For example:

```text
Student_ID → Column
Name       → Column
Marks      → Column
```

And:

```text
101, Hema, 90 → Row
102, Ravi, 85 → Row
103, Priya, 92 → Row
```

SQL allows us to work with this table.

Example:

```sql
SELECT Name, Marks
FROM Students
WHERE Marks > 85;
```

Result:

| Name  | Marks |
| ----- | ----: |
| Hema  |    90 |
| Priya |     9 |
