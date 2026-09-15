# DML Practice Questions

You are working as a **Junior Data Analyst** for an e-commerce company.

Your table is:

```text
Customers
------------------------------------------------
Customer_ID | Name  | City       | Membership
------------------------------------------------
101         | Hema  | Vizag      | Basic
102         | Ravi  | Hyderabad  | Premium
103         | Priya | Vijayawada | Basic
104         | Kiran | Chennai    | Basic
```

Your manager gives you these tasks.

---

## Q1

> "A new customer, Anjali, has joined. Add her to the `Customers` table."

```text
Customer_ID: 105
Name: Anjali
City: Vizag
Membership: Premium
```

---

## Q2

> "Customer 103, Priya, upgraded from Basic to Premium."

---

## Q3

> "Customer 104, Kiran, deleted his account. Remove his record."

---

## Q4 

Your manager says:

> "All customers with Basic membership should now be upgraded to Premium."

---

## Q5 

Your manager says:

> "The customer testing data is no longer needed. Remove all customer records, but the `Customers` table will be reused tomorrow."



1. INSERT
INSERT INTO Customers
VALUES (105, 'Anjali', 'Vizag', 'Premium');

2. UPDATE
UPDATE Customers
SET Membership = 'Premium'
WHERE Customer_ID = 103;

3. DELETE
DELETE FROM Customers
WHERE Customer_ID = 104;

4. UPDATE
UPDATE Customers
SET Membership = 'Premium';

5. TRUNCATE
TRUNCATE TABLE Customers;
