CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100),
    student_age INT,
    department VARCHAR(100),
    grade_ INT
);

Insert into students (student_id, student_name, student_age, department, grade_) values
(1, 'Alice', 20, 'Computer Science', 95),
(2, 'Bob', 22, 'Mathematics', 20),
(3, 'Charlie', 21, 'Physics', 55),
(4, 'David', 23, 'Chemistry', 90),
(5, 'Eve', 20, 'Biology', 75
);

select * from students
where student_age >20;

select * from students
where department = 'Computer Science' or department = 'physics';

select * from students
where grade_ = 90 ;

select * from students
where grade_ =70 0r grade_ = 90;
