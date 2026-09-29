-- ============================================
-- UNIVERSITY ACADEMIC MANAGEMENT
-- SQL QUERIES
-- ============================================

-- 1. Display all students
SELECT * FROM Student;


-- 2. Display all departments
SELECT * FROM Department;


-- 3. Display all courses
SELECT * FROM Course;


-- 4. Student and Department details using JOIN
SELECT
    s.Student_ID,
    s.Name AS Student_Name,
    d.Dept_Name
FROM Student s
JOIN Department d
ON s.Dept_ID = d.Dept_ID;


-- 5. Student Enrollment details using JOIN
SELECT
    s.Name AS Student_Name,
    c.Course_Name,
    e.Semester
FROM Enrollment e
JOIN Student s
ON e.Student_ID = s.Student_ID
JOIN Course c
ON e.Course_ID = c.Course_ID;


-- 6. Count students enrolled in each course
SELECT
    Course_ID,
    COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Course_ID;


-- 7. Courses having two or more students
SELECT
    Course_ID,
    COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Course_ID
HAVING COUNT(Student_ID) >= 2;


-- 8. Display courses with faculty names
SELECT
    c.Course_Name,
    f.Faculty_Name
FROM Course c
JOIN Faculty f
ON c.Faculty_ID = f.Faculty_ID;


-- 9. Display students from Computer Science
SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Department
    WHERE Dept_Name = 'Computer Science'
);


-- 10. Update student phone number
UPDATE Student
SET Phone = '9999999999'
WHERE Student_ID = 101;


-- 11. Display updated student
SELECT *
FROM Student
WHERE Student_ID = 101;
