--Not operator

SELECT * FROM students WHERE country != 'USA';


-- Null handling (is, is not)
SELECT * FROM students
    WHERE course is not NULL;

-- Default value set in null
SELECT COALESCE(course, 'Not Provided') as user_course, blood_group FROM students;