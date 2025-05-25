--Limit
SELECT * FROM students LIMIT 5;

SELECT * FROM students
    WHERE country = 'Bangladesh' LIMIT 2;

--Offset

SELECT * FROM students LIMIT 5 OFFSET 2;