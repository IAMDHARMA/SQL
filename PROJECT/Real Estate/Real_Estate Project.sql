create database Real_EstateDB;
use Real_estateDB;
CREATE TABLE Agents (
    Agents_id INT PRIMARY KEY,
    Name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(30)
);
CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(30)
);
CREATE TABLE properties (
    property_id INT PRIMARY KEY,
    address VARCHAR(100),
    city VARCHAR(20),
    price DECIMAL(3 , 2 ),
    status VARCHAR(20)
);
Alter table properties modify price decimal(12,2);
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    property_id INT,
    client_id INT,
    agents_id INT,
    salesPrice DECIMAL(12 , 2 ),
    commission DECIMAL(12 , 2 ),
    date DATE,
    FOREIGN KEY (property_id)
        REFERENCES Properties (property_id),
    FOREIGN KEY (client_id)
        REFERENCES clients (client_id),
    FOREIGN KEY (agents_id)
        REFERENCES agents (agents_id)
);

-- INSERT THE DATA INTO THE TABLE

INSERT INTO Agents (AgentS_ID, Name, Phone, Email) VALUES
(1, 'Alice Johnson', '555-1001', 'alice1@example.com'),
(2, 'Bob Smith', '555-1002', 'bob2@example.com'),
(3, 'Charlie Brown', '555-1003', 'charlie3@example.com'),
(4, 'Diana White', '555-1004', 'diana4@example.com'),
(5, 'Ethan Clark', '555-1005', 'ethan5@example.com'),
(6, 'Fiona Adams', '555-1006', 'fiona6@example.com'),
(7, 'George Hall', '555-1007', 'george7@example.com'),
(8, 'Hannah King', '555-1008', 'hannah8@example.com'),
(9, 'Ian Lee', '555-1009', 'ian9@example.com'),
(10, 'Julia Scott', '555-1010', 'julia10@example.com'),
(11, 'Kevin Parker', '555-1011', 'kevin11@example.com'),
(12, 'Laura Green', '555-1012', 'laura12@example.com'),
(13, 'Michael Young', '555-1013', 'michael13@example.com'),
(14, 'Nina Hill', '555-1014', 'nina14@example.com'),
(15, 'Oscar Wright', '555-1015', 'oscar15@example.com'),
(16, 'Paula Moore', '555-1016', 'paula16@example.com'),
(17, 'Quinn Baker', '555-1017', 'quinn17@example.com'),
(18, 'Rachel Adams', '555-1018', 'rachel18@example.com'),
(19, 'Sam Turner', '555-1019', 'sam19@example.com'),
(20, 'Tina Lewis', '555-1020', 'tina20@example.com'),
(21, 'Uma Lopez', '555-1021', 'uma21@example.com'),
(22, 'Victor Ross', '555-1022', 'victor22@example.com'),
(23, 'Wendy Carter', '555-1023', 'wendy23@example.com'),
(24, 'Xavier Diaz', '555-1024', 'xavier24@example.com'),
(25, 'Yara Price', '555-1025', 'yara25@example.com'),
(26, 'Zack Hughes', '555-1026', 'zack26@example.com'),
(27, 'Adam Cole', '555-1027', 'adam27@example.com'),
(28, 'Bella Reed', '555-1028', 'bella28@example.com'),
(29, 'Carl Stone', '555-1029', 'carl29@example.com'),
(30, 'Daisy Fox', '555-1030', 'daisy30@example.com');

INSERT INTO Clients (Client_ID, Name, Phone, Email) VALUES
(1, 'David Miller', '555-2001', 'david1@example.com'),
(2, 'Emma Wilson', '555-2002', 'emma2@example.com'),
(3, 'Frank Harris', '555-2003', 'frank3@example.com'),
(4, 'Grace Lee', '555-2004', 'grace4@example.com'),
(5, 'Henry Evans', '555-2005', 'henry5@example.com'),
(6, 'Isla Brooks', '555-2006', 'isla6@example.com'),
(7, 'Jack Kelly', '555-2007', 'jack7@example.com'),
(8, 'Kara Torres', '555-2008', 'kara8@example.com'),
(9, 'Liam Foster', '555-2009', 'liam9@example.com'),
(10, 'Mia Bennett', '555-2010', 'mia10@example.com'),
(11, 'Noah Gray', '555-2011', 'noah11@example.com'),
(12, 'Olivia Long', '555-2012', 'olivia12@example.com'),
(13, 'Peter Reed', '555-2013', 'peter13@example.com'),
(14, 'Queenie Hunt', '555-2014', 'queenie14@example.com'),
(15, 'Ryan Walsh', '555-2015', 'ryan15@example.com'),
(16, 'Sophia Morris', '555-2016', 'sophia16@example.com'),
(17, 'Thomas Hall', '555-2017', 'thomas17@example.com'),
(18, 'Ursula Watts', '555-2018', 'ursula18@example.com'),
(19, 'Victor Bell', '555-2019', 'victor19@example.com'),
(20, 'Willa Cooper', '555-2020', 'willa20@example.com'),
(21, 'Xander Cox', '555-2021', 'xander21@example.com'),
(22, 'Yvonne Boyd', '555-2022', 'yvonne22@example.com'),
(23, 'Zane Hayes', '555-2023', 'zane23@example.com'),
(24, 'Alice Ward', '555-2024', 'alice24@example.com'),
(25, 'Brian Ross', '555-2025', 'brian25@example.com'),
(26, 'Chloe James', '555-2026', 'chloe26@example.com'),
(27, 'Daniel Fisher', '555-2027', 'daniel27@example.com'),
(28, 'Ella Morgan', '555-2028', 'ella28@example.com'),
(29, 'Finn Howard', '555-2029', 'finn29@example.com'),
(30, 'Gina Russell', '555-2030', 'gina30@example.com');

INSERT INTO Properties (Property_ID, Address, City, Price, Status) VALUES
(1, '101 Main St', 'New York', 500000, 'Available'),
(2, '202 Oak Ave', 'Los Angeles', 750000, 'Sold'),
(3, '303 Pine Rd', 'Chicago', 620000, 'Available'),
(4, '404 Maple St', 'Houston', 480000, 'Available'),
(5, '505 Cedar Ln', 'Boston', 550000, 'Available'),
(6, '606 Birch Dr', 'Miami', 710000, 'Sold'),
(7, '707 Ash Ct', 'Dallas', 630000, 'Available'),
(8, '808 Elm Pl', 'San Diego', 800000, 'Available'),
(9, '909 Willow St', 'Phoenix', 450000, 'Available'),
(10, '111 Cherry Blvd', 'Seattle', 670000, 'Sold'),
(11, '121 Aspen Way', 'Denver', 520000, 'Available'),
(12, '131 Beech Cir', 'Atlanta', 580000, 'Available'),
(13, '141 Poplar Sq', 'Portland', 750000, 'Available'),
(14, '151 Spruce St', 'Detroit', 390000, 'Available'),
(15, '161 Magnolia Rd', 'Orlando', 640000, 'Available'),
(16, '171 Walnut Ln', 'Philadelphia', 710000, 'Sold'),
(17, '181 Sycamore Dr', 'Austin', 590000, 'Available'),
(18, '191 Redwood Ct', 'San Francisco', 930000, 'Sold'),
(19, '201 Palm St', 'Las Vegas', 570000, 'Available'),
(20, '211 Fir Ave', 'Charlotte', 460000, 'Available'),
(21, '221 Hickory Blvd', 'Columbus', 530000, 'Available'),
(22, '231 Linden Pl', 'Nashville', 610000, 'Sold'),
(23, '241 Dogwood Cir', 'Indianapolis', 440000, 'Available'),
(24, '251 Cottonwood Dr', 'Kansas City', 550000, 'Available'),
(25, '261 Juniper Ct', 'Salt Lake City', 690000, 'Available'),
(26, '271 Cypress Sq', 'New Orleans', 610000, 'Available'),
(27, '281 Holly St', 'Pittsburgh', 500000, 'Sold'),
(28, '291 Alder Ln', 'Cleveland', 470000, 'Available'),
(29, '301 Chestnut Pl', 'Minneapolis', 560000, 'Available'),
(30, '311 Maple Grove', 'San Jose', 880000, 'Available');

INSERT INTO Transactions (Transaction_ID, Property_ID, Client_ID, Agents_ID, SalesPrice, Commission, Date) VALUES
(1, 2, 1, 1, 740000, 22200, '2025-01-10'),
(2, 3, 2, 2, 610000, 18300, '2025-01-15'),
(3, 6, 4, 5, 720000, 21600, '2025-02-01'),
(4, 10, 7, 8, 680000, 20400, '2025-02-18'),
(5, 12, 6, 3, 590000, 17700, '2025-03-05'),
(6, 16, 9, 2, 710000, 21300, '2025-03-20'),
(7, 18, 11, 6, 930000, 27900, '2025-04-02'),
(8, 22, 13, 7, 615000, 18450, '2025-04-10'),
(9, 27, 15, 10, 500000, 15000, '2025-05-01'),
(10, 30, 19, 12, 870000, 26100, '2025-05-20'),
(11, 5, 3, 4, 540000, 16200, '2025-05-28'),
(12, 7, 6, 8, 635000, 19050, '2025-06-10'),
(13, 8, 8, 15, 790000, 23700, '2025-06-25'),
(14, 11, 12, 17, 525000, 15750, '2025-07-02'),
(15, 14, 10, 13, 395000, 11850, '2025-07-15'),
(16, 15, 9, 5, 645000, 19350, '2025-07-20'),
(17, 17, 14, 9, 595000, 17850, '2025-08-01'),
(18, 19, 20, 11, 565000, 16950, '2025-08-10'),
(19, 21, 22, 19, 535000, 16050, '2025-08-18'),
(20, 23, 24, 20, 445000, 13350, '2025-08-25'),
(21, 24, 25, 16, 560000, 16800, '2025-09-05'),
(22, 25, 27, 14, 695000, 20850, '2025-09-15'),
(23, 26, 28, 2, 615000, 18450, '2025-09-25'),
(24, 28, 29, 6, 470000, 14100, '2025-10-01'),
(25, 29, 30, 7, 565000, 16950, '2025-10-10'),
(26, 1, 5, 18, 505000, 15150, '2025-10-20'),
(27, 4, 7, 3, 475000, 14250, '2025-11-01'),
(28, 9, 16, 4, 455000, 13650, '2025-11-15'),
(29, 13, 18, 12, 745000, 22350, '2025-11-25'),
(30, 20, 21, 9, 465000, 13950, '2025-12-05');

-- TABLE
select * from agents;
select * from clients;
select * from properties;
select * from transactions;

-- Scenrio
-- List all properties that are still available (Status = 'Available') along with their agents’ names.
SELECT 
    a.name, p.status
FROM
    properties p
        INNER JOIN
    transactions t ON p.property_id = t.property_id
        INNER JOIN
    agents a ON t.agents_id = a.agents_id
WHERE
    status = 'available'

-- Find the top 3 agents who handled the most transactions.

SELECT 
    a.agents_id,
    a.name,
    COUNT(t.transaction_id) AS total_transaction
FROM
    agents a
        JOIN
    transactions t ON a.agents_id = t.agents_id
GROUP BY a.agents_id , a.name
ORDER BY total_transaction DESC
LIMIT 3;

-- Retrieve all transactions made by a particular client (e.g., ClientID = 5).

SELECT t.transaction_id,
       t.property_id,
       t.agents_id,
       t.date,
       t.salesprice
FROM transactions t
WHERE t.client_id = 5;

-- Show properties priced between 550000 and 610000 with their city and agent details.
SELECT 
    a.agents_id, a.name, a.phone, a.email, p.city, p.price
FROM
    properties p
        JOIN
    transactions t ON p.property_id = t.property_id
        JOIN
    agents a ON t.agents_id = a.agents_id
WHERE
    p.price BETWEEN 550000 AND 610000
ORDER BY price;

-- Find the total sales amount generated by each agent.
SELECT a.agents_id,
       a.name AS agent_name,
       SUM(p.price) AS total_sales
FROM agents a
JOIN transactions t 
    ON a.agents_id = t.agents_id
JOIN properties p 
    ON t.property_id = p.property_id
WHERE p.status = 'available'   
GROUP BY a.agents_id, a.name
ORDER BY total_sales DESC;

-- Get the client names who purchased properties in the city "Chennai".

-- List all properties that have never been sold (i.e., not present in the Transactions table).

-- Calculate the commission earned by each agent and order it in descending order.

-- Find the most expensive property sold and the client who bought it.

-- Show the number of properties sold in each city.*/