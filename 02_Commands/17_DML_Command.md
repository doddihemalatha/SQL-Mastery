# DML Commands

## 1. What is DML?

**DML** stands for **Data Manipulation Language**.

DML commands are used to **add, change, and remove data (rows) stored inside database tables**.

The main DML commands are:

* `INSERT`
* `UPDATE`
* `DELETE`

> **DML works mainly with the data inside a table, while DDL works with the structure of the table.**

---

# 2. INSERT

## Explanation

`INSERT` is used to **add new rows/records into a table**.

For example, if we have a `Students` table and want to add a new student, we use `INSERT`.

## Syntax

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

## Example

```sql
INSERT INTO Students (Student_ID, Name, Marks)
VALUES (101, 'Hema', 90);
```

This adds one new student record to the `Students` table.

### Main Points

* Adds new records.
* Adds data as rows.
* Can insert values into specific columns.
* The values should match the corresponding column data types.
* `INSERT` does not change the table structure.

### Real-World Example

A new customer registers on an e-commerce website.

```sql
INSERT INTO Customers (Customer_ID, Name, City)
VALUES (501, 'Hema', 'Vizag');
```

A new customer record is added to the table.

---

# 3. UPDATE

## Explanation

`UPDATE` is used to **modify existing data in a table**.

It changes the values of one or more columns in existing rows.

## Syntax

```sql
UPDATE table_name
SET column_name = new_value
WHERE condition;
```

## Example

```sql
UPDATE Students
SET Marks = 95
WHERE Student_ID = 101;
```

This changes the marks of student `101` to `95`.

### Main Points

* Modifies existing records.
* Uses `SET` to specify the new value.
* `WHERE` identifies which rows should be changed.
* Can update one or multiple columns.
* `UPDATE` does not change the table structure.

### Updating Multiple Columns

```sql
UPDATE Students
SET Name = 'Hema Reddy',
    Marks = 95
WHERE Student_ID = 101;
```

This changes both the student's name and marks.

### Important Warning

Always be careful with the `WHERE` condition.

```sql
UPDATE Students
SET Marks = 95;
```

Without `WHERE`, the statement may update **every row** in the table.

### Real-World Example

A customer changes their city from Vizag to Hyderabad.

```sql
UPDATE Customers
SET City = 'Hyderabad'
WHERE Customer_ID = 501;
```

---

# 4. DELETE

## Explanation

`DELETE` is used to **remove existing rows from a table**.

It removes data records but does not remove the table structure.

## Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

## Example

```sql
DELETE FROM Students
WHERE Student_ID = 101;
```

This removes the student record whose `Student_ID` is `101`.

### Main Points

* Removes existing rows.
* Can remove one or multiple rows.
* `WHERE` specifies which rows should be deleted.
* The table structure remains.
* `DELETE` can be used to remove selected records.

### Important Warning

```sql
DELETE FROM Students;
```

Without `WHERE`, this can delete **all rows** from the table.

The table itself still exists.

```text
Before DELETE:

Students
----------------
101  Hema   90
102  Ravi   85
103  Priya  92

        ↓
DELETE FROM Students;

After DELETE:

Students
----------------
Empty Table

Table structure still exists
```

### Real-World Example

If a customer account needs to be removed:

```sql
DELETE FROM Customers
WHERE Customer_ID = 501;
```

The customer's row is deleted from the table.

---

# 5. INSERT vs UPDATE vs DELETE

| Command  | Purpose               | Works On      |
| -------- | --------------------- | ------------- |
| `INSERT` | Adds new data         | New rows      |
| `UPDATE` | Changes existing data | Existing rows |
| `DELETE` | Removes data          | Existing rows |

### Simple Memory

```text
INSERT
   ↓
ADD data

UPDATE
   ↓
CHANGE data

DELETE
   ↓
REMOVE data
```

---

# 6. DML vs DDL

| DML                          | DDL                           |
| ---------------------------- | ----------------------------- |
| Data Manipulation Language   | Data Definition Language      |
| Works mainly with table data | Works with database structure |
| `INSERT`                     | `CREATE`                      |
| `UPDATE`                     | `ALTER`                       |
| `DELETE`                     | `DROP`                        |
| Changes rows/data            | Changes tables/structures     |

### Simple Example

If we want to **add a new student**:

```sql
INSERT INTO Students
VALUES (101, 'Hema', 90);
```

This is **DML** because we are adding data.

If we want to **add a new column**:

```sql
ALTER TABLE Students
ADD Email VARCHAR(100);
```

This is **DDL** because we are changing the table structure.

---

# 7. Important Point About SELECT

`SELECT` is used to retrieve/read data.

In many practical SQL classifications, `SELECT` is treated separately or grouped under **DQL (Data Query Language)** rather than DML.

```sql
SELECT *
FROM Students;
```

### Easy Classification

```text
DDL
↓
Defines / Changes Structure

DML
↓
Manipulates Data
INSERT
UPDATE
DELETE

DQL
↓
Retrieves Data
SELECT
```

> **For learning purposes, remember: INSERT, UPDATE, and DELETE are the main DML commands.**

---

# 8. Common Mistakes

## Mistake 1: Forgetting WHERE in UPDATE

```sql
UPDATE Students
SET Marks = 95;
```

This may update all students.

Use:

```sql
UPDATE Students
SET Marks = 95
WHERE Student_ID = 101;
```

---

## Mistake 2: Forgetting WHERE in DELETE

```sql
DELETE FROM Students;
```

This removes all rows.

If only one record should be removed:

```sql
DELETE FROM Students
WHERE Student_ID = 101;
```

---

## Mistake 3: Confusing Data and Structure

Adding a new row:

```sql
INSERT INTO Students
VALUES (101, 'Hema', 90);
```

→ **DML**

Adding a new column:

```sql
ALTER TABLE Students
ADD Email VARCHAR(100);
```

→ **DDL**

---

# 9. Final DML Summary

| Command  | Meaning | Main Purpose         |
| -------- | ------- | -------------------- |
| `INSERT` | Add     | Add new rows         |
| `UPDATE` | Change  | Modify existing rows |
| `DELETE` | Remove  | Delete existing rows |

### Syntax Summary

```sql
-- INSERT
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

-- UPDATE
UPDATE table_name
SET column_name = new_value
WHERE condition;

-- DELETE
DELETE FROM table_name
WHERE condition;
```

---

# 10. Final Concept Map

```text
                    DML
                     ↓
          Data Manipulation Language
                     ↓
          Works with Table Data
                     ↓
       ┌─────────────┼─────────────┐
       ↓             ↓             ↓
    INSERT         UPDATE        DELETE
       ↓             ↓             ↓
    Add Data      Change Data   Remove Data
       ↓             ↓             ↓
     Rows          Rows          Rows
```

# Final Memory Trick

> **INSERT → Add**

> **UPDATE → Change**

> **DELETE → Remove**

> **DML → Manipulates the data inside tables**
