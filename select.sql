-- Active: 1747565100035@@127.0.0.1@5432@first_table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students (first_name,last_name, age,grade,course, email,dob, blood_group ,country) 
VALUES 
("Alice", "Johnson", 21, "A", "Computer Science", "alice.johnson@example.com", "2003-02-15", "O+", "USA"),
("Brian", "Smith", 23, "B", "Mathematics", "brian.smith@example.com", "2001-08-22", "A-", "Canada"),
("Chloe", "Nguyen", 20, "A", "Biology", "chloe.nguyen@example.com", "2004-01-10", "B+", "Australia"),
("David", "Lee", 22, "C", "Chemistry", "david.lee@example.com", "2002-05-30", "O-", "UK"),
("Ella", "Martinez", 24, "B", "Engineering", "ella.martinez@example.com", "2000-09-12", "AB+", "Spain")


