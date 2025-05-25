-- Create table student
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    grade CHAR(2) NOT NULL,
    course VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    blood_group VARCHAR(5),
    country VARCHAR(50) NOT NULL
)

INSERT INTO students(first_name, last_name, age, grade, email, dob, blood_group, country) VALUES(
    'Islam Atikul',
    'Munsi',
    24,
    'B',
    'atikul@example.com',
    '05/15/1999',
    'AB-',
    'Canada'
)


--Select hole table
SELECT * from students;

--Select only name column
SELECT first_name, last_name FROM students;

-- Select only email
SELECT email FROM students;

-- Column Alias Change Column name only run time
SELECT email as student_email FROM students;

-- Sort data runtime only (Ascending or Descending)
SELECT * from students ORDER BY first_name DESC;
SELECT * FROM students ORDER BY age ASC;


-- Find total country (DISTINCT)
SELECT DISTINCT country FROM students;

-- DISTINCT(Blood Group)
SELECT DISTINCT blood_group FROM students;

-- Select only Bangladeshi student (Filtering)
SELECT * FROM students
    WHERE country = 'Bangladesh' AND
    age>19 AND
blood_group = 'A+';

--Or operator
SELECT * FROM students
    WHERE (country = 'Canada' OR country = 'USA') AND age <= 25;

-- Operator
-- and AND
-- or OR
-- not <> !
-- equal =
-- greater than or equal >=
-- less than or equal <=
-- not equal <>= !=