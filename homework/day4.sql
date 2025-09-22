CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100),
    course VARCHAR(100),
    fees_paid DECIMAL(10,2),
    status_ VARCHAR(50)
);

Insert into students (student_id, student_name, course, fees_paid, status_) values
(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active'
);

select * from students
where fees_paid > 5000;

update students
set status_ ='Active'
where course = 'Web Development';

update students
set fees_paid = fees_paid + 1000
where course = 'Data Science';

update students
set status_ = 'Inactive',
set fees_paid = fees_paid - 500
where student_id = 3;

delete from students
where student_id = 3;

delete from students
where status = 'Inactive';
