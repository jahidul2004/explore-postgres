--Update

UPDATE students
    SET course = 'Default Course' WHERE course is NULL

UPDATE students
    set course = 'BSC CSE',
    age = 20,
    email = 'tusisumiya@gmail.com'
    WHERE student_id = 2;

SELECT * FROM students;