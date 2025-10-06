CREATE table students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100
    );

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100);

INSERT INTO students (student_id, name, email) VALUES
(1, 'John Doe','babu');

INSERT INTO courses (course_id, course_name) VALUES
(101, 'Database Systems'),
(102, 'Operating Systems');

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);