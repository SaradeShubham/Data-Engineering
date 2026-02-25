
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

--NUMERICAL FUNCTIONS – 20 Questions

--1 Round Unit_Price to 2 decimal places.
  select ROUND(Unit_Price, 2) FROM Orders;

--2 Find total sales per order.
  select Order_ID, Quantity * Unit_Price AS Total_Sales FROM Orders;

--3 Calculate average order value.
  select AVG(Quantity * Unit_Price) FROM Orders;

--4 Find highest product price.
   select max (Unit_Price) FROM Orders;

--5 Find lowest product price.
   select min(Unit_Price) FROM Orders;

--6 Calculate percentage discount applied.
  select ((Original_Price - Discounted_Price) / Original_Price) * 100 
   AS Discount_PercentageFROM Orders;

-- 7 Find modulus of Quantity divided by 2.
    select MOD(Quantity,2) FROM Orders;

--8 Convert negative values to positive.
    select ABS(-100) FROM Orders;

--9 Truncate price without rounding.
    select SQRT(Quantity*Unit_Price) FROM Orders;

--10 Find square root of total sales.
    select SQRT(Quantity*Unit_Price) FROM Orders;
     
--11  Calculate exponential value of a number.
   select T EXP(2) FROM DUAL;

--12 Calculate power of 2^5.
    select POWER(2, 5) AS Result FROM DUAL;

--13 Find absolute difference between two prices.
    select ABS(MAX(Unit_Price)-MIN(Unit_Price)) as Price-Difference FROM Orders;

--14 Calculate percentage discount applied.
  select ((Current_Sales - Previous_Sales) / Previous_Sales) * 100 
    AS Sales_Growth_Percentage FROM Orders;

--15 Find random number between 1 and 100.
    select  FLOOR(DBMS_RANDOM.VALUE(1, 101)) AS Random_Number FROM DUAL;

--16 Divide total sales by number of orders.
   SELECT SUM(Quantity * Unit_Price) / COUNT(*) FROM Orders;

--17 Find ceiling value of price.
   select CEIL(Unit_Price) as ceil_price FROM Orders;
 
--18 Find floor value of price.
   select FLOOR(Unit_Price)  as floor_price FROM Orders;

--19 Convert decimal to integer.
   select cast(Unit_Price AS NUMBER(10,0)) AS Unit_Integer FROM Orders;
    
--20 Calculate compound interest.
   SELECT Order_ID, Unit_Price AS Principal,
    ROUND(Unit_Price * POWER(1 + 0.1, 2) - Unit_Price, 2) AS Compound_Interest FROM Orders;

