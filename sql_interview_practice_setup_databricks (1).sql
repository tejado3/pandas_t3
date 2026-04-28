-- Databricks SQL practice environment setup
-- Source-aware synthetic practice data inferred to support the extracted interview cases.

CREATE SCHEMA IF NOT EXISTS sql_interview.300_questions;

USE CATALOG sql_interview;
USE sql_interview.300_questions;
-- =========================================================
-- departments
-- Supports 7 extracted cases that reference `departments`, including examples such as: Get departments with no employees.; List all departments and their employee counts, including departments with zero employees.; Write a recursive query to compute the total budget under each manager (including subordinates)..
-- =========================================================
CREATE OR REPLACE TABLE departments (
    department_id INT,
    id INT,
    department_name STRING,
    creation_date DATE,
    manager_id INT,
    budget BIGINT
);

INSERT INTO departments VALUES
(10, 10, 'Executive', DATE '2008-01-01', NULL, 5000000),
(20, 20, 'Engineering', DATE '2010-03-01', 2, 3000000),
(30, 30, 'Finance', DATE '2011-05-01', 3, 1500000),
(40, 40, 'Sales', DATE '2012-07-01', 8, 2500000),
(50, 50, 'HR', DATE '2013-09-01', 11, 800000),
(60, 60, 'Support', DATE '2014-01-15', 18, 900000),
(70, 70, 'Analytics', DATE '2024-01-01', 20, 1200000),
(80, 80, 'R&D', DATE '2025-01-01', 20, 2000000),
(90, 90, 'Legal', DATE '2020-02-01', NULL, 700000),
(100, 100, 'Operations', DATE '2018-04-01', NULL, 1100000);

-- =========================================================
-- employees
-- Supports 137 extracted cases that reference `employees`, including examples such as: Find the second highest salary from the Employee table.; Find duplicate records in a table.; Retrieve employees who earn more than their manager..
-- =========================================================
CREATE OR REPLACE TABLE employees (
    id INT,
    name STRING,
    department_id INT,
    manager_id INT,
    salary INT,
    join_date DATE,
    hire_date DATE,
    termination_date DATE,
    gender STRING,
    job_title STRING,
    birth_date DATE
);

INSERT INTO employees VALUES
(1, 'Alice', 10, NULL, 200000, DATE '2010-01-04', DATE '2010-01-04', NULL, 'F', 'CEO', DATE '1980-05-01'),
(2, 'Bob', 20, 1, 170000, DATE '2012-02-06', DATE '2012-02-06', NULL, 'M', 'CTO', DATE '1982-03-12'),
(3, 'Carol', 30, 1, 165000, DATE '2011-03-07', DATE '2011-03-07', NULL, 'F', 'CFO', DATE '1983-08-22'),
(4, 'Dan', 20, 2, 120000, DATE '2014-06-09', DATE '2014-06-09', NULL, 'M', 'Manager', DATE '1985-01-20'),
(5, 'Eve', 20, 4, 125000, DATE '2013-06-09', DATE '2013-06-09', NULL, 'F', 'Developer', DATE '1987-07-14'),
(6, 'Frank', 20, 4, 90000, DATE '2015-01-12', DATE '2015-01-12', NULL, 'M', 'Developer', DATE '1991-11-11'),
(7, 'Grace', 20, 4, 90000, DATE '2015-01-12', DATE '2015-01-12', NULL, 'F', 'Tester', DATE '1991-11-11'),
(8, 'Henry', 40, 1, 150000, DATE '2012-11-05', DATE '2012-11-05', NULL, 'M', 'Director', DATE '1984-04-18'),
(9, 'Ivy', 40, 8, 85000, DATE '2024-10-01', DATE '2024-10-01', NULL, 'F', 'Sales Rep', DATE '1994-09-09'),
(10, 'Jack', 40, 8, 65000, DATE '2025-12-01', DATE '2025-12-01', NULL, 'M', 'Sales Rep', DATE '1996-12-12'),
(11, 'Kate', 50, 1, 110000, DATE '2016-02-01', DATE '2016-02-01', NULL, 'F', 'Manager', DATE '1988-02-01'),
(12, 'Leo', 50, 11, 110000, DATE '2016-02-01', DATE '2016-02-01', NULL, 'M', 'HR Specialist', DATE '1990-10-10'),
(13, 'Mia', 30, 3, 95000, DATE '2023-01-15', DATE '2023-01-15', NULL, 'F', 'Analyst', DATE '1993-03-03'),
(14, 'Nina', 30, 3, 95000, DATE '2023-01-15', DATE '2023-01-15', NULL, 'F', 'Analyst', DATE '1993-03-03'),
(15, 'Otto', NULL, 6, 35000, DATE '2025-11-01', DATE '2025-11-01', NULL, 'M', 'Contractor', DATE '1998-05-05'),
(16, 'Ada', 20, 4, 101, DATE '2025-04-01', DATE '2025-04-01', NULL, 'F', 'Developer', DATE '1999-04-01'),
(17, 'Anna', 20, 4, 110000, DATE '2014-06-09', DATE '2014-06-09', NULL, 'F', 'Developer', DATE '1992-06-09'),
(18, 'Paul', 60, 1, 105000, DATE '2022-01-03', DATE '2022-01-03', NULL, 'M', 'Manager', DATE '1989-01-03'),
(19, 'Quinn', 60, 18, 105000, DATE '2022-01-03', DATE '2022-01-03', NULL, 'F', 'Support Agent', DATE '1990-01-03'),
(20, 'Rita', 70, 1, 98000, DATE '2025-03-03', DATE '2025-03-03', NULL, 'F', 'Analyst', DATE '1995-03-03'),
(21, 'Sam', 80, 20, 99000, DATE '2024-12-15', DATE '2024-12-15', NULL, 'M', 'Scientist', DATE '1992-12-15'),
(22, 'Tara', 80, 20, 99000, DATE '2025-04-14', DATE '2025-04-14', NULL, 'F', 'Scientist', DATE '1994-04-14');

-- =========================================================
-- customers
-- Supports 18 extracted cases that reference `customers`, including examples such as: Find customers who have not made any purchase.; Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything.; Find customers who haven’t ordered in the last 6 months..
-- =========================================================
CREATE OR REPLACE TABLE customers (
    customer_id INT,
    name STRING,
    country STRING,
    region STRING,
    segment STRING,
    registration_date DATE
);

INSERT INTO customers VALUES
(101, 'Acme Corp', 'USA', 'North', 'Enterprise', DATE '2024-01-05'),
(102, 'Beta LLC', 'UK', 'West', 'SMB', DATE '2024-02-14'),
(103, 'Casa Retail', 'Spain', 'South', 'Consumer', DATE '2024-03-21'),
(104, 'Delta GmbH', 'Germany', 'East', 'Enterprise', DATE '2024-05-12'),
(105, 'Echo Ltd', 'India', 'South', 'SMB', DATE '2024-06-30'),
(106, 'Foxtrot SA', 'Spain', 'East', 'Consumer', DATE '2025-01-15'),
(107, 'Gamma Inc', 'USA', 'West', 'Enterprise', DATE '2025-08-01'),
(108, 'Hotel Co', 'France', 'North', 'SMB', DATE '2025-12-05');

-- =========================================================
-- categories
-- Supports 1 extracted cases that reference `categories`, including examples such as: Get the total sales amount for each product category including categories with zero sales..
-- =========================================================
CREATE OR REPLACE TABLE categories (
    category_id INT,
    category_name STRING
);

INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Grocery'),
(3, 'Apparel'),
(4, 'Home'),
(5, 'Books');

-- =========================================================
-- products
-- Supports 20 extracted cases that reference `products`, including examples such as: Find products that have never been sold.; List the customers who purchased all products in a specific category.; Find products that have never been ordered..
-- =========================================================
CREATE OR REPLACE TABLE products (
    product_id STRING,
    product_name STRING,
    category_id INT,
    price DECIMAL(10,2),
    launch_date DATE,
    discontinued BOOLEAN
);

INSERT INTO products VALUES
('A', 'Laptop', 1, 1200, DATE '2025-01-10', false),
('B', 'Phone', 1, 900, DATE '2025-02-15', false),
('C', 'Tablet', 1, 700, DATE '2025-03-20', false),
('D', 'Coffee', 2, 15, DATE '2024-12-01', false),
('E', 'Tea', 2, 12, DATE '2024-12-15', false),
('F', 'Jacket', 3, 150, DATE '2025-09-01', false),
('G', 'Chair', 4, 80, DATE '2025-11-20', false),
('H', 'Desk', 4, 300, DATE '2026-03-25', false),
('X', 'Headphones', 1, 200, DATE '2025-10-05', true),
('Z', 'Book', 5, 25, DATE '2026-04-10', false);

-- =========================================================
-- sales
-- Supports 78 extracted cases that reference `sales`, including examples such as: Find customers who have not made any purchase.; Write a query to get the first and last purchase date for each customer.; Find the most recent purchase per customer using window functions..
-- =========================================================
CREATE OR REPLACE TABLE sales (
    sale_id INT,
    customer_id INT,
    product_id STRING,
    employee_id INT,
    salesperson_id INT,
    sales_rep_id INT,
    category_id INT,
    sale_date DATE,
    purchase_date DATE,
    amount DECIMAL(10,2),
    sale_amount DECIMAL(10,2),
    quantity INT
);

INSERT INTO sales VALUES
(1, 101, 'A', 9, 9, 1, 1, DATE '2023-02-10', DATE '2023-02-10', 1200, 1200, 1),
(2, 101, 'B', 9, 9, 1, 1, DATE '2023-07-12', DATE '2023-07-12', 900, 900, 1),
(3, 105, 'D', 10, 10, 2, 2, DATE '2023-09-05', DATE '2023-09-05', 45, 45, 3),
(4, 101, 'A', 9, 9, 1, 1, DATE '2024-03-15', DATE '2024-03-15', 1200, 1200, 1),
(5, 102, 'B', 10, 10, 1, 1, DATE '2024-06-20', DATE '2024-06-20', 900, 900, 1),
(6, 103, 'D', 9, 9, 2, 2, DATE '2024-09-10', DATE '2024-09-10', 30, 30, 2),
(7, 104, 'A', 9, 9, 1, 1, DATE '2024-12-05', DATE '2024-12-05', 1200, 1200, 1),
(8, 101, 'A', 9, 9, 1, 1, DATE '2025-01-05', DATE '2025-01-05', 1200, 1200, 1),
(9, 101, 'B', 9, 9, 1, 1, DATE '2025-01-20', DATE '2025-01-20', 900, 900, 1),
(10, 102, 'A', 9, 9, 1, 1, DATE '2025-02-10', DATE '2025-02-10', 1200, 1200, 1),
(11, 102, 'X', 9, 9, 1, 1, DATE '2025-10-10', DATE '2025-10-10', 200, 200, 1),
(12, 103, 'D', 10, 10, 2, 2, DATE '2025-11-01', DATE '2025-11-01', 45, 45, 2),
(13, 101, 'A', 9, 9, 1, 1, DATE '2025-12-15', DATE '2025-12-15', 2400, 2400, 1),
(14, 104, 'B', 10, 10, 1, 1, DATE '2026-01-02', DATE '2026-01-02', 900, 900, 1),
(15, 104, 'C', 10, 10, 1, 1, DATE '2026-01-25', DATE '2026-01-25', 700, 700, 1),
(16, 105, 'A', 9, 9, 1, 1, DATE '2026-02-05', DATE '2026-02-05', 1200, 1200, 1),
(17, 105, 'B', 9, 9, 1, 1, DATE '2026-02-06', DATE '2026-02-06', 900, 900, 1),
(18, 105, 'A', 9, 9, 1, 1, DATE '2026-02-20', DATE '2026-02-20', 1200, 1200, 1),
(19, 106, 'H', 10, 10, 4, 4, DATE '2026-03-25', DATE '2026-03-25', 300, 300, 1),
(20, 106, 'A', 10, 10, 1, 1, DATE '2026-03-26', DATE '2026-03-26', 1200, 1200, 1),
(21, 107, 'X', 9, 9, 1, 1, DATE '2026-04-01', DATE '2026-04-01', 200, 200, 1),
(22, 107, 'B', 9, 9, 1, 1, DATE '2026-04-02', DATE '2026-04-02', 900, 900, 1),
(23, 107, 'D', 9, 9, 2, 2, DATE '2026-04-03', DATE '2026-04-03', 15, 15, 2),
(24, 101, 'E', 9, 9, 2, 2, DATE '2026-04-04', DATE '2026-04-04', 12, 12, 2),
(25, 102, 'F', 9, 9, 3, 3, DATE '2026-04-05', DATE '2026-04-05', 150, 150, 1),
(26, 103, 'A', 10, 10, 1, 1, DATE '2026-04-06', DATE '2026-04-06', 1200, 1200, 1),
(27, 103, 'B', 10, 10, 1, 1, DATE '2026-04-06', DATE '2026-04-06', 900, 900, 1),
(28, 104, 'A', 10, 10, 1, 1, DATE '2026-04-10', DATE '2026-04-10', 1200, 1200, 1),
(29, 101, 'B', 9, 9, 1, 1, DATE '2026-04-10', DATE '2026-04-10', 900, 900, 1),
(30, 101, 'A', 9, 9, 1, 1, DATE '2026-04-11', DATE '2026-04-11', 1200, 1200, 1),
(31, 101, 'A', 9, 9, 1, 1, DATE '2026-04-12', DATE '2026-04-12', 1200, 1200, 1),
(32, 101, 'A', 9, 9, 1, 1, DATE '2026-04-13', DATE '2026-04-13', 1200, 1200, 1),
(33, 106, 'C', 10, 10, 1, 1, DATE '2026-04-14', DATE '2026-04-14', 700, 700, 1);

-- =========================================================
-- orders
-- Supports 61 extracted cases that reference `orders`, including examples such as: Retrieve the last 5 orders for each customer.; Find average order value per month and product category.; Write a query to find the second most recent order date per customer..
-- =========================================================
CREATE OR REPLACE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id STRING,
    order_date DATE,
    amount DECIMAL(10,2),
    category_id INT,
    order_value DECIMAL(10,2),
    shipping_method STRING,
    shipping_date DATE,
    delivery_date DATE,
    payment_method STRING,
    order_channel STRING,
    discount DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    discount_used BOOLEAN
);

INSERT INTO orders VALUES
(1001, 101, 'A', DATE '2025-01-05', 1200, 1, 1200, 'Air', DATE '2025-01-06', DATE '2025-01-09', 'Credit Card', 'Online', 0, 0, false),
(1002, 101, 'B', DATE '2025-01-20', 900, 1, 900, 'Ground', DATE '2025-01-21', DATE '2025-01-25', 'Wire', 'Online', 50, 50, true),
(1003, 102, 'A', DATE '2025-02-10', 1200, 1, 1200, 'Air', DATE '2025-02-11', DATE '2025-02-13', 'Credit Card', 'Store', 0, 0, false),
(1004, 102, 'X', DATE '2025-10-10', 200, 1, 200, 'Ground', DATE '2025-10-11', DATE '2025-10-14', 'Credit Card', 'Online', 20, 20, true),
(1005, 103, 'D', DATE '2025-11-01', 45, 2, 45, 'Ground', DATE '2025-11-02', DATE '2025-11-04', 'Cash', 'Store', 0, 0, false),
(1006, 101, 'A', DATE '2025-12-15', 2400, 1, 2400, 'Air', DATE '2025-12-16', DATE '2025-12-18', 'Wire', 'Online', 0, 0, false),
(1007, 104, 'B', DATE '2026-01-02', 900, 1, 900, 'Ground', DATE '2026-01-03', DATE '2026-01-05', 'Credit Card', 'Online', 0, 0, false),
(1008, 104, 'C', DATE '2026-01-25', 700, 1, 700, 'Ground', DATE '2026-01-26', DATE '2026-01-30', 'Credit Card', 'Store', 35, 35, true),
(1009, 105, 'A', DATE '2026-02-05', 1200, 1, 1200, 'Air', DATE '2026-02-06', DATE '2026-02-08', 'UPI', 'Online', 0, 0, false),
(1010, 105, 'B', DATE '2026-02-06', 900, 1, 900, 'Air', DATE '2026-02-07', DATE '2026-02-09', 'UPI', 'Online', 0, 0, false),
(1011, 105, 'A', DATE '2026-02-20', 1200, 1, 1200, 'Ground', DATE '2026-02-21', DATE '2026-02-24', 'Credit Card', 'Store', 0, 0, false),
(1012, 106, 'H', DATE '2026-03-25', 300, 4, 300, 'Freight', DATE '2026-03-26', DATE '2026-03-30', 'Credit Card', 'Online', 0, 0, false),
(1013, 106, 'A', DATE '2026-03-26', 1200, 1, 1200, 'Air', DATE '2026-03-27', DATE '2026-03-29', 'Credit Card', 'Online', 100, 100, true),
(1014, 107, 'X', DATE '2026-04-01', 200, 1, 200, 'Ground', DATE '2026-04-02', DATE '2026-04-05', 'Cash', 'Store', 10, 10, true),
(1015, 107, 'B', DATE '2026-04-02', 900, 1, 900, 'Ground', DATE '2026-04-03', DATE '2026-04-06', 'Credit Card', 'Online', 0, 0, false),
(1016, 107, 'D', DATE '2026-04-03', 15, 2, 15, 'Ground', DATE '2026-04-04', DATE '2026-04-07', 'Credit Card', 'Online', 0, 0, false),
(1017, 101, 'E', DATE '2026-04-04', 12, 2, 12, 'Ground', DATE '2026-04-05', DATE '2026-04-08', 'Wire', 'Store', 0, 0, false),
(1018, 102, 'F', DATE '2026-04-05', 150, 3, 150, 'Ground', DATE '2026-04-06', DATE '2026-04-10', 'Credit Card', 'Online', 15, 15, true),
(1019, 103, 'A', DATE '2026-04-06', 1200, 1, 1200, 'Air', DATE '2026-04-07', DATE '2026-04-09', 'Credit Card', 'Online', 0, 0, false),
(1020, 103, 'B', DATE '2026-04-06', 900, 1, 900, 'Air', DATE '2026-04-07', DATE '2026-04-09', 'Credit Card', 'Online', 0, 0, false),
(1021, 104, 'A', DATE '2026-04-10', 1200, 1, 1200, 'Air', DATE '2026-04-11', DATE '2026-04-13', 'Cash', 'Store', 0, 0, false),
(1022, 101, 'B', DATE '2026-04-10', 900, 1, 900, 'Ground', DATE '2026-04-11', DATE '2026-04-14', 'Credit Card', 'Online', 0, 0, false),
(1023, 101, 'A', DATE '2026-04-11', 1200, 1, 1200, 'Air', DATE '2026-04-12', DATE '2026-04-14', 'Credit Card', 'Online', 0, 0, false),
(1024, 101, 'A', DATE '2026-04-12', 1200, 1, 1200, 'Air', DATE '2026-04-13', DATE '2026-04-15', 'Credit Card', 'Online', 0, 0, false),
(1025, 101, 'A', DATE '2026-04-13', 1200, 1, 1200, 'Air', DATE '2026-04-14', NULL, 'Credit Card', 'Online', 0, 0, false),
(1026, 106, 'C', DATE '2026-04-14', 700, 1, 700, 'Ground', NULL, NULL, 'Debit Card', 'Store', 0, 0, false);

-- =========================================================
-- projects
-- Supports 11 extracted cases that reference `projects`, including examples such as: Write a query to find the difference in days between two dates in the same table.; Find employees who have managed more than 3 projects.; Find employees who have worked on all projects..
-- =========================================================
CREATE OR REPLACE TABLE projects (
    project_id INT,
    department_id INT,
    manager_id INT,
    start_date DATE,
    end_date DATE,
    completion_date DATE,
    status STRING,
    budget BIGINT
);

INSERT INTO projects VALUES
(201, 20, 4, DATE '2023-01-01', DATE '2023-12-31', DATE '2023-12-31', 'Completed', 1500000),
(202, 20, 4, DATE '2024-01-15', DATE '2024-10-30', DATE '2024-10-30', 'Completed', 800000),
(203, 30, 3, DATE '2025-01-01', DATE '2025-11-30', DATE '2025-11-30', 'Completed', 500000),
(204, 40, 8, DATE '2025-03-01', DATE '2025-12-31', DATE '2025-12-31', 'Completed', 2200000),
(205, 40, 8, DATE '2026-01-10', DATE '2026-09-30', NULL, 'Active', 900000),
(206, 60, 18, DATE '2025-06-01', DATE '2026-06-01', NULL, 'Active', 300000),
(207, 70, 20, DATE '2025-02-01', DATE '2025-08-15', DATE '2025-08-15', 'Completed', 1200000),
(208, 80, 20, DATE '2025-04-01', DATE '2027-04-01', NULL, 'Active', 2500000),
(209, 20, 4, DATE '2025-07-01', DATE '2026-01-31', NULL, 'Active', 400000),
(210, 20, 4, DATE '2026-02-01', DATE '2026-12-31', NULL, 'Active', 600000);

-- =========================================================
-- project_assignments
-- Supports 16 extracted cases that reference `project_assignments`, including examples such as: Identify employees who had overlapping project assignments.; Find employees who have not been assigned to any project.; Find employees who have worked on all projects..
-- =========================================================
CREATE OR REPLACE TABLE project_assignments (
    employee_id INT,
    project_id INT,
    assignment_date DATE,
    start_date DATE,
    end_date DATE,
    assignment_start_date DATE,
    assignment_end_date DATE,
    hours_worked INT
);

INSERT INTO project_assignments VALUES
(5, 201, DATE '2023-01-01', DATE '2023-01-01', DATE '2023-06-30', DATE '2023-01-01', DATE '2023-06-30', 120),
(5, 202, DATE '2024-01-15', DATE '2024-01-15', DATE '2024-10-30', DATE '2024-01-15', DATE '2024-10-30', 200),
(5, 203, DATE '2025-01-01', DATE '2025-01-01', DATE '2025-05-31', DATE '2025-01-01', DATE '2025-05-31', 150),
(5, 204, DATE '2025-06-01', DATE '2025-06-01', DATE '2025-12-31', DATE '2025-06-01', DATE '2025-12-31', 180),
(5, 205, DATE '2026-01-10', DATE '2026-01-10', DATE '2026-03-31', DATE '2026-01-10', DATE '2026-03-31', 90),
(5, 206, DATE '2026-02-01', DATE '2026-02-01', DATE '2026-06-01', DATE '2026-02-01', DATE '2026-06-01', 130),
(6, 201, DATE '2023-02-01', DATE '2023-02-01', DATE '2023-12-31', DATE '2023-02-01', DATE '2023-12-31', 100),
(6, 203, DATE '2025-02-01', DATE '2025-02-01', DATE '2025-11-30', DATE '2025-02-01', DATE '2025-11-30', 110),
(6, 205, DATE '2026-01-10', DATE '2026-01-10', DATE '2026-09-30', DATE '2026-01-10', DATE '2026-09-30', 95),
(7, 202, DATE '2024-03-01', DATE '2024-03-01', DATE '2024-10-30', DATE '2024-03-01', DATE '2024-10-30', 90),
(7, 204, DATE '2025-03-01', DATE '2025-03-01', DATE '2025-12-31', DATE '2025-03-01', DATE '2025-12-31', 115),
(8, 204, DATE '2025-03-01', DATE '2025-03-01', DATE '2025-12-31', DATE '2025-03-01', DATE '2025-12-31', 80),
(9, 204, DATE '2025-03-15', DATE '2025-03-15', DATE '2025-10-31', DATE '2025-03-15', DATE '2025-10-31', 85),
(9, 205, DATE '2026-01-15', DATE '2026-01-15', DATE '2026-09-30', DATE '2026-01-15', DATE '2026-09-30', 70),
(10, 205, DATE '2026-01-20', DATE '2026-01-20', DATE '2026-09-30', DATE '2026-01-20', DATE '2026-09-30', 60),
(13, 203, DATE '2025-01-10', DATE '2025-01-10', DATE '2025-11-30', DATE '2025-01-10', DATE '2025-11-30', 140),
(14, 203, DATE '2025-01-10', DATE '2025-01-10', DATE '2025-11-30', DATE '2025-01-10', DATE '2025-11-30', 130),
(18, 206, DATE '2025-06-01', DATE '2025-06-01', DATE '2026-06-01', DATE '2025-06-01', DATE '2026-06-01', 150),
(20, 207, DATE '2025-02-01', DATE '2025-02-01', DATE '2025-08-15', DATE '2025-02-01', DATE '2025-08-15', 160),
(21, 208, DATE '2025-04-01', DATE '2025-04-01', DATE '2027-04-01', DATE '2025-04-01', DATE '2027-04-01', 220),
(5, 209, DATE '2025-07-01', DATE '2025-07-01', DATE '2026-01-31', DATE '2025-07-01', DATE '2026-01-31', 100),
(6, 210, DATE '2026-02-01', DATE '2026-02-01', DATE '2026-12-31', DATE '2026-02-01', DATE '2026-12-31', 105),
(5, 210, DATE '2026-02-01', DATE '2026-02-01', DATE '2026-12-31', DATE '2026-02-01', DATE '2026-12-31', 110);

-- =========================================================
-- promotions
-- Supports 9 extracted cases that reference `promotions`, including examples such as: Write a query to find the employee(s) who have never received a promotion.; Find employees who have been promoted more than twice.; Find employees who have been promoted more than once..
-- =========================================================
CREATE OR REPLACE TABLE promotions (
    promotion_id INT,
    employee_id INT,
    promotion_date DATE,
    old_salary INT
);

INSERT INTO promotions VALUES
(1, 5, DATE '2024-01-01', 110000),
(2, 5, DATE '2025-01-01', 118000),
(3, 5, DATE '2026-01-01', 123000),
(4, 6, DATE '2025-06-01', 85000),
(5, 9, DATE '2025-12-01', 80000),
(6, 13, DATE '2024-07-01', 90000),
(7, 13, DATE '2025-07-01', 93000);

-- =========================================================
-- promotion_history
-- Supports 1 extracted cases that reference `promotion_history`, including examples such as: Find employees who have been promoted but their salary didn’t increase..
-- =========================================================
CREATE OR REPLACE TABLE promotion_history (
    employee_id INT,
    promotion_date DATE,
    salary_before INT
);

INSERT INTO promotion_history VALUES
(5, DATE '2026-01-01', 123000),
(6, DATE '2025-06-01', 85000),
(9, DATE '2025-12-01', 80000),
(13, DATE '2025-07-01', 93000);

-- =========================================================
-- salary_history
-- Supports 3 extracted cases that reference `salary_history`, including examples such as: Identify employees who haven’t received a salary raise in more than a year.; Find employees with no salary changes in the last 2 years.; Find employees with no corresponding entries in the salary_history table..
-- =========================================================
CREATE OR REPLACE TABLE salary_history (
    employee_id INT,
    raise_date DATE,
    change_date DATE
);

INSERT INTO salary_history VALUES
(5, DATE '2024-01-01', DATE '2024-01-01'),
(5, DATE '2025-01-01', DATE '2025-01-01'),
(5, DATE '2026-01-01', DATE '2026-01-01'),
(6, DATE '2025-06-01', DATE '2025-06-01'),
(9, DATE '2025-12-01', DATE '2025-12-01'),
(13, DATE '2024-07-01', DATE '2024-07-01'),
(13, DATE '2025-07-01', DATE '2025-07-01');

-- =========================================================
-- salaries
-- Supports 2 extracted cases that reference `salaries`, including examples such as: Find the top 3 employees with the highest salary increase over last year.; Find employees whose salaries increased every year..
-- =========================================================
CREATE OR REPLACE TABLE salaries (
    employee_id INT,
    year INT,
    salary INT
);

INSERT INTO salaries VALUES
(5, 2024, 115000),
(5, 2025, 123000),
(5, 2026, 125000),
(6, 2024, 80000),
(6, 2025, 85000),
(6, 2026, 90000),
(9, 2024, 78000),
(9, 2025, 80000),
(9, 2026, 85000),
(13, 2024, 90000),
(13, 2025, 93000),
(13, 2026, 95000),
(17, 2024, 100000),
(17, 2025, 105000),
(17, 2026, 110000);

-- =========================================================
-- employee_department_history
-- Supports 5 extracted cases that reference `employee_department_history`, including examples such as: Find employees who have worked for multiple departments over time.; Find employees who have worked in more than 3 different departments.; Find the number of employees who have worked in more than one department..
-- =========================================================
CREATE OR REPLACE TABLE employee_department_history (
    employee_id INT,
    department_id INT,
    change_date DATE
);

INSERT INTO employee_department_history VALUES
(5, 20, DATE '2023-01-01'),
(5, 30, DATE '2024-06-01'),
(5, 20, DATE '2025-02-01'),
(6, 20, DATE '2015-01-12'),
(9, 40, DATE '2024-10-01'),
(13, 30, DATE '2023-01-15'),
(13, 70, DATE '2025-03-01'),
(13, 30, DATE '2025-10-01'),
(20, 70, DATE '2025-03-03'),
(21, 80, DATE '2024-12-15');

-- =========================================================
-- bonuses
-- Supports 1 extracted cases that reference `bonuses`, including examples such as: Find employees who have never received a bonus..
-- =========================================================
CREATE OR REPLACE TABLE bonuses (
    bonus_id INT,
    employee_id INT,
    bonus_date DATE,
    bonus_amount DECIMAL(10,2)
);

INSERT INTO bonuses VALUES
(1, 5, DATE '2025-12-31', 5000),
(2, 9, DATE '2025-12-31', 2000);

-- =========================================================
-- dependents
-- Supports 2 extracted cases that reference `dependents`, including examples such as: Find employees with the highest number of dependents.; Find employees who do not have dependents..
-- =========================================================
CREATE OR REPLACE TABLE dependents (
    dependent_id INT,
    employee_id INT
);

INSERT INTO dependents VALUES
(1, 5),
(2, 5),
(3, 5),
(4, 9),
(5, 13);

-- =========================================================
-- leaves
-- Supports 2 extracted cases that reference `leaves`, including examples such as: Find employees who have never taken any leave.; Find employees who have not taken any leave in the last 6 months..
-- =========================================================
CREATE OR REPLACE TABLE leaves (
    leave_id INT,
    employee_id INT,
    leave_date DATE
);

INSERT INTO leaves VALUES
(1, 5, DATE '2025-11-10'),
(2, 9, DATE '2026-03-15'),
(3, 13, DATE '2025-08-20');

-- =========================================================
-- bookings
-- Supports 1 extracted cases that reference `bookings`, including examples such as: Identify overlapping date ranges for bookings..
-- =========================================================
CREATE OR REPLACE TABLE bookings (
    booking_id INT,
    start_date DATE,
    end_date DATE
);

INSERT INTO bookings VALUES
(1, DATE '2026-04-01', DATE '2026-04-05'),
(2, DATE '2026-04-04', DATE '2026-04-08'),
(3, DATE '2026-04-10', DATE '2026-04-12'),
(4, DATE '2026-04-20', DATE '2026-04-22');

-- =========================================================
-- user_logins
-- Supports 2 extracted cases that reference `user_logins`, including examples such as: Find the longest consecutive streak of daily logins for each user.; Find the first and last login date for each user..
-- =========================================================
CREATE OR REPLACE TABLE user_logins (
    user_id INT,
    login_date DATE
);

INSERT INTO user_logins VALUES
(101, DATE '2026-04-01'),
(101, DATE '2026-04-02'),
(101, DATE '2026-04-03'),
(101, DATE '2026-04-05'),
(102, DATE '2026-04-01'),
(102, DATE '2026-04-02'),
(102, DATE '2026-04-03'),
(102, DATE '2026-04-04'),
(102, DATE '2026-04-05'),
(103, DATE '2026-04-10'),
(103, DATE '2026-04-12');

-- =========================================================
-- attendance
-- Supports 5 extracted cases that reference `attendance`, including examples such as: Write a query to identify “gaps and islands” in attendance records (consecutive dates present).; Find employees with consecutive workdays.; Find employees with the longest consecutive workdays..
-- =========================================================
CREATE OR REPLACE TABLE attendance (
    employee_id INT,
    attendance_date DATE,
    work_date DATE,
    arrival_time STRING,
    scheduled_start_time STRING
);

INSERT INTO attendance VALUES
(5, DATE '2026-04-01', DATE '2026-04-01', '09:05:00', '09:00:00'),
(5, DATE '2026-04-02', DATE '2026-04-02', '08:55:00', '09:00:00'),
(5, DATE '2026-04-03', DATE '2026-04-03', '09:10:00', '09:00:00'),
(5, DATE '2026-04-04', DATE '2026-04-04', '08:50:00', '09:00:00'),
(6, DATE '2026-04-01', DATE '2026-04-01', '08:45:00', '09:00:00'),
(6, DATE '2026-04-02', DATE '2026-04-02', '08:46:00', '09:00:00'),
(6, DATE '2026-04-03', DATE '2026-04-03', '08:47:00', '09:00:00'),
(7, DATE '2026-04-01', DATE '2026-04-01', '09:15:00', '09:00:00'),
(7, DATE '2026-04-03', DATE '2026-04-03', '09:20:00', '09:00:00'),
(9, DATE '2026-04-01', DATE '2026-04-01', '08:59:00', '09:00:00'),
(9, DATE '2026-04-02', DATE '2026-04-02', '09:30:00', '09:00:00'),
(9, DATE '2026-04-03', DATE '2026-04-03', '09:35:00', '09:00:00'),
(13, DATE '2026-04-01', DATE '2026-04-01', '08:50:00', '09:00:00'),
(13, DATE '2026-04-02', DATE '2026-04-02', '08:50:00', '09:00:00');

-- =========================================================
-- work_logs
-- Supports 2 extracted cases that reference `work_logs`, including examples such as: Find employees who have worked more than 40 hours in a week.; Get total working hours per employee per week..
-- =========================================================
CREATE OR REPLACE TABLE work_logs (
    employee_id INT,
    work_date DATE,
    hours_worked INT
);

INSERT INTO work_logs VALUES
(5, DATE '2026-04-07', 9),
(5, DATE '2026-04-08', 9),
(5, DATE '2026-04-09', 9),
(5, DATE '2026-04-10', 9),
(5, DATE '2026-04-11', 8),
(6, DATE '2026-04-07', 8),
(6, DATE '2026-04-08', 8),
(6, DATE '2026-04-09', 8),
(9, DATE '2026-04-07', 10),
(9, DATE '2026-04-08', 10),
(9, DATE '2026-04-09', 10),
(9, DATE '2026-04-10', 10),
(9, DATE '2026-04-11', 5),
(13, DATE '2026-04-07', 7),
(13, DATE '2026-04-08', 7);

-- =========================================================
-- work_log
-- Supports 1 extracted cases that reference `work_log`, including examples such as: Find employees with consecutive workdays..
-- =========================================================
CREATE OR REPLACE TABLE work_log (
    employee_id INT,
    work_date DATE,
    hours_worked INT
);

INSERT INTO work_log VALUES
(5, DATE '2026-04-07', 9),
(5, DATE '2026-04-08', 9),
(5, DATE '2026-04-09', 9),
(5, DATE '2026-04-10', 9),
(5, DATE '2026-04-11', 8),
(6, DATE '2026-04-07', 8),
(6, DATE '2026-04-08', 8),
(6, DATE '2026-04-09', 8),
(9, DATE '2026-04-07', 10),
(9, DATE '2026-04-08', 10),
(9, DATE '2026-04-09', 10),
(9, DATE '2026-04-10', 10),
(9, DATE '2026-04-11', 5),
(13, DATE '2026-04-07', 7),
(13, DATE '2026-04-08', 7);

-- =========================================================
-- shifts
-- Supports 1 extracted cases that reference `shifts`, including examples such as: Write a query to identify overlapping shifts for employees..
-- =========================================================
CREATE OR REPLACE TABLE shifts (
    shift_id INT,
    employee_id INT,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

INSERT INTO shifts VALUES
(1, 5, TIMESTAMP '2026-04-01 08:00:00', TIMESTAMP '2026-04-01 12:00:00'),
(2, 5, TIMESTAMP '2026-04-01 11:00:00', TIMESTAMP '2026-04-01 15:00:00'),
(3, 6, TIMESTAMP '2026-04-02 09:00:00', TIMESTAMP '2026-04-02 17:00:00'),
(4, 6, TIMESTAMP '2026-04-03 09:00:00', TIMESTAMP '2026-04-03 17:00:00');

-- =========================================================
-- invoices
-- Supports 1 extracted cases that reference `invoices`, including examples such as: Write a query to detect gaps in a sequence of invoice numbers..
-- =========================================================
CREATE OR REPLACE TABLE invoices (
    invoice_number INT
);

INSERT INTO invoices VALUES
(1001),
(1002),
(1004),
(1005),
(1008);

-- =========================================================
-- product_prices
-- Supports 1 extracted cases that reference `product_prices`, including examples such as: Find products that have seen a price increase in the last 6 months..
-- =========================================================
CREATE OR REPLACE TABLE product_prices (
    product_id STRING,
    price DECIMAL(10,2),
    effective_date DATE
);

INSERT INTO product_prices VALUES
('A', 1100, DATE '2025-09-01'),
('A', 1200, DATE '2026-02-01'),
('B', 850, DATE '2025-10-01'),
('B', 900, DATE '2026-01-15'),
('X', 180, DATE '2025-11-01'),
('X', 200, DATE '2026-03-01');

-- =========================================================
-- product_reviews
-- Supports 3 extracted cases that reference `product_reviews`, including examples such as: Find the product with the highest average rating.; Find products with the lowest average rating per category.; Find products that have been ordered but never reviewed..
-- =========================================================
CREATE OR REPLACE TABLE product_reviews (
    review_id INT,
    product_id STRING,
    category_id INT,
    rating DECIMAL(3,2)
);

INSERT INTO product_reviews VALUES
(1, 'A', 1, 4.8),
(2, 'A', 1, 4.6),
(3, 'B', 1, 4.4),
(4, 'C', 1, 4.9),
(5, 'D', 2, 4.2),
(6, 'E', 2, 4.1),
(7, 'F', 3, 3.8),
(8, 'X', 1, 4.0);

-- =========================================================
-- support_tickets
-- Supports 1 extracted cases that reference `support_tickets`, including examples such as: Calculate the average time to close tickets per support agent..
-- =========================================================
CREATE OR REPLACE TABLE support_tickets (
    ticket_id INT,
    support_agent_id INT,
    opened_date DATE,
    closed_date DATE
);

INSERT INTO support_tickets VALUES
(1, 19, DATE '2026-03-01', DATE '2026-03-03'),
(2, 19, DATE '2026-03-05', DATE '2026-03-06'),
(3, 19, DATE '2026-03-10', DATE '2026-03-15'),
(4, 18, DATE '2026-03-02', DATE '2026-03-08');

-- =========================================================
-- timesheets
-- Supports 1 extracted cases that reference `timesheets`, including examples such as: Find employees who have not submitted their timesheets in the last month..
-- =========================================================
CREATE OR REPLACE TABLE timesheets (
    timesheet_id INT,
    employee_id INT,
    timesheet_date DATE
);

INSERT INTO timesheets VALUES
(1, 5, DATE '2026-04-10'),
(2, 6, DATE '2026-04-12'),
(3, 9, DATE '2026-04-13'),
(4, 13, DATE '2026-02-15');

-- =========================================================
-- holidays
-- Supports 1 extracted cases that reference `holidays`, including examples such as: Find products with sales only during holiday seasons..
-- =========================================================
CREATE OR REPLACE TABLE holidays (
    holiday_date DATE,
    holiday_name STRING
);

INSERT INTO holidays VALUES
(DATE '2025-12-25', 'Christmas'),
(DATE '2026-01-01', 'New Year'),
(DATE '2026-04-01', 'Spring Festival');

-- =========================================================
-- returns
-- Supports 2 extracted cases that reference `returns`, including examples such as: Find products that have never been returned.; Find customers who made orders but never returned a product..
-- =========================================================
CREATE OR REPLACE TABLE returns (
    return_id INT,
    order_id INT,
    product_id STRING,
    return_date DATE
);

INSERT INTO returns VALUES
(1, 1004, 'X', DATE '2025-10-20'),
(2, 1014, 'X', DATE '2026-04-10');

-- =========================================================
-- shipments
-- Supports 2 extracted cases that reference `shipments`, including examples such as: Find customers with orders but no shipments.; Find the average delivery time by shipping method..
-- =========================================================
CREATE OR REPLACE TABLE shipments (
    shipment_id INT,
    order_id INT,
    order_date DATE,
    shipping_method STRING,
    shipping_date DATE,
    delivery_date DATE
);

INSERT INTO shipments VALUES
(1, 1001, DATE '2025-01-05', 'Air', DATE '2025-01-06', DATE '2025-01-09'),
(2, 1002, DATE '2025-01-20', 'Ground', DATE '2025-01-21', DATE '2025-01-25'),
(3, 1003, DATE '2025-02-10', 'Air', DATE '2025-02-11', DATE '2025-02-13'),
(4, 1004, DATE '2025-10-10', 'Ground', DATE '2025-10-11', DATE '2025-10-14'),
(5, 1005, DATE '2025-11-01', 'Ground', DATE '2025-11-02', DATE '2025-11-04'),
(6, 1006, DATE '2025-12-15', 'Air', DATE '2025-12-16', DATE '2025-12-18'),
(7, 1007, DATE '2026-01-02', 'Ground', DATE '2026-01-03', DATE '2026-01-05'),
(8, 1008, DATE '2026-01-25', 'Ground', DATE '2026-01-26', DATE '2026-01-30'),
(9, 1009, DATE '2026-02-05', 'Air', DATE '2026-02-06', DATE '2026-02-08'),
(10, 1010, DATE '2026-02-06', 'Air', DATE '2026-02-07', DATE '2026-02-09'),
(11, 1011, DATE '2026-02-20', 'Ground', DATE '2026-02-21', DATE '2026-02-24'),
(12, 1012, DATE '2026-03-25', 'Freight', DATE '2026-03-26', DATE '2026-03-30'),
(13, 1013, DATE '2026-03-26', 'Air', DATE '2026-03-27', DATE '2026-03-29'),
(14, 1014, DATE '2026-04-01', 'Ground', DATE '2026-04-02', DATE '2026-04-05'),
(15, 1015, DATE '2026-04-02', 'Ground', DATE '2026-04-03', DATE '2026-04-06');

-- =========================================================
-- suppliers
-- Supports 1 extracted cases that reference `suppliers`, including examples such as: Identify suppliers who delivered to all regions..
-- =========================================================
CREATE OR REPLACE TABLE suppliers (
    supplier_id INT,
    supplier_name STRING,
    region STRING
);

INSERT INTO suppliers VALUES
(1, 'SupplyOne', 'North'),
(2, 'GlobalGoods', 'South'),
(3, 'EastSource', 'East'),
(4, 'WestBridge', 'West');

-- =========================================================
-- deliveries
-- Supports 1 extracted cases that reference `deliveries`, including examples such as: Identify suppliers who delivered to all regions..
-- =========================================================
CREATE OR REPLACE TABLE deliveries (
    delivery_id INT,
    supplier_id INT,
    delivery_region STRING
);

INSERT INTO deliveries VALUES
(1, 1, 'North'),
(2, 1, 'South'),
(3, 1, 'East'),
(4, 1, 'West'),
(5, 2, 'North'),
(6, 2, 'South'),
(7, 3, 'East'),
(8, 4, 'West');

-- =========================================================
-- sales_deals
-- Supports 1 extracted cases that reference `sales_deals`, including examples such as: Find the top 3 sales reps by number of deals closed this quarter..
-- =========================================================
CREATE OR REPLACE TABLE sales_deals (
    deal_id INT,
    sales_rep_id INT,
    deal_close_date DATE
);

INSERT INTO sales_deals VALUES
(1, 9, DATE '2026-04-02'),
(2, 9, DATE '2026-04-05'),
(3, 9, DATE '2026-04-07'),
(4, 10, DATE '2026-04-03'),
(5, 10, DATE '2026-04-08');

-- =========================================================
-- weather_data
-- Supports 1 extracted cases that reference `weather_data`, including examples such as: Find the day with the largest difference between maximum and minimum temperature..
-- =========================================================
CREATE OR REPLACE TABLE weather_data (
    weather_date DATE,
    temperature INT
);

INSERT INTO weather_data VALUES
(DATE '2026-04-01', 15),
(DATE '2026-04-01', 24),
(DATE '2026-04-02', 12),
(DATE '2026-04-02', 28),
(DATE '2026-04-03', 18),
(DATE '2026-04-03', 26);

-- =========================================================
-- job_openings
-- Supports 1 extracted cases that reference `job_openings`, including examples such as: List departments with no open positions..
-- =========================================================
CREATE OR REPLACE TABLE job_openings (
    job_id INT,
    department_id INT,
    status STRING
);

INSERT INTO job_openings VALUES
(1, 20, 'Open'),
(2, 20, 'Closed'),
(3, 40, 'Open'),
(4, 60, 'Closed');

-- =========================================================
-- order_items
-- Supports 4 extracted cases that reference `order_items`, including examples such as: Find orders where the total quantity exceeds 100 units.; Find the most common product combinations in orders (pairs).; Find customers with orders where no product quantity is less than 5..
-- =========================================================
CREATE OR REPLACE TABLE order_items (
    order_id INT,
    product_id STRING,
    quantity INT
);

INSERT INTO order_items VALUES
(1006, 'A', 60),
(1006, 'B', 50),
(1012, 'H', 4),
(1013, 'A', 1),
(1013, 'D', 5),
(1014, 'X', 1),
(1015, 'B', 1),
(1015, 'D', 10),
(1019, 'A', 1),
(1019, 'B', 1),
(1020, 'B', 1),
(1021, 'A', 80),
(1021, 'C', 30),
(1022, 'B', 5),
(1023, 'A', 6),
(1024, 'A', 7),
(1025, 'A', 8);

-- =========================================================
-- table1
-- Supports 1 extracted cases that reference `table1`, including examples such as: Compare two tables and find rows with differences in any column (all columns)..
-- =========================================================
CREATE OR REPLACE TABLE table1 (
    id INT,
    col1 STRING,
    col2 INT,
    col3 STRING
);

INSERT INTO table1 VALUES
(1, 'x', 10, 'same'),
(2, 'y', 20, 'left_only'),
(3, 'z', 30, 'diff');

-- =========================================================
-- table2
-- Supports 1 extracted cases that reference `table2`, including examples such as: Compare two tables and find rows with differences in any column (all columns)..
-- =========================================================
CREATE OR REPLACE TABLE table2 (
    id INT,
    col1 STRING,
    col2 INT,
    col3 STRING
);

INSERT INTO table2 VALUES
(1, 'x', 10, 'same'),
(3, 'z', 35, 'diff'),
(4, 'w', 40, 'right_only');

-- =========================================================
-- table_name
-- Supports 2 extracted cases that reference `table_name`, including examples such as: Write a query to find duplicate rows based on multiple columns.; Write a query to identify duplicate rows (all columns) in a table..
-- =========================================================
CREATE OR REPLACE TABLE table_name (
    column1 STRING,
    column2 STRING,
    col1 STRING,
    col2 STRING,
    col3 STRING
);

INSERT INTO table_name VALUES
('dupA', 'dupB', 'x', 'y', 'z'),
('dupA', 'dupB', 'x', 'y', 'z'),
('dupA', 'other', 'x', 'y', 'w'),
('one', 'two', 'm', 'n', 'o'),
('one', 'two', 'm', 'n', 'o');

-- =========================================================
-- sales_data
-- Supports 1 extracted cases that reference `sales_data`, including examples such as: Write a query to unpivot quarterly sales data into rows..
-- =========================================================
CREATE OR REPLACE TABLE sales_data (
    product_id STRING,
    Q1_sales INT,
    Q2_sales INT,
    Q3_sales INT,
    Q4_sales INT
);

INSERT INTO sales_data VALUES
('A', 5000, 5200, 5400, 5600),
('B', 4000, 3900, 4100, 4200),
('C', 3000, 3200, 3100, 3300);