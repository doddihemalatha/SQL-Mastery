# DDL — Real-World Practice

### Scenario
'''
You are working as a Junior SQL Developer for an e-commerce company. Your team lead asks you to create and manage a product database according to the following requirements:

1. Create a `Products` table to store Product ID, Product Name, Price, and Category.

2. Add a `Stock` column to the existing `Products` table.

3. Increase the maximum length of the `Product_Name` column from 100 to 200 characters.

4. Rename the `Category` column to `Product_Category`.

5. Remove the `Stock` column from the `Products` table.

6. Rename the `Products` table to `Product_Details`.

7. Remove all testing records from the `Product_Details` table while keeping its structure.

8. The company no longer needs the `Product_Details` table, so completely remove it.
'''

CREATE TABLE Products(
Product_ID INT,
Product_Name VARCHAR(100), 
Price INT, 
Category VARCHAR(50) 
);

ALTER TABLE Products 
ADD COLUMN Stock INT;

ALTER TABLE Products 
MODIFY COLUMN Product_Name VARCHAR(200);

ALTER TABLE Products 
RENAME COLUMN Category TO Product_Category;

ALTER TABLE Products 
DROP COLUMN Stock;

RENAME TABLE Products TO Product_Details;

TRUNCATE TABLE Product_Details;

DROP TABLE Product_Details;
