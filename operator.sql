-- =========================================
-- SQL OPERATORS REVISION PRACTICE
-- =========================================

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    age INT,
    city VARCHAR(30)
);

INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 45000, 22, 'Delhi'),
(2, 'Aman', 'HR', 35000, 25, 'Noida'),
(3, 'Priya', 'IT', 60000, 28, 'Delhi'),
(4, 'Neha', 'Finance', 55000, 30, 'Ghaziabad'),
(5, 'Rohit', 'IT', 40000, 24, 'Noida'),
(6, 'Sneha', 'HR', 50000, 27, 'Delhi'),
(7, 'Karan', 'Finance', 70000, 32, 'Delhi'),
(8, 'Anjali', 'IT', 65000, 26, 'Ghaziabad');


-- =========================================
-- 1. Comparison Operators
-- =, >, <, >=, <=, <>
-- =========================================

SELECT *
FROM employees
WHERE salary > 50000;


-- =========================================
-- 2. Logical Operators
-- AND, OR, NOT
-- =========================================

SELECT *
FROM employees
WHERE department = 'IT'
AND salary >= 45000;


SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR';


SELECT *
FROM employees
WHERE NOT city = 'Delhi';


-- =========================================
-- 3. BETWEEN Operator
-- =========================================

SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 60000;


-- =========================================
-- 4. IN Operator
-- =========================================

SELECT *
FROM employees
WHERE city IN ('Delhi', 'Noida');


-- =========================================
-- 5. NOT IN Operator
-- =========================================

SELECT *
FROM employees
WHERE department NOT IN ('HR', 'Finance');


-- =========================================
-- 6. LIKE Operator
-- % = any number of characters
-- _ = exactly one character
-- =========================================

SELECT *
FROM employees
WHERE name LIKE 'A%';


SELECT *
FROM employees
WHERE name LIKE '_a%';


-- =========================================
-- 7. NOT LIKE
-- =========================================

SELECT *
FROM employees
WHERE name NOT LIKE 'A%';


-- =========================================
-- 8. NULL Operators
-- =========================================

SELECT *
FROM employees
WHERE city IS NULL;


SELECT *
FROM employees
WHERE city IS NOT NULL;


-- =========================================
-- 9. Arithmetic Operators
-- +, -, *, /
-- =========================================

SELECT 
    name,
    salary,
    salary + 5000 AS increased_salary,
    salary - 5000 AS reduced_salary,
    salary * 12 AS annual_salary,
    salary / 12 AS monthly_salary
FROM employees;


-- =========================================
-- 10. Combining Multiple Operators
-- =========================================

SELECT *
FROM employees
WHERE (department = 'IT' OR department = 'Finance')
AND salary >= 50000
AND age BETWEEN 25 AND 32
AND city NOT IN ('Noida');


-- =========================================
-- 11. DISTINCT + Operators
-- =========================================

SELECT DISTINCT city
FROM employees
WHERE salary >= 45000;


-- =========================================
-- 12. ORDER BY + LIMIT
-- =========================================

SELECT *
FROM employees
WHERE salary > 40000
ORDER BY salary DESC
LIMIT 3;