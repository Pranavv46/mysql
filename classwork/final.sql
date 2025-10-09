CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name_ VARCHAR(100),
    department VARCHAR(100),
    leave_days INT
    );

    CREATE TABLE exam(
    id INT PRIMARY KEY,
    employee_id INT,
    exam_status VARCHAR(100),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
    );

    INSERT INTO employees (employee_id, name_, department, leave_days) VALUES
    (1, 'Raju', 'sales', 1),
    (2, 'Sangeetha', 'sales', 3),
    (3, 'Vinay', 'operations', 8),
    (4, 'Abey', 'packing', 2),
    (5, 'Thomas', 'packing', 1),
    (6, 'Muneer', 'operations', 7),
    (7, 'Aparna', 'sales', 3),
    (8, 'Abid', 'operations', 9),
    (9, 'Fathima', 'sales', 11),
    (10, 'Varghese', 'operations', 14);

    INSERT INTO exam (id, employee_id, exam_status) VALUES
    (1, 2, 'pass'),
    (2, 5, 'fail'),
    (3, 1, 'fail'),
    (4, 8, 'pass'),
    (5, 3, 'pass'),
    (6, 1, 'pass'),
    (7, 6, 'fail'),
    (8, 9, 'pass'),
    (9, 10, 'pass'); 

select name_ from employees 
WHERE department='sales' and leave_days>5;

SELECT COUNT(*) FROM employees
WHERE department ='operations';

SELECT department,COUNT(*) FROM employees
GROUP BY department;

SELECT department, SUM(leave_days) AS total_leave
FROM employees
GROUP BY department;

SELECT name_ FROM employees
JOIN exam
ON employees.employee_id=exam.employee_id
WHERE exam_status='pass';   

SELECT name_
FROM employees
WHERE employee_id NOT IN (SELECT employee_id FROM exam);
