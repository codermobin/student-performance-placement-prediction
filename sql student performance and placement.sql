CREATE DATABASE student_performance;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    department VARCHAR(50),
    semester INT,
    attendance FLOAT,
    cgpa FLOAT,
    communication_skill INT,
    technical_skill INT,
    internship VARCHAR(10),
    projects INT,
    aptitude_score INT,
    placement_status VARCHAR(20)
);USE student_performance;



#Total Students
SELECT COUNT(*) AS total_students
FROM students;


# Average CGPA by Department
SELECT department,
AVG(cgpa) AS avg_cgpa
FROM students
GROUP BY department;


# Placement Count
SELECT placement_status,
COUNT(*) AS total
FROM students
GROUP BY placement_status;



# Top Performing Students
SELECT name, cgpa
FROM students
ORDER BY cgpa DESC
LIMIT 5;




# Students With Low Attendance
SELECT name, attendance
FROM students
WHERE attendance < 75;