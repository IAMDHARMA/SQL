
create database Supply_Chain_Management_System;
use supply_chain_Management_system;

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address TEXT
);

CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(100),
    Location VARCHAR(150)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Description TEXT,
    UnitPrice DECIMAL(10, 2),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    WarehouseID INT,
    Quantity INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID)
);

CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    SupplierID INT,
    WarehouseID INT,
    ShipmentDate DATE,
    ArrivalDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    WarehouseID INT,
    Quantity INT,
    OrderDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Phone, Email, Address) VALUES
(1, 'Stark Inc', 'Kevin Rodriguez', '257-276-9787', 'blake45@example.com', '04034 Fuller Extension, Adamsstad, FL 11523'),
(2, 'Klein-Klein', 'Amanda Miller', '964.778.5271', 'jones.amy@example.org', '5793 George Expressway, New Derekfort, AR 12085'),
(3, 'Parker Group', 'James Young', '983.582.7414', 'christinegreer@example.org', '336 Monica Lake Suite 168, Port Andreafurt, MO 21592'),
(4, 'Watson Inc', 'Andrew Anderson', '888-216-1192x2701', 'hansenmegan@example.com', '8725 Frederick Parkway, South Jason, KY 25317'),
(5, 'Howard-Boyd', 'Elizabeth Nelson', '(313)213-9073', 'ramirezsteven@example.org', '89251 Kristin Road, East Julie, IL 66500'),
(6, 'Ramos, Campbell and Vargas', 'Samantha Miller', '786-929-0557', 'jonesscott@example.org', '1693 Clark Stream, Port Jordanview, MS 00461'),
(7, 'Kennedy Group', 'Stephanie Flores', '939.451.6824x7066', 'grahambryan@example.net', '20146 Matthew Tunnel Suite 264, New Victor, NC 00253'),
(8, 'Walton Inc', 'David Gonzalez', '(902)375-3644x278', 'angelicacantu@example.com', '0275 John Fords, West Brittany, KS 62540'),
(9, 'Douglas and Sons', 'Daniel Anderson', '192.086.6247x080', 'christinerojas@example.org', '18383 Cynthia Isle Apt. 478, East Jessicaville, MI 73659'),
(10, 'Nguyen PLC', 'Jennifer Smith', '241-603-2514', 'rwillis@example.net', '8223 Freeman Landing, South Craigborough, MA 92064'),
(11, 'Gonzalez LLC', 'Rachel Carter', '814.487.9680', 'twhite@example.org', '38059 Michael Village, Lake Amandaberg, TN 41232'),
(12, 'Nelson LLC', 'Thomas Garcia', '630-012-1462x9185', 'ricemargaret@example.com', '23766 Cheryl Coves, New Gregorymouth, OK 88426'),
(13, 'Mendoza, Parker and Wilson', 'Brian Clark', '(853)078-9529', 'stevensmarcus@example.net', '94925 James Views, Lake Justinland, GA 01400'),
(14, 'Sullivan Ltd', 'Christina Johnson', '662.348.3960', 'rbarnes@example.net', '61616 Stone Pines Apt. 298, Lake Lisa, LA 28046'),
(15, 'Gomez and Sons', 'Rebecca Thomas', '034-264-8475', 'martindeborah@example.org', '87878 Pacheco Roads Suite 655, South Richardville, TX 36898'),
(16, 'Barnes, King and Grant', 'Jeffrey Davis', '(351)880-6945', 'ryan79@example.com', '81265 Stanley Creek Suite 716, North Rebeccafurt, WY 93284'),
(17, 'Walsh-Jones', 'Anthony Adams', '850-079-1804', 'josephmoore@example.org', '50237 Duffy Shore Apt. 387, Hernandezborough, SC 75426'),
(18, 'Fields, Harris and Lambert', 'Nicholas Lee', '(592)496-0971x3423', 'kennethrobinson@example.net', '46936 Williams Walk Suite 288, Port Scottburgh, ID 81264'),
(19, 'Ramirez, May and Lambert', 'Ashley Scott', '312.670.9616', 'darren73@example.net', '60158 Snyder Village Apt. 559, South Leah, NV 62007'),
(20, 'Brady, Stevens and Harris', 'Jessica Martinez', '(681)356-2754', 'michael24@example.com', '2311 Fisher Street, Port Brianshire, ND 10894');


INSERT INTO Warehouses (WarehouseID, WarehouseName, Location) VALUES
(1, 'Lake John Warehouse', 'East Zacharyport, United States'),
(2, 'West Brittany Warehouse', 'East Amanda, United States'),
(3, 'New Sarah Warehouse', 'Port Tiffany, United States'),
(4, 'Port Lindsay Warehouse', 'West Ryan, United States'),
(5, 'Port Tanya Warehouse', 'Port Crystalfort, United States'),
(6, 'Port Donald Warehouse', 'Port Rodney, United States'),
(7, 'Port Matthew Warehouse', 'South Victor, United States'),
(8, 'Lake Andrew Warehouse', 'Port Daniel, United States'),
(9, 'North Scott Warehouse', 'Lake Amanda, United States'),
(10, 'South Brian Warehouse', 'North Crystalton, United States'),
(11, 'Lake Bryan Warehouse', 'West Dana, United States'),
(12, 'New Randy Warehouse', 'Lake Robin, United States'),
(13, 'South Lawrence Warehouse', 'Lake Denise, United States'),
(14, 'New Craig Warehouse', 'Lake Randall, United States'),
(15, 'South Richard Warehouse', 'Port Matthew, United States'),
(16, 'Lake Todd Warehouse', 'East Christopherbury, United States'),
(17, 'West Christine Warehouse', 'Port Monica, United States'),
(18, 'Lake Daniel Warehouse', 'North Natalie, United States'),
(19, 'Lake Sharon Warehouse', 'South Brittany, United States'),
(20, 'Lake Natasha Warehouse', 'Port Sarahville, United States');

INSERT INTO Products (ProductID, ProductName, Description, UnitPrice, SupplierID) VALUES
(1, 'Chair Azure', 'Decide impact assume local difficult direction.', 25.34, 5),
(2, 'Lamp Pink', 'Smile whom suddenly prepare trouble something.', 49.91, 13),
(3, 'Bottle Gold', 'Black wear sign chance vote color price.', 32.54, 18),
(4, 'Table Turquoise', 'Strong mission laugh Mrs. forward another.', 63.27, 7),
(5, 'Desk Lime', 'Debate general recent appear method.', 91.72, 2),
(6, 'Book Blue', 'Democratic color power either maybe responsibility.', 53.49, 10),
(7, 'Phone Olive', 'Leader light father pick sport.', 42.11, 4),
(8, 'Bag Maroon', 'Commercial want discover while resource.', 68.04, 16),
(9, 'Shoe Silver', 'Age shake school blue position guess.', 26.8, 11),
(10, 'Watch Teal', 'Notice house film apply.', 38.45, 6),
(11, 'Glasses Red', 'Score hospital property sit yourself.', 54.33, 8),
(12, 'Pen Cyan', 'Grow artist return society rather.', 46.79, 19),
(13, 'Pillow Indigo', 'Lawyer kitchen decide reality.', 84.25, 9),
(14, 'Notebook White', 'Million stop according before.', 22.91, 14),
(15, 'Fan Purple', 'Actually oil wish risk friend.', 96.18, 17),
(16, 'Bottle Lavender', 'Suddenly participant sometimes avoid.', 40.26, 12),
(17, 'Mirror Plum', 'Visit behind join although herself.', 79.02, 3),
(18, 'Shelf Fuchsia', 'Protect tonight season different teacher.', 36.13, 15),
(19, 'Clock Bronze', 'Drive difference edge individual.', 72.3, 20),
(20, 'Tablet Beige', 'Outside among class wind include.', 65.08, 1);


INSERT INTO Inventory (InventoryID, ProductID, WarehouseID, Quantity) VALUES
(1, 5, 1, 299),
(2, 14, 9, 364),
(3, 12, 6, 222),
(4, 1, 14, 413),
(5, 8, 11, 118),
(6, 10, 3, 137),
(7, 20, 17, 351),
(8, 13, 2, 197),
(9, 4, 15, 229),
(10, 3, 7, 278),
(11, 11, 4, 424),
(12, 18, 8, 108),
(13, 17, 13, 496),
(14, 9, 20, 273),
(15, 6, 5, 144),
(16, 15, 10, 182),
(17, 2, 16, 327),
(18, 16, 12, 483),
(19, 7, 19, 92),
(20, 19, 18, 159);

INSERT INTO Shipments (ShipmentID, SupplierID, WarehouseID, ShipmentDate, ArrivalDate, Status) VALUES
(1, 9, 3, '2024-06-11', '2024-06-16', 'Delivered'),
(2, 14, 5, '2024-06-06', '2024-06-09', 'Shipped'),
(3, 6, 17, '2024-06-18', '2024-06-22', 'Pending'),
(4, 2, 10, '2024-06-12', '2024-06-16', 'Cancelled'),
(5, 1, 1, '2024-06-07', '2024-06-13', 'Pending'),
(6, 19, 4, '2024-06-09', '2024-06-14', 'Delivered'),
(7, 11, 7, '2024-06-14', '2024-06-20', 'Shipped'),
(8, 4, 8, '2024-06-26', '2024-07-02', 'Pending'),
(9, 10, 6, '2024-06-17', '2024-06-21', 'Shipped'),
(10, 13, 12, '2024-06-08', '2024-06-13', 'Cancelled'),
(11, 7, 2, '2024-06-21', '2024-06-26', 'Shipped'),
(12, 16, 11, '2024-06-19', '2024-06-25', 'Delivered'),
(13, 3, 13, '2024-06-16', '2024-06-22', 'Pending'),
(14, 17, 9, '2024-06-05', '2024-06-10', 'Cancelled'),
(15, 5, 15, '2024-06-10', '2024-06-12', 'Delivered'),
(16, 8, 20, '2024-06-25', '2024-07-01', 'Shipped'),
(17, 12, 16, '2024-06-13', '2024-06-15', 'Pending'),
(18, 20, 14, '2024-06-22', '2024-06-26', 'Delivered'),
(19, 15, 18, '2024-06-15', '2024-06-20', 'Cancelled'),
(20, 18, 19, '2024-06-23', '2024-06-28', 'Shipped');


INSERT INTO Orders (OrderID, ProductID, WarehouseID, Quantity, OrderDate, Status) VALUES
(1, 8, 14, 42, '2024-06-04', 'Delivered'),
(2, 13, 6, 30, '2024-06-06', 'Pending'),
(3, 19, 12, 65, '2024-06-09', 'Shipped'),
(4, 2, 10, 15, '2024-06-18', 'Cancelled'),
(5, 5, 3, 21, '2024-06-22', 'Pending'),
(6, 11, 8, 93, '2024-06-14', 'Shipped'),
(7, 4, 7, 11, '2024-06-07', 'Delivered'),
(8, 17, 19, 78, '2024-06-11', 'Cancelled'),
(9, 20, 2, 52, '2024-06-05', 'Pending'),
(10, 6, 13, 39, '2024-06-21', 'Shipped'),
(11, 3, 5, 88, '2024-06-10', 'Delivered'),
(12, 15, 1, 17, '2024-06-17', 'Pending'),
(13, 1, 20, 23, '2024-06-19', 'Cancelled'),
(14, 12, 9, 46, '2024-06-24', 'Delivered'),
(15, 10, 11, 67, '2024-06-08', 'Pending'),
(16, 14, 4, 53, '2024-06-27', 'Shipped'),
(17, 7, 15, 34, '2024-06-15', 'Delivered'),
(18, 9, 17, 84, '2024-06-13', 'Cancelled'),
(19, 18, 16, 49, '2024-06-20', 'Pending'),
(20, 16, 18, 60, '2024-06-28', 'Shipped');


/* SUPPLIER QUERIES
1.List all suppliers and their contact info */

SELECT 
    supplierName, contactName, phone, email
FROM
    suppliers;
    
/*2.Show suppliers who have sent shipments*/

SELECT DISTINCT s.SupplierName
FROM Suppliers s
JOIN Shipments sh ON s.SupplierID = sh.SupplierID;

/*SHIPMENT QUERIES
3.List all shipments with status and arrival date*/

select * from shipments;
select shipmentid,shipmentdate,arrivaldate,status from shipments;

/*4.Find delayed shipments (ArrivalDate > ShipmentDate + 5 days)*/

SELECT ShipmentID, ShipmentDate, ArrivalDate
FROM Shipments
WHERE ArrivalDate > DATE_ADD(ShipmentDate, INTERVAL 5 DAY);

/*5.Count of shipments by status*/

SELECT Status, COUNT(*) AS Total
FROM Shipments
GROUP BY Status;

/*ORDER QUERIES
6.List all orders placed for a specific warehouse*/
SELECT OrderID, ProductID, Quantity, Status
FROM Orders
WHERE WarehouseID = 5;

/*7.Find total quantity ordered for each product*/
SELECT ProductID, SUM(Quantity) AS TotalOrdered
FROM Orders
GROUP BY ProductID;

/*8.List orders with status = 'Cancelled'*/
SELECT * FROM Orders WHERE Status = 'Cancelled';

/*9.Top 5 most ordered products*/
SELECT ProductID, SUM(Quantity) AS TotalQty
FROM Orders
GROUP BY ProductID
ORDER BY TotalQty DESC
LIMIT 5;

/*10.Show number of orders per warehouse*/
SELECT WarehouseID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY WarehouseID;

/*INVENTORY QUERIES
11.Check inventory levels for each product in all warehouses*/
SELECT ProductID, WarehouseID, Quantity FROM Inventory;

/*12.Find products with inventory less than 100 units*/
SELECT * FROM Inventory WHERE Quantity < 100;

/*13.Total stock of each product across all warehouses*/
SELECT ProductID, SUM(Quantity) AS TotalStock
FROM Inventory
GROUP BY ProductID;

/*WAREHOUSE QUERIES
14.List all warehouses and their locations*/
SELECT WarehouseName, Location FROM Warehouses;

/*15.Warehouses receiving the most shipments*/
SELECT WarehouseID, COUNT(*) AS TotalShipments
FROM Shipments
GROUP BY WarehouseID
ORDER BY TotalShipments DESC;

/*16.List all products with their supplier names and unit prices*/
  
SELECT p.ProductName, s.SupplierName, p.UnitPrice
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

/*17.Find the most expensive product*/
SELECT * FROM Products
ORDER BY UnitPrice DESC
LIMIT 1;

/*18.Find products never ordered*/
SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN Orders o ON p.ProductID = o.ProductID
WHERE o.ProductID IS NULL;

/*19.List all orders with product name, warehouse name, and order status*/

SELECT o.OrderID, p.ProductName, w.WarehouseName, o.Status
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
JOIN Warehouses w ON o.WarehouseID = w.WarehouseID;

/*20.Total inventory value per product (quantity × price)*/

SELECT i.ProductID, SUM(i.Quantity * p.UnitPrice) AS InventoryValue
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
GROUP BY i.ProductID;


