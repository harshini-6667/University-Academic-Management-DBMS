CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL UNIQUE,
    HOD_Name VARCHAR(100) NOT NULL,
    Office_Location VARCHAR(100)
);

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Gender VARCHAR(10),
    Date_of_Birth DATE,
    Department_ID INT NOT NULL,
    FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID)
);

CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Designation VARCHAR(50),
    Department_ID INT NOT NULL,
    FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INT CHECK (Credits BETWEEN 1 AND 6),
    Duration VARCHAR(30),
    Semester INT CHECK (Semester BETWEEN 1 AND 8),
    Department_ID INT NOT NULL,
    Faculty_ID INT NOT NULL,
    FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID),
    FOREIGN KEY (Faculty_ID)
        REFERENCES Faculty(Faculty_ID)
);

CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Enrollment_Date DATE NOT NULL,
    Grade VARCHAR(2),
    FOREIGN KEY (Student_ID)
        REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID)
        REFERENCES Course(Course_ID),
    UNIQUE (Student_ID, Course_ID)
);

CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Attendance_Date DATE NOT NULL,
    Status VARCHAR(10) DEFAULT 'Present',
    FOREIGN KEY (Student_ID)
        REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID)
        REFERENCES Course(Course_ID),
    CHECK (Status IN ('Present', 'Absent'))
);

CREATE TABLE Examination (
    Exam_ID INT PRIMARY KEY,
    Course_ID INT NOT NULL,
    Exam_Date DATE NOT NULL,
    Exam_Type VARCHAR(30) NOT NULL,
    Marks INT CHECK (Marks BETWEEN 0 AND 100),
    FOREIGN KEY (Course_ID)
        REFERENCES Course(Course_ID)
);
    
