-- ============================================================
-- PET SHOP MANAGEMENT SYSTEM (MYSQL)
-- COMPLETE DATABASE SCRIPT
-- ============================================================

CREATE DATABASE IF NOT EXISTS petshop;
USE petshop;

-- ============================================================
-- DROP TABLES
-- ============================================================

DROP TABLE IF EXISTS salesdet;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS food;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS bird;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Admin;

-- ============================================================
-- ADMIN TABLE
-- ============================================================

CREATE TABLE Admin (
    Name VARCHAR(50),
    Contact VARCHAR(50),
    AdminID VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(50)
);

INSERT INTO Admin VALUES
('Administrator','0123456789','admin','admin123');

-- ============================================================
-- CUSTOMERS TABLE
-- ============================================================

CREATE TABLE Customers (
    Name VARCHAR(50),
    Contact VARCHAR(50),
    Email VARCHAR(50),
    City VARCHAR(50),
    Area VARCHAR(50),
    ExperiencePet VARCHAR(50),
    Address VARCHAR(1000)
);

INSERT INTO Customers VALUES
('Rahul','9876543210','rahul@gmail.com','Chennai','Anna Nagar','Yes','No 10 Chennai'),
('Priya','9876543211','priya@gmail.com','Madurai','KK Nagar','No','No 20 Madurai'),
('Karthik','9876543212','karthik@gmail.com','Trichy','Central','Yes','No 30 Trichy');

-- ============================================================
-- ANIMAL TABLE
-- ============================================================

CREATE TABLE animal (
    AID VARCHAR(50) PRIMARY KEY,
    Category VARCHAR(50),
    Price INT,
    Color VARCHAR(50),
    DOB DATE
);

INSERT INTO animal VALUES
('A001','Dog - Golden Retriever',2500,'Golden','2024-01-15'),
('A002','Cat - Persian',1800,'White','2024-02-20'),
('A003','Dog - German Shepherd',3000,'Black/Tan','2023-11-10'),
('A004','Rabbit - Holland Lop',350,'Brown','2024-03-05'),
('A005','Hamster - Syrian',120,'Golden','2024-04-12');

-- ============================================================
-- BIRD TABLE
-- ============================================================

CREATE TABLE bird (
    BID VARCHAR(50) PRIMARY KEY,
    Category VARCHAR(50),
    Price INT,
    Age VARCHAR(50),
    Color VARCHAR(50)
);

INSERT INTO bird VALUES
('B001','Parrot - Macaw',1200,'6 months','Blue/Gold'),
('B002','Canary',150,'3 months','Yellow'),
('B003','Cockatiel',350,'1 year','Grey'),
('B004','Lovebird',280,'8 months','Green'),
('B005','Budgerigar',80,'4 months','Blue');

-- ============================================================
-- PRODUCT TABLE
-- ============================================================

CREATE TABLE product (
    PID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50),
    Price INT,
    UsageType VARCHAR(50)
);

INSERT INTO product VALUES
('P001','Dog Cage Large',450,'Housing'),
('P002','Pedigree 10kg',320,'Food'),
('P003','Pet Shampoo',85,'Grooming'),
('P004','Cat Litter Box',120,'Housing'),
('P005','Leash & Collar Set',65,'Walking');

-- ============================================================
-- FOOD TABLE
-- ============================================================

CREATE TABLE food (
    FID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50),
    Price INT,
    Brand VARCHAR(50)
);

INSERT INTO food VALUES
('F001','Pedigree Adult 10kg',320,'Pedigree'),
('F002','Whiskas Cat Food 7kg',280,'Whiskas'),
('F003','Bird Seed Mix 5kg',150,'Topflite'),
('F004','Fish Food Pellets 1kg',45,'AquaOne'),
('F005','Rabbit Pellets 2kg',60,'Oxbow');

-- ============================================================
-- SALES TABLE
-- ============================================================

CREATE TABLE sales (
    Bill INT PRIMARY KEY,
    Amount INT,
    Paid VARCHAR(50),
    Status VARCHAR(50)
);

INSERT INTO sales VALUES
(1001,4747,'Paid','Delivered'),
(1002,2150,'Paid','Delivered'),
(1003,890,'Not Paid','Sold'),
(1004,5630,'Paid','Delivered'),
(1005,1200,'Not Paid','Sold');

-- ============================================================
-- SALES DETAILS TABLE
-- ============================================================

CREATE TABLE salesdet (
    Bill INT,
    Particular VARCHAR(50),
    Amount INT
);

INSERT INTO salesdet VALUES
(1001,'A001',2625),
(1001,'B001',1260),
(1001,'P001',504),
(1001,'F001',358),

(1002,'A002',1890),
(1002,'P003',95),
(1002,'F003',165),

(1003,'B002',157),
(1003,'P004',134),
(1003,'F004',50),
(1003,'F005',67),

(1004,'A003',3150),
(1004,'B003',367),
(1004,'P002',358),
(1004,'P005',72),
(1004,'F002',313),
(1004,'F005',67),
(1004,'P001',504),

(1005,'A004',367),
(1005,'B004',294),
(1005,'P003',95),
(1005,'F001',358),
(1005,'F003',165);

-- ============================================================
-- VERIFICATION
-- ============================================================

SELECT 'Admin' AS TableName, COUNT(*) AS TotalRows FROM Admin
UNION ALL
SELECT 'Customers', COUNT(*) FROM Customers
UNION ALL
SELECT 'animal', COUNT(*) FROM animal
UNION ALL
SELECT 'bird', COUNT(*) FROM bird
UNION ALL
SELECT 'product', COUNT(*) FROM product
UNION ALL
SELECT 'food', COUNT(*) FROM food
UNION ALL
SELECT 'sales', COUNT(*) FROM sales
UNION ALL
SELECT 'salesdet', COUNT(*) FROM salesdet;

SELECT * FROM Admin;
SELECT * FROM Customers;
SELECT * FROM animal;
SELECT * FROM bird;
SELECT * FROM product;
SELECT * FROM food;
SELECT * FROM sales;
SELECT * FROM salesdet;

SELECT SUM(Amount) AS Total_Revenue
FROM sales;

SELECT *
FROM sales
ORDER BY Amount DESC
LIMIT 1;

SELECT *
FROM animal
ORDER BY Price DESC
LIMIT 1;

SELECT AVG(Price) AS Avg_Product_Price
FROM product;

SELECT Paid,
COUNT(*) AS Total_Orders
FROM sales
GROUP BY Paid;

