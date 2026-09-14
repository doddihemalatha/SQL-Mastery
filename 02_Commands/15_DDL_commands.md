# DDL Commands

**DDL** stands for **Data Definition Language**.

DDL commands are used to **create, change, and remove the structure of database objects such as tables**.

The main DDL commands covered here are:

* `CREATE`
* `ALTER`
* `DROP`
* `TRUNCATE`

---

# 1. CREATE

## Explanation

`CREATE` is used to **create a new database object**, such as a table.

### Syntax

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype
);
```

### Example

```sql
CREATE TABLE Students (
    Student_ID INT,
    Name VARCHAR(50),
    Marks INT
);
```

This creates a `Students` table with three columns.

---

# 2. ALTER

## Explanation

`ALTER` is used to **change the structure of an existing table**.

Using `ALTER`, we can:

* Add a column
* Modify a column
* Drop a column
* Rename a column

---

## 2.1 ALTER - ADD Column

### Explanation

`ADD` is used to **add a new column** to an existing table.

### Syntax

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

### Example

```sql
ALTER TABLE Students
ADD Email VARCHAR(100);
```

This adds an `Email` column to the `Students` table.

---

## 2.2 ALTER - MODIFY Column

### Explanation

`MODIFY` is used to **change the definition of an existing column**, such as its data type or size.

> `MODIFY` syntax can vary between database systems. The following syntax is used in MySQL.

### Syntax

```sql
ALTER TABLE table_name
MODIFY column_name new_datatype;
```

### Example

```sql
ALTER TABLE Students
MODIFY Name VARCHAR(100);
```

This changes the `Name` column from `VARCHAR(50)` to `VARCHAR(100)`.

---

## 2.3 ALTER - DROP Column

### Explanation

`DROP COLUMN` is used to **remove a column from an existing table**.

### Syntax

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Example

```sql
ALTER TABLE Students
DROP COLUMN Email;
```

This removes the `Email` column from the `Students` table.

---

## 2.4 ALTER - RENAME Column

### Explanation

`RENAME COLUMN` is used to **change the name of an existing column**.

### Syntax

```sql
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
```

### Example

```sql
ALTER TABLE Students
RENAME COLUMN Name TO Student_Name;
```

This changes the column name from `Name` to `Student_Name`.

---

# 3. DROP TABLE

## Explanation

`DROP TABLE` is used to **completely remove a table from the database**.

It removes:

* The table structure
* All data inside the table

### Syntax

```sql
DROP TABLE table_name;
```

### Example

```sql
DROP TABLE Students;
```

The entire `Students` table is removed.

### Important

After dropping the table:

```text
Students Table
      ↓
Structure + Data
      ↓
     Removed
```

The table no longer exists.

---

# 4. TRUNCATE

## Explanation

`TRUNCATE` is used to **remove all rows from a table while keeping the table structure**.

### Syntax

```sql
TRUNCATE TABLE table_name;
```

### Example

```sql
TRUNCATE TABLE Students;
```

This removes all student records but keeps the `Students` table.

```text
Before TRUNCATE:

Students
----------------
101  Hema   90
102  Ravi   85
103  Priya  92

        ↓
    TRUNCATE

After TRUNCATE:

Students
----------------
Empty Table

Structure still exists
```

---

# 5. DROP vs TRUNCATE

| Command          | Removes Data  | Removes Table Structure |
| ---------------- | ------------- | ----------------------- |
| `DROP TABLE`     | Yes           | Yes                     |
| `TRUNCATE TABLE` | Yes, all rows | No                      |

### Memory Trick

> **DROP = Remove the entire table**

> **TRUNCATE = Remove all rows, keep the table**

---

# 6. ALTER vs DROP vs TRUNCATE

| Command    | Main Purpose                                 |
| ---------- | -------------------------------------------- |
| `CREATE`   | Create a new table                           |
| `ALTER`    | Change an existing table's structure         |
| `DROP`     | Remove the entire table                      |
| `TRUNCATE` | Remove all rows but keep the table structure |

### Simple Memory

```text
CREATE
  ↓
Create Table

ALTER
  ↓
Change Table Structure

TRUNCATE
  ↓
Remove All Rows

DROP
  ↓
Remove Entire Table
```

---

# 7. Final Syntax Summary

```sql
-- Create
CREATE TABLE Students (
    Student_ID INT,
    Name VARCHAR(50),
    Marks INT
);

-- Add column
ALTER TABLE Students
ADD Email VARCHAR(100);

-- Modify column
ALTER TABLE Students
MODIFY Name VARCHAR(100);

-- Drop column
ALTER TABLE Students
DROP COLUMN Email;

-- Rename column
ALTER TABLE Students
RENAME COLUMN Name TO Student_Name;

-- Remove entire table
DROP TABLE Students;

-- Remove all rows but keep table
TRUNCATE TABLE Students;
```

# Final Memory Trick

> **CREATE → Make the table**

> **ALTER → Change the table structure**

> **TRUNCATE → Empty the table**

> **DROP → Delete the entire table**
