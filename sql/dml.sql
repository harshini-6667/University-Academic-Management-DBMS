INSERT INTO Department VALUES
(1, 'Computer Science', 'Dr. Rao', 'Block A'),
(2, 'Artificial Intelligence', 'Dr. Kumar', 'Block B');

INSERT INTO Student VALUES
(101, 'Harshini', 'harshini@gmail.com', '9876543210', 'Female', '2006-05-10', 2),
(102, 'Priya', 'priya@gmail.com', '9876543211', 'Female', '2006-08-15', 1);

INSERT INTO Faculty VALUES
(201, 'Dr. Ravi', 'ravi@university.com', '9876543220', 'Professor', 2),
(202, 'Dr. Anil', 'anil@university.com', '9876543221', 'Assistant Professor', 1);

INSERT INTO Course VALUES
(301, 'Database Management Systems', 4, '6 Months', 3, 2, 201),
(302, 'Python Programming', 3, '6 Months', 3, 1, 202);

INSERT INTO Enrollment VALUES
(401, 101, 301, '2026-08-01', 'A'),
(402, 102, 302, '2026-08-02', 'B');

INSERT INTO Attendance VALUES
(501, 101, 301, '2026-09-01', 'Present'),
(502, 102, 302, '2026-09-01', 'Absent');

INSERT INTO Examination VALUES
(601, 301, '2026-09-15', 'Mid Exam', 85),
(602, 302, '2026-09-16', 'Mid Exam', 78);  
