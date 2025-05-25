--Limit
SELECT * FROM students LIMIT 5;

SELECT * FROM students
    WHERE country = 'Bangladesh' LIMIT 2;

--Offset

SELECT * FROM students LIMIT 2 OFFSET 2*0;
SELECT * FROM students LIMIT 2 OFFSET 2*2;

