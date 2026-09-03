-- ==========================================
-- SQL STRING FUNCTIONS - COMPLETE REVISION
-- PostgreSQL
-- ==========================================

-- 1. CREATE TABLE
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50)
);


-- 2. INSERT SAMPLE DATA
INSERT INTO employees VALUES
(1, '  RAHUL SHARMA  ', 'IT', 'Delhi'),
(2, 'priya singh', 'HR', 'Mumbai'),
(3, 'Amit Kumar', 'Finance', 'Noida'),
(4, 'NEHA GUPTA', 'IT', 'Delhi'),
(5, '  rohit verma', 'Sales', 'Ghaziabad');


-- ==========================================
-- BASIC STRING FUNCTIONS
-- ==========================================

-- LENGTH()
SELECT name, LENGTH(name) AS name_length
FROM employees;


-- LOWER()
SELECT name, LOWER(name) AS lowercase_name
FROM employees;


-- UPPER()
SELECT name, UPPER(name) AS uppercase_name
FROM employees;


-- INITCAP()
SELECT name, INITCAP(name) AS proper_name
FROM employees;


-- TRIM()
SELECT name, TRIM(name) AS trimmed_name
FROM employees;


-- LTRIM()
SELECT name, LTRIM(name) AS left_trimmed
FROM employees;


-- RTRIM()
SELECT name, RTRIM(name) AS right_trimmed
FROM employees;


-- ==========================================
-- EXTRACTING STRING
-- ==========================================

-- LEFT()
SELECT name, LEFT(TRIM(name), 3) AS first_3_characters
FROM employees;


-- RIGHT()
SELECT name, RIGHT(TRIM(name), 3) AS last_3_characters
FROM employees;


-- SUBSTRING()
SELECT name,
       SUBSTRING(TRIM(name), 1, 4) AS first_4_characters
FROM employees;


-- ==========================================
-- CONCATENATION
-- ==========================================

-- CONCAT()
SELECT CONCAT(INITCAP(TRIM(name)), ' - ', city) AS employee_info
FROM employees;


-- || operator
SELECT INITCAP(TRIM(name)) || ' works in ' || department AS employee_info
FROM employees;


-- ==========================================
-- REPLACE
-- ==========================================

SELECT city,
       REPLACE(city, 'Delhi', 'New Delhi') AS new_city
FROM employees;


-- ==========================================
-- POSITION
-- ==========================================

SELECT name,
       POSITION('a' IN LOWER(name)) AS position_of_a
FROM employees;


-- ==========================================
-- REVERSE
-- ==========================================

SELECT name,
       REVERSE(TRIM(name)) AS reversed_name
FROM employees;


-- ==========================================
-- LPAD / RPAD
-- ==========================================

SELECT id,
       LPAD(id::TEXT, 5, '0') AS formatted_id
FROM employees;


SELECT id,
       RPAD(id::TEXT, 5, '0') AS formatted_id
FROM employees;


-- ==========================================
-- PATTERN MATCHING
-- ==========================================

-- Starts with A
SELECT *
FROM employees
WHERE name ILIKE 'A%';


-- Ends with A
SELECT *
FROM employees
WHERE name ILIKE '%a';


-- Contains "ra"
SELECT *
FROM employees
WHERE name ILIKE '%ra%';


-- Exactly 5 characters
SELECT *
FROM employees
WHERE TRIM(name) LIKE '_____';


-- ==========================================
-- COMPLETE DATA CLEANING
-- ==========================================

SELECT
    id,
    name AS raw_name,
    TRIM(name) AS trimmed_name,
    LOWER(TRIM(name)) AS lowercase_name,
    UPPER(TRIM(name)) AS uppercase_name,
    INITCAP(LOWER(TRIM(name))) AS clean_name,
    LENGTH(TRIM(name)) AS name_length,
    LEFT(TRIM(name), 3) AS first_3,
    RIGHT(TRIM(name), 3) AS last_3,
    REVERSE(TRIM(name)) AS reversed_name
FROM employees;