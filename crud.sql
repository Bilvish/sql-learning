CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INTEGER CHECK (age >= 18),
    city VARCHAR(30) DEFAULT 'Delhi'
);

-- CREATE
INSERT INTO students
VALUES (1, 'Rahul', 'rahul@gmail.com', 20, 'Meerut');

-- READ
SELECT * FROM students;

-- UPDATE
UPDATE students
SET city = 'Delhi'
WHERE student_id = 1;

-- DELETE
DELETE FROM students
WHERE student_id = 1;