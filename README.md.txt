# Pet Shop Management System

## Project Overview
This is a team-based Pet Shop Management System website project.

My contribution was Database Design and Management using MySQL.

## Role
Database Developer

## Responsibilities
- Designed database schema
- Created tables and relationships
- Inserted sample data
- Managed sales and inventory records
- Developed SQL queries for reporting

## Technologies Used
- MySQL
- MySQL Workbench
- SQL

## Database Tables

1. Admin
2. Customers
3. Animal
4. Bird
5. Product
6. Food
7. Sales
8. Sales Details

## Features

- Pet Inventory Management
- Product Management
- Food Inventory Tracking
- Sales Management
- Revenue Analysis
- Customer Data Management

## Sample SQL Reports

### Total Revenue

```sql
SELECT SUM(Amount) AS Total_Revenue
FROM sales;

SELECT AVG(Price) AS Avg_Product_Price
FROM product;

SELECT *
FROM animal
ORDER BY Price DESC
LIMIT 1;

PetShop-Management-System/
│
├── SQL/
│   └── 01_SetupDatabase.sql
│
├── Data/
│   ├── ADMIN.csv
│   ├── ANIMALS.csv
│   ├── BIRDS.csv
│   ├── PRODUCTS.csv
│   ├── FOODS.csv
│   └── SALES.csv
│
├── Reports/
│   ├── TOTAL_REVENUE.csv
│   └── AVG_PRODUCT_PRICE.csv
│
├── Screenshots/
│   ├── database_tables.png
│   ├── highest_priced_animal.png
│   ├── sales.png
│   ├── total_revenue.png
│   └── avg_product_price.png
│
└── README.md

PetShop-Management-System/
│
├── SQL/
│   └── 01_SetupDatabase.sql
│
├── Data/
│   ├── ADMIN.csv
│   ├── ANIMALS.csv
│   ├── BIRDS.csv
│   ├── PRODUCTS.csv
│   ├── FOODS.csv
│   └── SALES.csv
│
├── Reports/
│   ├── TOTAL_REVENUE.csv
│   └── AVG_PRODUCT_PRICE.csv
│
├── Screenshots/
│   ├── database_tables.png
│   ├── highest_priced_animal.png
│   ├── sales.png
│   ├── total_revenue.png
│   └── avg_product_price.png
│
└── README.md
PetShop-Management-System/
│
├── SQL/
│   └── 01_SetupDatabase.sql
│
├── Data/
│   ├── ADMIN.csv
│   ├── ANIMALS.csv
│   ├── BIRDS.csv
│   ├── PRODUCTS.csv
│   ├── FOODS.csv
│   └── SALES.csv
│
├── Reports/
│   ├── TOTAL_REVENUE.csv
│   └── AVG_PRODUCT_PRICE.csv
│
├── Screenshots/
│   ├── database_tables.png
│   ├── highest_priced_animal.png
│   ├── sales.png
│   ├── total_revenue.png
│   └── avg_product_price.png
│
└── README.md

Author

Keerthi Vasan

Database Management Team Member


---

### Check README

Double-click `README.md`.

If it opens in Notepad and shows the content, that's fine.

When uploaded to GitHub, it will automatically become your project's front page and look professional. 🚀

After creating it, send me a screenshot of the project folder and I'll check if it's GitHub-ready.