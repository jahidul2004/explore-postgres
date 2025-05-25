SELECT * FROM students WHERE
    country = 'USA' OR country='Canada';

-- IN 
SELECT * FROM students WHERE
    country IN('USA', 'Canada');

-- NOT IN
SELECT * FROM students WHERE
    country NOT IN('USA', 'Canada');

-- BETWEEN
SELECT * FROM students WHERE
    age BETWEEN 19 AND 21;
SELECT * FROM students WHERE
    dob BETWEEN '2000-01-01' AND '2004-01-01';

-- LIKE
SELECT * FROM students
    WHERE first_name LIKE 'J%';

SELECT * FROM students
    WHERE first_name LIKE '%am';

SELECT * FROM students
    WHERE first_name LIKE '__m%';

SELECT * FROM students
    WHERE first_name LIKE '__m%___';

--ILIKe Same as Like but this is case insensitive

SELECT * FROM students
    WHERE first_name ILIKE 's%';