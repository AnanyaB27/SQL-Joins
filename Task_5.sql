CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT
);
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    Product TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'David');
INSERT INTO Orders VALUES 
    (101, 1, 'Laptop'), 
    (102, 2, 'Keyboard'), 
    (103, 1, 'Mouse'), 
    (104, 3, 'Monitor'), 
    (105, 5, 'Headphones'); -- CustomerID 5 does not exist in Customers
SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.Name, Orders.Product
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
