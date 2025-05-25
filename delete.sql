--Data deletion
DELETE FROM students
    WHERE course = '';

DELETE FROM students
WHERE age<19;

DELETE FROM students
    WHERE grade = 'B' AND country = 'USA'

SELECT * FROM students;