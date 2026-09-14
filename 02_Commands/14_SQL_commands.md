### SQL Commands

SQL commands are **instructions written in SQL** to perform different operations on a database.

| Category | Full Form | Purpose | Examples |
|---|---|---|---|
| **DDL** | Data Definition Language | Defines/changes database structure | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| **DML** | Data Manipulation Language | Adds/changes/deletes data | `INSERT`, `UPDATE`, `DELETE` |
| **DQL** | Data Query Language | Retrieves data | `SELECT` |
| **DCL** | Data Control Language | Controls user permissions | `GRANT`, `REVOKE` |
| **TCL** | Transaction Control Language | Manages transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

### Easy Memory

- **DDL → Structure**
- **DML → Data**
- **DQL → Query/Read**
- **DCL → Permissions**
- **TCL → Transactions**

### Example

```sql
CREATE TABLE students (...);              -- DDL

INSERT INTO students VALUES (...);       -- DML

SELECT * FROM students;                   -- DQL

UPDATE students SET name = 'Hema';       -- DML

COMMIT;                                   -- TCL
