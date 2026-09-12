# History of SQL

Before SQL existed, let's first understand the **problem that led to its development**.

---

# 1. Before SQL

As computers became more widely used, companies and organizations started storing increasing amounts of data digitally.

For example, a company might store:

```text
Employee Data
Customer Data
Product Data
Sales Data
Payment Data
```

As the amount of data increased, organizations needed better ways to:

* Organize data
* Store data
* Retrieve data
* Update data
* Manage data
* Work with related data

This created the need for better database systems.

One important development was the **relational database model**.

---

# 2. 1970 — Relational Model

In **1970**, computer scientist **Edgar F. Codd**, who worked at IBM, published a famous research paper titled:

> **"A Relational Model of Data for Large Shared Data Banks"**

This paper introduced the **relational model**.

## What is the Relational Model?

The relational model proposed organizing data into **tables** and establishing relationships between those tables.

For example:

### STUDENTS

| Student_ID | Name |
| ---------: | ---- |
|        101 | Hema |
|        102 | Ravi |

### MARKS

| Student_ID | Subject | Marks |
| ---------: | ------- | ----: |
|        101 | SQL     |    90 |
|        102 | SQL     |    85 |

The common `Student_ID` connects the two tables.

```text
STUDENTS
    │
    │ Student_ID
    ↓
MARKS
```

This approach made it easier to organize and work with structured data.

The relational model became the foundation for **relational databases**.

### Important Point

> **Edgar F. Codd did not create SQL.**

Codd introduced the **relational model**.

Later, IBM researchers developed a language for working with relational data.

---

# 3. 1970s — IBM Develops a Database Language

After Codd introduced the relational model, IBM researchers began working on a language that could be used to interact with relational databases.

Two important IBM researchers were:

* **Donald D. Chamberlin**
* **Raymond F. Boyce**

They developed a language called:

> **SEQUEL**

SEQUEL stood for:

> **Structured English QUEry Language**

The purpose of SEQUEL was to provide a relatively simple language for **querying and manipulating data in relational databases**.

For example, users could express requests such as:

```text
"Find all employees whose salary is greater than 50,000."
```

The database language would allow this type of requirement to be expressed as a query.

---

# 4. SEQUEL Becomes SQL

The name **SEQUEL** was later changed to **SQL**, partly because of a trademark issue involving the name SEQUEL.

So the basic evolution was:

```text
Relational Model
       ↓
IBM Research
       ↓
SEQUEL
       ↓
SQL
```

### Important Distinction

Do not say:

> "Codd created SQL."

That is incorrect.

The correct understanding is:

> **Codd introduced the relational model, and IBM researchers including Donald Chamberlin and Raymond Boyce were key contributors to the development of SEQUEL, from which SQL evolved.**

---

# 5. 1970s — IBM System R

IBM also developed an experimental relational database system called:

> **System R**

System R was an important research project that demonstrated how the relational model could be implemented in a practical database system.

SQL was developed and used with System R.

This was important because SQL was no longer just an idea or theoretical language.

It was being used with an actual relational database system.

### Concept

```text
Edgar F. Codd
      ↓
Relational Model
      ↓
IBM Research
      ↓
System R
      ↓
SQL
      ↓
Practical Relational Database System
```

System R played an important role in the development and practical use of SQL.

---

# 6. 1979 — Oracle Enters the Database Industry

In **1979**, a company then known as **Relational Software, Inc.** released a commercial relational database product.

The company later became known as **Oracle Corporation**.

This was an important step because relational database technology was moving from research environments into **commercial software**.

As commercial relational database systems became more popular, SQL also became increasingly important.

### General Development

```text
Research
   ↓
Relational Database Technology
   ↓
Commercial Database Systems
   ↓
Growing Use of SQL
```

---

# 7. SQL Becomes a Standard

As relational databases became popular, different database vendors began implementing SQL.

This created an important problem.

If every company implemented SQL differently, SQL could become inconsistent between database systems.

For example:

```text
Database A → One version of SQL
Database B → Different version of SQL
Database C → Another version of SQL
```

Users would then have difficulty moving SQL knowledge and applications between different database systems.

Therefore, standardization became important.

---

# 8. 1986 — ANSI SQL Standard

In **1986**, SQL became an **ANSI standard**.

ANSI stands for:

> **American National Standards Institute**

The standardization of SQL helped establish a common foundation for SQL implementations.

The standard is commonly referred to as:

> **ANSI SQL**

### Why was standardization important?

Standardization helped create a common set of SQL rules that different database systems could follow.

```text
Different Database Vendors
          ↓
     SQL Standard
          ↓
 Common SQL Foundation
```

However, database systems could still have their own additional features and extensions.

---

# 9. 1987 — ISO SQL Standard

In **1987**, SQL was also adopted as an **ISO standard**.

ISO stands for:

> **International Organization for Standardization**

Therefore, an important part of the SQL standardization timeline is:

```text
1986 → ANSI SQL Standard
1987 → ISO SQL Standard
```

This helped SQL become an internationally recognized database language standard.

---

# 10. SQL Continued to Evolve

SQL did not stop developing after 1986 or 1987.

SQL standards continued to evolve and introduce new capabilities.

Over time, SQL gained support for increasingly powerful database operations and analytical features.

Examples include:

* More powerful queries
* Data manipulation
* Transactions
* Constraints
* Views
* Functions
* Subqueries
* Common Table Expressions
* Window functions
* Recursive queries
* Analytical operations
* Advanced data types
* Other database capabilities

Therefore:

> **SQL is an evolving language rather than a language that was created once and then remained unchanged.**

---

# 11. Different Database Systems Have SQL Dialects

Although SQL has standardized rules, different database systems implement SQL with their own extensions and variations.

Common relational database systems include:

* MySQL
* PostgreSQL
* Oracle Database
* Microsoft SQL Server
* SQLite

Conceptually:

```text
                    SQL Standard
                         ↓
              Common SQL Foundation
                         ↓
       ┌─────────────────┼─────────────────┐
       ↓                 ↓                 ↓
     MySQL          PostgreSQL          Oracle
       ↓                 ↓                 ↓
  SQL Server          SQLite          Other RDBMS
```

The SQL used in these systems is based on SQL standards, but **not every SQL statement or feature is identical across all systems**.

For example, some functions, data types, syntax, and database-specific features can differ.

### Important Point

> **Learning standard SQL gives you a strong foundation, but each database system may have its own SQL dialect and extensions.**

---

# 12. SQL Today

Today, SQL is one of the most important languages for working with relational databases.

It is used across many industries, including:

* Banking
* E-commerce
* Healthcare
* Education
* Finance
* Insurance
* Telecommunications
* Government
* IT
* Data Analytics
* Business Intelligence

A modern application may use:

```text
Application
     ↓
Backend / Server
     ↓
SQL
     ↓
Relational Database
     ↓
Stored Data
```

For example, when a customer opens an e-commerce application and views their previous orders, the application may request that information from a relational database using SQL.

---

# 13. SQL History — The Complete Story

The complete development can be understood as a sequence of problems and solutions.

### Step 1 — Increasing Data

Organizations started storing more and more data.

```text
More Data
   ↓
Need Better Data Management
```

### Step 2 — Relational Model

In **1970**, Edgar F. Codd introduced the relational model.

```text
Relational Model
   ↓
Data Organized in Tables
   ↓
Relationships Between Tables
```

### Step 3 — IBM Research

IBM researchers worked on a language for interacting with relational data.

```text
IBM Research
   ↓
SEQUEL
```

### Step 4 — SEQUEL

SEQUEL was developed as a language for querying and manipulating relational data.

```text
SEQUEL
   ↓
Query and Manipulate Relational Data
```

### Step 5 — SQL

SEQUEL evolved into the name **SQL**.

```text
SEQUEL
   ↓
SQL
```

### Step 6 — System R

IBM used SQL in the development of System R, helping demonstrate practical relational database technology.

```text
SQL
   ↓
System R
   ↓
Practical Relational Database System
```

### Step 7 — Commercial Adoption

Commercial relational database products appeared, including the product released by Relational Software, Inc. in 1979, later associated with Oracle.

```text
Research
   ↓
Commercial Database Systems
   ↓
Growing SQL Adoption
```

### Step 8 — Standardization

SQL became standardized.

```text
1986
   ↓
ANSI SQL
   ↓
1987
   ↓
ISO SQL
```

### Step 9 — Continuous Development

SQL continued to gain new capabilities.

```text
SQL Standard
     ↓
New Features
     ↓
Database Vendor Implementations
     ↓
Modern SQL
```

---

# 14. SQL History Timeline

| Year            | Event                                                                                |
| --------------- | ------------------------------------------------------------------------------------ |
| **1970**        | Edgar F. Codd introduced the relational model                                        |
| **1970s**       | IBM researchers worked on a relational database language                             |
| **1970s**       | SEQUEL was developed                                                                 |
| **1970s**       | IBM System R used SQL-related technology and helped demonstrate relational databases |
| **1979**        | Relational Software, Inc. released a commercial relational database product          |
| **1986**        | SQL became an ANSI standard                                                          |
| **1987**        | SQL was adopted as an ISO standard                                                   |
| **Later Years** | SQL standards continued to evolve                                                    |
| **Today**       | SQL is widely used with relational database systems                                  |

---

# 15. Important People to Remember

## Edgar F. Codd

**Role:**

Computer scientist at IBM.

**Contribution:**

Introduced the **relational model** in 1970.

### Remember:

> **Codd → Relational Model**

---

## Donald D. Chamberlin

**Role:**

IBM researcher.

**Contribution:**

Key contributor to the development of **SEQUEL**.

### Remember:

> **Chamberlin → SEQUEL / SQL Development**

---

## Raymond F. Boyce

**Role:**

IBM researcher.

**Contribution:**

Key contributor to the development of **SEQUEL**.

### Remember:

> **Boyce → SEQUEL / SQL Development**

---

# 16. Very Important Distinctions

These concepts are often confused.

| Person / Technology      | Contribution                                        |
| ------------------------ | --------------------------------------------------- |
| **Edgar F. Codd**        | Introduced the relational model                     |
| **Donald D. Chamberlin** | Key contributor to SEQUEL development               |
| **Raymond F. Boyce**     | Key contributor to SEQUEL development               |
| **SEQUEL**               | Earlier name of the language from which SQL evolved |
| **SQL**                  | Language used to work with relational databases     |
| **System R**             | IBM experimental relational database system         |
| **ANSI**                 | Helped standardize SQL in 1986                      |
| **ISO**                  | Adopted SQL as an international standard in 1987    |

---

# 17. Why Did SQL Become Important?

SQL became important because relational databases provided a structured way to manage data, and SQL provided a practical language for interacting with that data.

The relationship can be understood as:

```text
Large Amounts of Data
          ↓
Need Organized Data Management
          ↓
Relational Model
          ↓
Data Organized in Tables
          ↓
Need a Language to Work With Tables
          ↓
SEQUEL
          ↓
SQL
          ↓
Standardization
          ↓
Widespread Relational Database Usage
```

---

# 18. Why Was Standardization Important?

Imagine five companies creating their own completely different database languages:

```text
Company A → Language A
Company B → Language B
Company C → Language C
Company D → Language D
Company E → Language E
```

Learning and moving between database systems would be much harder.

SQL standardization created a **common foundation**.

```text
Different Database Systems
          ↓
     SQL Standard
          ↓
   Common Foundation
```

However, standardization does **not** mean every database system behaves exactly the same.

Each database vendor can provide additional features.

---

# 19. SQL Evolution in One Diagram

```text
                         1970
                          │
                          ↓
                   Edgar F. Codd
                          │
                          ↓
                  Relational Model
                          │
                          ↓
                  IBM Research
                          │
                          ↓
                       SEQUEL
                          │
                          ↓
                         SQL
                          │
                          ↓
                      System R
                          │
                          ↓
              Commercial Adoption
                          │
                          ↓
                 1986 — ANSI SQL
                          │
                          ↓
                 1987 — ISO SQL
                          │
                          ↓
              Continuous Evolution
                          │
                          ↓
                    Modern SQL
```

---

# 20. The Real Reason Behind SQL's Development

Do not memorize SQL history only as a list of dates.

Understand the **reason behind the development**.

```text
Data was increasing
        ↓
Organizations needed better data management
        ↓
Codd introduced the relational model
        ↓
Data could be organized into related tables
        ↓
A language was needed to work with relational data
        ↓
IBM researchers developed SEQUEL
        ↓
SEQUEL evolved into SQL
        ↓
SQL was used with relational database systems
        ↓
SQL became standardized
        ↓
SQL continued evolving
        ↓
Modern SQL
```

This is the actual story.

---

# 21. One Important Correction to Remember

A common mistake is:

>  "Edgar F. Codd created SQL."

This is incorrect.

The correct statement is:

>  **Edgar F. Codd introduced the relational model in 1970.**

Another common mistake is:

>  "Chamberlin and Boyce created the relational model."

This is also incorrect.

The correct statement is:

>  **Donald D. Chamberlin and Raymond F. Boyce were key IBM researchers involved in developing SEQUEL, from which SQL evolved.**

---

# 22. Final SQL History Summary

The history of SQL can be summarized in one sentence:

> **Edgar F. Codd introduced the relational model in 1970 → IBM researchers developed SEQUEL for working with relational data → SEQUEL evolved into SQL → SQL was used in systems such as IBM System R → commercial relational database systems helped SQL gain adoption → SQL became an ANSI standard in 1986 and an ISO standard in 1987 → SQL continued evolving into the modern SQL used today.**

---

# 23. Final Memory Map

```text
CODD
↓
RELATIONAL MODEL
↓
IBM RESEARCH
↓
SEQUEL
↓
SQL
↓
SYSTEM R
↓
COMMERCIAL DATABASES
↓
1986 — ANSI
↓
1987 — ISO
↓
MODERN SQL
```

### Easy Memory Trick

> **Codd → Model**

> **Chamberlin + Boyce → SEQUEL**

> **SEQUEL → SQL**

> **System R → Practical IBM Relational Database System**

> **1986 → ANSI**

> **1987 → ISO**

> **Today → Modern SQL**

---

# 24. Final Takeaway

The history of SQL is not simply about memorizing dates.

The important concept is the **evolution of the need**:

```text
Need to manage data
        ↓
Relational Model
        ↓
Need a language
        ↓
SEQUEL
        ↓
SQL
        ↓
Standardization
        ↓
Continuous Development
        ↓
Modern SQL
```

### Most Important Points

* **1970** → Edgar F. Codd introduced the relational model.
* **1970s** → IBM researchers developed SEQUEL.
* **Donald D. Chamberlin and Raymond F. Boyce** were key contributors to SEQUEL.
* **SEQUEL evolved into SQL.**
* **IBM System R** helped demonstrate practical relational database technology.
* **1979** → Relational Software, Inc. released a commercial relational database product.
* **1986** → SQL became an ANSI standard.
* **1987** → SQL was adopted as an ISO standard.
* SQL continued to evolve with new features.
* Modern relational database systems use SQL, often with their own extensions and dialects.

> **Codd created the relational model. SQL evolved from IBM's work on SEQUEL. SQL was later standardized and became the foundation for communicating with relational database systems worldwide.**
