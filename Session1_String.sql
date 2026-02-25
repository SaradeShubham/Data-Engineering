CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(100),
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(150),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Mode VARCHAR(50),
    Store_Location VARCHAR(100)
);

INSERT INTO Orders
(Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
VALUES
(1001, '2026-02-01', 'C001', 'Ravi Kumar', 'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore'),

(1002, '2026-02-02', 'C002', 'Sneha Reddy', 'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad'),

(1003, '2026-02-03', 'C003', 'Arjun Mehta', 'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai'),

(1004, '2026-02-04', 'C004', 'Priya Sharma', 'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai'),

(1005, '2026-02-05', 'C005', 'Kiran Rao', 'Home & Kitchen', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore'),

(1006, '2026-02-06', 'C006', 'Neha Verma', 'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi'),

(1007, '2026-02-07', 'C007', 'Rahul Das', 'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata'),

(1008, '2026-02-08', 'C008', 'Anjali Nair', 'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi'),

(1009, '2026-02-09', 'C009', 'Suresh Patel', 'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad'),

(1010, '2026-02-10', 'C010', 'Meena Iyer', 'Home & Kitchen', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune');

--1. Write a query to convert all customer names to uppercase.

SELECT UPPER(customer_name) AS customer_name_upper
FROM Orders;

--2. Extract the first 5 characters from Product_Name.

SELECT Order_ID,
       Product_Name,
       SUBSTRING(Product_Name, 1, 5) AS first_5Char
FROM Orders;


--3. Find the length of each Customer_Name.
SELECT Customer_Name, LEN(Customer_Name) AS Name_Length
FROM Orders;

--4. Replace the word "Rice" with "Premium Rice" in Product_Name.
SELECT REPLACE(Product_Name, 'Rice', 'Premium Rice') AS Replace_Product
FROM Orders;

--5. Remove leading and trailing spaces from Customer_Name.
SELECT TRIM(Customer_Name) AS Cleaned_Name
FROM Orders;

--6. Concatenate First_Name and Last_Name as Full_Name.
-- Here We first have to Split into First_Name and Last_Name
SELECT Customer_Name,
       LEFT(Customer_Name, CHARINDEX(' ', Customer_Name) - 1) AS First_Name,
       RIGHT(Customer_Name, LEN(Customer_Name) - CHARINDEX(' ', Customer_Name)) AS Last_Name
FROM Orders;

SELECT CONCAT(First_Name, ' ', Last_Name) AS Full_Name
FROM Orders;

--- Find customers whose names start with 'A'
SELECT Customer_Name
FROM Orders
WHERE Customer_Name LIKE 'A%';

--8. Extract the domain name from Email_ID.
SELECT SUBSTRING(Email_ID, INSTR(Email_ID, '@') + 1) AS Domain_Name
FROM Orders;

--9. Extract the domain name from Email_ID.
SELECT INSTR(Email_ID, '@') AS At_Position
FROM Orders;

---10. Reverse the Product_Name
SELECT REVERSE(Product_Name) AS Reversed_Name
FROM Orders;

--11. Convert the first letter of each word in Product_Name to uppercase

SELECT INITCAP(Product_Name) AS Proper_Case_Product
FROM Orders;

--12. Extract the last 3 characters from Order_ID
SELECT RIGHT(Order_ID, 3) AS Last_Three
FROM Orders;

--13. Count how many times letter 'a' appears in Customer_Name
SELECT Customer_Name,
       (LEN(Customer_Name) - LEN(REPLACE(Customer_Name, 'a', ''))) AS A_Count
FROM Orders;


--14. Mask the last 4 digits of a phone number
SELECT CONCAT(LEFT(Phone_Number, LEN(Phone_Number)-4), 'XXXX') AS Masked_Phone
FROM Orders;

--15. Split Full_Name into First_Name and Last_Name
SELECT Customer_Name,
       LEFT(Customer_Name, CHARINDEX(' ', Customer_Name) - 1) AS First_Name,
       RIGHT(Customer_Name, LEN(Customer_Name) - CHARINDEX(' ', Customer_Name)) AS Last_Name
FROM Orders;

--16.Remove all special characters from Product_Code
SELECT REGEXP_REPLACE(Product_Code, '[^a-zA-Z0-9]', '') AS Clean_Code
FROM Orders;

-- 17. Compare two columns ignoring case sensitivity
SELECT *
FROM Orders
WHERE LOWER(Column1) = LOWER(Column2);

--18.Find customers whose name contains 'kumar'
SELECT Customer_Name
FROM Orders
WHERE LOWER(Customer_Name) LIKE '%kumar%';

--19. Pad Order_ID with leading zeros to make it 6 digits
SELECT LPAD(Order_ID, 6, '0') AS Padded_Order_ID
FROM Orders;

--20. Extract substring between two characters
SELECT SUBSTRING(
           Product_Name,
           INSTR(Product_Name,( '') + 1,
           INSTR(Product_Name, ('') - INSTR(Product_Name, ('') - 1
       ) AS Extracted_Substring
FROM Orders;
