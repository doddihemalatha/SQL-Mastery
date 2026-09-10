# Relational Database Management System (RDBMS)

## 1. What is RDBMS?

**RDBMS (Relational Database Management System)** is software that manages data stored in related tables.

### Simple Definition

> An RDBMS is software that manages data stored in related tables.

The word **relational** means that tables can be connected to each other using common values.

---

## 2. Understanding RDBMS

In an RDBMS, data is mainly organized into:

- Tables
- Rows
- Columns

For example, a college database can contain different tables:

- Students
- Marks
- Attendance
- Fees
- Courses

These tables can be related to each other.

---

## 3. What Does "Relational" Mean?

Consider two tables.

### Students Table

| Student_ID | Name |
|---|---|
| 101 | Hema |
| 102 | Ravi |
| 103 | Priya |

### Marks Table

| Student_ID | Subject | Marks |
|---|---|---:|
| 101 | Python | 85 |
| 102 | Python | 90 |
| 103 | Python | 78 |

Both tables contain `Student_ID`.

```text
Students                     Marks
---------                    ----------
Student_ID  <------------->  Student_ID
