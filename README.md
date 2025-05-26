
# 🛢 PostgreSQL Practice Scripts – Complete Guide

This repository contains essential SQL practice examples covering various core topics such as `SELECT`, `UPDATE`, `DELETE`, logical operators, aggregate functions, and more. Each section below includes detailed explanations and real-world examples written for easy copy-paste and testing.

---

## 1. SELECT Statement

The `SELECT` statement is used to retrieve data from a table.

```sql
-- Select all columns from the employees table
SELECT * FROM employees;

-- Select specific columns
SELECT name, department FROM employees;

-- Select with alias
SELECT name AS employee_name, salary AS monthly_salary FROM employees;
```

---

## 2. UPDATE Statement

The `UPDATE` statement modifies existing records in a table.

```sql
-- Increase salary of employee with id 101
UPDATE employees
SET salary = 40000
WHERE id = 101;

-- Change department for all employees from 'Sales' to 'Marketing'
UPDATE employees
SET department = 'Marketing'
WHERE department = 'Sales';
```

---

## 3. DELETE Statement

The `DELETE` statement removes records from a table.

```sql
-- Delete a specific employee
DELETE FROM employees
WHERE id = 101;

-- Delete all employees from 'Intern' department
DELETE FROM employees
WHERE department = 'Intern';

-- Delete all records from a table (use with caution!)
DELETE FROM employees;
```

---

## 4. ALTER Statement

The `ALTER` statement is used to change the structure of a table.

```sql
-- Add a new column
ALTER TABLE employees
ADD birthdate DATE;

-- Modify column data type
ALTER TABLE employees
MODIFY name VARCHAR(100);

-- Rename a column
ALTER TABLE employees
RENAME COLUMN name TO full_name;

-- Drop a column
ALTER TABLE employees
DROP COLUMN birthdate;
```

---

## 5. Aggregate Functions

Aggregate functions perform calculations on multiple rows.

```sql
-- Total salary of all employees
SELECT SUM(salary) AS total_salary FROM employees;

-- Average salary
SELECT AVG(salary) AS average_salary FROM employees;

-- Count total employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Maximum salary
SELECT MAX(salary) AS max_salary FROM employees;

-- Minimum salary
SELECT MIN(salary) AS min_salary FROM employees;
```

---

## 6. Logical Operators (AND, OR, NOT)

Logical operators combine multiple conditions in WHERE clauses.

```sql
-- Employees in 'HR' with salary > 30000
SELECT * FROM employees
WHERE department = 'HR' AND salary > 30000;

-- Employees in 'IT' or 'Finance'
SELECT * FROM employees
WHERE department = 'IT' OR department = 'Finance';

-- Employees not in 'Sales'
SELECT * FROM employees
WHERE NOT department = 'Sales';
```

---

## 7. Date Functions

Date functions are used to query based on date/time values.

```sql
-- Employees who joined in 2023
SELECT * FROM employees
WHERE YEAR(join_date) = 2023;

-- Employees who joined in the last 30 days
SELECT * FROM employees
WHERE join_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- Current system date
SELECT CURDATE();

-- Current system timestamp
SELECT NOW();
```

---

## 8. LIMIT and OFFSET

Used to limit the number of rows returned.

```sql
-- Return the first 5 employees
SELECT * FROM employees
LIMIT 5;

-- Skip the first 5 and return next 5
SELECT * FROM employees
LIMIT 5 OFFSET 5;

-- Pagination example: Page 3 with 10 items per page
SELECT * FROM employees
ORDER BY id
LIMIT 10 OFFSET 20;
```

---

## 9. IN, BETWEEN, LIKE Operators

These are used to filter data in more flexible ways.

```sql
-- Employees in specific departments
SELECT * FROM employees
WHERE department IN ('HR', 'IT', 'Finance');

-- Employees with salary between 30000 and 50000
SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 50000;

-- Name starts with 'J'
SELECT * FROM employees
WHERE name LIKE 'J%';

-- Name ends with 'son'
SELECT * FROM employees
WHERE name LIKE '%son';

-- Name contains 'a'
SELECT * FROM employees
WHERE name LIKE '%a%';
```

---

## 📌 Sample Table Schema

All examples above assume the existence of an `employees` table with the following schema:

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    join_date DATE
);
```

---

## ⚠️ Important Notes

- Always test `DELETE` and `UPDATE` queries in a safe environment before running on real data.
- Use `SELECT` queries first to preview what will be affected.
- This guide is ideal for beginners practicing SQL for job interviews, courses, or personal development.

---

## ✅ Author

Created by: **Jahidul Islam Jihad**  
SQL Learning Repository for Beginners and Intermediate Users
