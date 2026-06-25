-- View all students
SELECT * FROM students;

-- View all courses
SELECT * FROM courses;

-- View enrollments
SELECT * FROM enrollments;

-- Demonstrate relationships
SELECT 
    s.name AS student, 
    c.title AS course 
FROM enrollments e
JOIN students e
    ON e.student_id = s.id
JOIN courses c
    ON e.course_id = c.id
ORDER BY s.name;