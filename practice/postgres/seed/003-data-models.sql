INSERT INTO students (name)
VALUES
    ('Alice'),
    ('Bob');

INSERT INTO courses (title)
VALUES
    ('Database Design'),
    ('SQL Fundamentals');

INSERT INTO enrollments (student_id, course_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 1);