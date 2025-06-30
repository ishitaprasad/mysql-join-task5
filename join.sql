CREATE DATABASE TEST;
USE TEST;

CREATE TABLE Customers (CustomerID INT PRIMARY KEY, CustomerName VARCHAR(100), City VARCHAR(50));
CREATE TABLE Orders (OrderID INT PRIMARY KEY, OrderDate DATE, CustomerID INT, Amount DECIMAL(10,2), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));

INSERT INTO Customers (CustomerID, CustomerName, City) VALUES (1, 'Alice', 'New York'), (2, 'Bob', 'Los Angeles'), (3, 'Charlie', 'Chicago'), (4, 'Diana', 'Miami');
INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount) VALUES (101, '2025-06-01', 1, 250.00), (102, '2025-06-05', 1, 150.00), (103, '2025-06-07', 2, 300.00);

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.Amount FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.Amount FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.Amount FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.Amount FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID UNION SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.Amount FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
