# Database Architecture

## 1. What is Database Architecture?

**Database Architecture** describes how the different levels of a database system are organized between the **users** and the **actual data storage**.

It separates:

* How users view the data
* How data is logically organized
* How data is physically stored

### Simple Definition

> **Database Architecture is the structure that defines how users interact with a database and how the database is logically and physically managed.**

---

# 2. Why is Database Architecture Needed?

Database Architecture is used to:

* Hide unnecessary database details from users
* Provide different views of the same database
* Improve security
* Separate users from physical storage details
* Make database systems easier to manage
* Provide data abstraction
* Support data independence

The main idea is to **separate what the user sees from how the database actually works internally**.

---

# 3. Three-Level Database Architecture

The traditional **Three-Level Database Architecture** divides a database system into three levels:

1. **External Level**
2. **Conceptual Level**
3. **Internal Level**

### Architecture

```text
                         USERS
                           |
                           ↓
                 ┌──────────────────┐
                 │  External Level  │
                 │    User View     │
                 └──────────────────┘
                           |
                           ↓
                 ┌──────────────────┐
                 │ Conceptual Level │
                 │ Logical Structure│
                 └──────────────────┘
                           |
                           ↓
                 ┌──────────────────┐
                 │  Internal Level  │
                 │ Physical Storage │
                 └──────────────────┘
                           |
                           ↓
                       STORAGE
```

The three levels answer three different questions:

```text
External Level
→ What does the user see?

Conceptual Level
→ How is the database logically organized?

Internal Level
→ How is the data physically stored?
```

---

# 4. External Level

The **External Level** is the level closest to the users.

It describes **what a particular user or group of users can see from the database**.

Different users can have different views of the same database.

## Example

Suppose a college has one database containing:

* Student details
* Marks
* Attendance
* Fees
* Faculty details
* Salary information

Different users may need different information.

### Student View

A student may see:

```text
Name
Marks
Attendance
Courses
```

### Faculty View

A faculty member may see:

```text
Student Name
Marks
Attendance
```

### Accounts Department View

The accounts department may see:

```text
Student Name
Fee Details
Payment Status
```

All of them are using the **same database**, but they see different views based on their requirements and permissions.

### Simple Definition

> **External Level represents the user view of the database.**

### Key Point

```text
External Level → What the user sees
```

---

# 5. Conceptual Level

The **Conceptual Level** describes the **overall logical structure of the entire database**.

It defines:

* What data is stored
* What tables exist
* What attributes or columns exist
* How tables are related
* What constraints exist

It does **not** focus on the physical details of how the data is stored on disk.

## Example

A college database may logically contain:

```text
Students
├── Student_ID
├── Name
└── Course

Marks
├── Student_ID
├── Subject
└── Marks

Attendance
├── Student_ID
└── Attendance_Percentage
```

The relationships between these tables are also part of the conceptual level.

For example:

```text
Students
   |
   | Student_ID
   ↓
Marks

Students
   |
   | Student_ID
   ↓
Attendance
```

### Simple Definition

> **Conceptual Level represents the overall logical structure of the database.**

### Key Point

```text
Conceptual Level → How data is logically organized
```

---

# 6. Internal Level

The **Internal Level** is the level closest to the **physical storage**.

It describes how the data is actually stored and accessed inside the computer system.

It deals with concepts such as:

* Physical storage
* Database files
* Storage structures
* Indexes
* Data access methods

Users normally do not need to know these physical details.

For example, a user may search for a student using a Student ID.

The user does not need to know:

```text
Which disk block contains the data
How the database file is organized
How the index is implemented
How the DBMS accesses the storage
```

The DBMS handles these internal operations.

### Simple Definition

> **Internal Level represents how data is physically stored and accessed.**

### Key Point

```text
Internal Level → How data is physically stored
```

---

# 7. Comparison of the Three Levels

| Level            | What It Represents          | Main Focus            |
| ---------------- | --------------------------- | --------------------- |
| External Level   | User view                   | What the user sees    |
| Conceptual Level | Logical database structure  | How data is organized |
| Internal Level   | Physical database structure | How data is stored    |

### Easy Memory Trick

```text
External   → SEE
Conceptual → STRUCTURE
Internal   → STORE
```

Think:

> **SEE → STRUCTURE → STORE**

---

# 8. Real-World Example

Consider an **e-commerce application**.

The application may contain information about:

* Customers
* Products
* Orders
* Payments
* Addresses

Now look at the same database through the three levels.

---

## External Level

A customer may see:

```text
My Profile
My Orders
My Cart
My Address
```

The customer does not need to see the internal database details.

For example, the customer does not need to know:

```text
Database tables
Indexes
Storage blocks
Database files
```

The customer only sees the information required by the application.

---

## Conceptual Level

The database logically contains entities such as:

```text
Customers
Orders
Products
Payments
Addresses
```

These entities have relationships.

For example:

```text
Customer
   |
   | places
   ↓
Order
   |
   | contains
   ↓
Product
```

The conceptual level focuses on this **logical organization and relationships**.

---

## Internal Level

The DBMS handles how the data is physically stored and accessed.

This may involve:

```text
Database files
Indexes
Storage structures
Data access methods
Physical storage
```

The user does not need to deal with these details directly.

### Overall Flow

```text
Customer
   ↓
External Level
"What I see"
   ↓
Conceptual Level
"How data is logically organized"
   ↓
Internal Level
"How data is physically stored"
   ↓
Storage
```

---

# 9. Data Abstraction

Database Architecture provides **data abstraction**.

### What is Data Abstraction?

**Data abstraction** means hiding unnecessary implementation details from users and showing only the information they need.

For example, when a student checks their marks:

```text
Student
   ↓
Sees marks
```

The student does not need to know:

```text
Where the data is physically stored
How indexes work
How storage blocks are organized
How the DBMS retrieves the data
```

These implementation details are hidden by the database system.

### Simple Definition

> **Data abstraction means hiding unnecessary database details and showing users only the required information.**

---

# 10. Data Independence

The separation between the three levels helps provide **data independence**.

### What is Data Independence?

**Data independence** means that changes at one level should have **minimal impact on other levels**.

For example, suppose the database administrator changes the physical storage method.

The user should still be able to access the data without needing to know about that physical change.

```text
Physical Storage Changes
          ↓
Database System
          ↓
User View
          ↓
Should continue working
```

There are two important types of data independence:

1. **Physical Data Independence**
2. **Logical Data Independence**

These are important database concepts and can be studied separately.

---

# 11. Physical Data Independence

**Physical Data Independence** means that changes to the **internal/physical level** should not require changes to the conceptual or external levels.

### Example

Suppose a database administrator:

* Changes the storage structure
* Adds an index
* Changes the physical file organization

The logical database structure and user applications should continue to work without major changes.

```text
Physical Storage Changes
          ↓
Conceptual Level
     No major change
          ↓
External Level
     No major change
```

### Simple Definition

> **Physical Data Independence means changing how data is physically stored without changing the logical structure or user views.**

---

# 12. Logical Data Independence

**Logical Data Independence** means that changes to the **conceptual/logical level** should have minimal impact on external user views.

### Example

Suppose a database structure changes by adding a new attribute:

```text
Students

Student_ID
Name
Course
Email
```

An existing student view that only needs:

```text
Student_ID
Name
Course
```

may continue to work without requiring changes.

### Simple Definition

> **Logical Data Independence means changing the logical database structure with minimal impact on external user views.**

---

# 13. Physical vs Logical Data Independence

| Type                       | Change Happens At | Main Idea                                                       |
| -------------------------- | ----------------- | --------------------------------------------------------------- |
| Physical Data Independence | Internal Level    | Change physical storage without affecting the logical structure |
| Logical Data Independence  | Conceptual Level  | Change logical structure with minimal effect on user views      |

### Easy Memory Trick

```text
Physical Data Independence
→ Physical storage can change

Logical Data Independence
→ Logical structure can change
```

---

# 14. Advantages of Three-Level Architecture

The three-level architecture provides several benefits.

### 1. Data Abstraction

Users do not need to understand the internal implementation of the database.

### 2. Better Security

Different users can be given different views of the database.

For example:

```text
Student
→ Marks and attendance

Faculty
→ Student academic information

Accounts Department
→ Fee information
```

### 3. Different User Views

Different users can access different views of the same database.

### 4. Separation of Logical and Physical Details

The logical organization of data is separated from its physical storage.

### 5. Easier Database Management

Database administrators can manage physical storage without exposing unnecessary details to users.

### 6. Data Independence

Changes at one level can be made with minimal impact on other levels.

### 7. Better Maintainability

Separating the different levels makes the database system easier to modify and maintain.

---

# 15. Database Architecture Summary

The complete three-level architecture can be remembered as:

```text
                         USER
                           ↓
                 ┌──────────────────┐
                 │  External Level  │
                 │    User View     │
                 └──────────────────┘
                           ↓
                 ┌──────────────────┐
                 │ Conceptual Level │
                 │ Logical Structure│
                 └──────────────────┘
                           ↓
                 ┌──────────────────┐
                 │  Internal Level  │
                 │ Physical Storage │
                 └──────────────────┘
                           ↓
                        STORAGE
```

### Remember

```text
External Level
→ What users see

Conceptual Level
→ How the database is logically organized

Internal Level
→ How the data is physically stored
```

---

# 16. Complete Concept in One Example

Consider a **college database**.

The database contains:

```text
Students
Marks
Attendance
Courses
Fees
Faculty
```

### External Level

Different users see different information.

```text
Student
→ Marks
→ Attendance
→ Courses

Faculty
→ Student details
→ Marks
→ Attendance

Accounts Department
→ Fee details
→ Payment status
```

### Conceptual Level

The database logically organizes the information into related entities:

```text
Students
   ↓
Marks
   ↓
Attendance
   ↓
Courses
   ↓
Fees
```

Relationships, attributes, and constraints are part of this logical structure.

### Internal Level

The DBMS determines how the data is physically stored and accessed using:

```text
Database files
Indexes
Storage structures
Data access methods
Physical storage
```

The users do not need to know these implementation details.

---

# 17. Final Concept Map

```text
                    DATABASE ARCHITECTURE
                            |
                            ↓
                ┌───────────────────────┐
                │ Three-Level Architecture │
                └───────────────────────┘
                            |
            ┌───────────────┼───────────────┐
            ↓               ↓               ↓
       External        Conceptual       Internal
          Level           Level            Level
            ↓               ↓               ↓
       User View      Logical Structure  Physical Storage
            ↓               ↓               ↓
       What users     How data is       How data is
         see           organized          stored
            │               │               │
            └───────────────┼───────────────┘
                            ↓
                    Data Abstraction
                            |
                            ↓
                    Data Independence
                       /            \
                      ↓              ↓
              Physical Data    Logical Data
               Independence     Independence
```

---

# 18. Key Takeaway

**Database Architecture** defines the different levels through which users interact with a database and how the database manages data internally.

The three levels are:

```text
External   → User View
Conceptual → Logical Structure
Internal   → Physical Storage
```

The architecture helps provide:

```text
Data Abstraction
        +
Different User Views
        +
Security
        +
Data Independence
        +
Maintainability
```

### One-Line Memory Rule

> **External = SEE | Conceptual = STRUCTURE | Internal = STORE**
