-- =====================================================
-- SQL CLAUSE PRACTICE
-- Topics:
-- SELECT, FROM, WHERE, DISTINCT,
-- GROUP BY, HAVING, ORDER BY, LIMIT
-- =====================================================


-- =====================================================
-- 1. CREATE TABLE
-- =====================================================

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30),
    salary INTEGER,
    age INTEGER,
    city VARCHAR(30)
);


-- =====================================================
-- 2. INSERT DATA
-- =====================================================

INSERT INTO employees (id, name, department, salary, age, city)
VALUES
(1, 'Rahul', 'IT', 45000, 22, 'Delhi'),
(2, 'Aman', 'HR', 35000, 24, 'Mumbai'),
(3, 'Priya', 'IT', 55000, 21, 'Delhi'),
(4, 'Neha', 'Finance', 60000, 26, 'Pune'),
(5, 'Arjun', 'IT', 50000, 23, 'Mumbai'),
(6, 'Simran', 'HR', 40000, 25, 'Delhi'),
(7, 'Karan', 'Finance', 65000, 27, 'Pune'),
(8, 'Riya', 'IT', 45000, 22, 'Delhi');


-- =====================================================
-- 3. SELECT + FROM
-- =====================================================

-- Q1. Display all employees
SELECT *
FROM employees;


-- Q2. Display only name and salary
SELECT name, salary
FROM employees;


-- Q3. Display name, department and city
SELECT name, department, city
FROM employees;


-- =====================================================
-- 4. WHERE
-- =====================================================

-- Q4. Employees with salary greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;


-- Q5. Employees working in IT
SELECT *
FROM employees
WHERE department = 'IT';


-- Q6. Employees from Delhi
SELECT *
FROM employees
WHERE city = 'Delhi';


-- Q7. Employees whose age is 22
SELECT *
FROM employees
WHERE age = 22;


-- Q8. Delhi employees earning more than 40000
SELECT *
FROM employees
WHERE city = 'Delhi'
AND salary > 40000;


-- =====================================================
-- 5. DISTINCT
-- =====================================================

-- Q9. Display unique cities
SELECT DISTINCT city
FROM employees;


-- Q10. Display unique departments
SELECT DISTINCT department
FROM employees;


-- Q11. Count unique cities
SELECT COUNT(DISTINCT city)
FROM employees;


-- =====================================================
-- 6. ORDER BY
-- =====================================================

-- Q12. Salary: lowest to highest
SELECT *
FROM employees
ORDER BY salary ASC;


-- Q13. Salary: highest to lowest
SELECT *
FROM employees
ORDER BY salary DESC;


-- Q14. Age: youngest to oldest
SELECT *
FROM employees
ORDER BY age ASC;


-- Q15. Names alphabetically
SELECT *
FROM employees
ORDER BY name ASC;


-- =====================================================
-- 7. LIMIT
-- =====================================================

-- Q16. Highest-paid employee
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;


-- Q17. Top 3 highest-paid employees
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- Q18. Two youngest employees
SELECT *
FROM employees
ORDER BY age ASC
LIMIT 2;


-- =====================================================
-- 8. GROUP BY + COUNT
-- =====================================================

-- Q19. Number of employees in each department
SELECT department, COUNT(*)
FROM employees
GROUP BY department;


-- Q20. Number of employees in each city
SELECT city, COUNT(*)
FROM employees
GROUP BY city;


-- =====================================================
-- 9. GROUP BY + AVG
-- =====================================================

-- Q21. Average salary of each department
SELECT department, AVG(salary)
FROM employees
GROUP BY department;


-- Q22. Average salary of each city
SELECT city, AVG(salary)
FROM employees
GROUP BY city;


-- =====================================================
-- 10. GROUP BY + MAX
-- =====================================================

-- Q23. Maximum salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;


-- =====================================================
-- 11. GROUP BY + MIN
-- =====================================================

-- Q24. Minimum salary in each department
SELECT department, MIN(salary)
FROM employees
GROUP BY department;


-- =====================================================
-- 12. HAVING
-- =====================================================

-- Q25. Departments having more than 2 employees
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;


-- Q26. Departments with average salary > 45000
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;


-- Q27. Departments whose maximum salary > 60000
SELECT department, MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 60000;


-- =====================================================
-- 13. COMBINATION PRACTICE
-- =====================================================

-- Q28. Top 2 departments by average salary
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 2;


-- Q29. Cities with average salary > 40000,
-- sorted by average salary
SELECT city, AVG(salary) AS average_salary
FROM employees
GROUP BY city
HAVING AVG(salary) > 40000
ORDER BY average_salary DESC;


-- Q30. Top 2 cities based on employee count
SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city
ORDER BY employee_count DESC
LIMIT 2;


-- =====================================================
-- 14. FINAL CHALLENGE
-- =====================================================

-- Find the top 2 departments based on average salary,
-- but only consider departments having at least 2 employees.

SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC
LIMIT 2;


-- =====================================================
-- CLEANUP
-- =====================================================

-- Run this ONLY when you want to delete the practice table.
-- DROP TABLE employees;