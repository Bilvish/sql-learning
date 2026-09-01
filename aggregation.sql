-- =========================================
-- SQL AGGREGATION REVISION
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
-- 1. COUNT()
-- =========================================

SELECT COUNT(*) AS total_employees
FROM employees;


-- =========================================
-- 2. SUM()
-- =========================================

SELECT SUM(salary) AS total_salary
FROM employees;


-- =========================================
-- 3. AVG()
-- =========================================

SELECT AVG(salary) AS average_salary
FROM employees;


-- =========================================
-- 4. MIN()
-- =========================================

SELECT MIN(salary) AS lowest_salary
FROM employees;


-- =========================================
-- 5. MAX()
-- =========================================

SELECT MAX(salary) AS highest_salary
FROM employees;


-- =========================================
-- 6. Multiple Aggregation Functions
-- =========================================

SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees;


-- =========================================
-- 7. GROUP BY + COUNT()
-- =========================================

SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- =========================================
-- 8. GROUP BY + AVG()
-- =========================================

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- =========================================
-- 9. GROUP BY + SUM()
-- =========================================

SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- =========================================
-- 10. GROUP BY + MIN() + MAX()
-- =========================================

SELECT
    department,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;


-- =========================================
-- 11. HAVING
-- Departments having average salary > 50000
-- =========================================

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;


-- =========================================
-- 12. WHERE + GROUP BY + HAVING
-- =========================================

SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
WHERE salary >= 40000
GROUP BY department
HAVING COUNT(*) >= 2;


-- =========================================
-- 13. GROUP BY city
-- =========================================

SELECT
    city,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
GROUP BY city;


-- =========================================
-- 14. Aggregation + ORDER BY
-- =========================================

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;