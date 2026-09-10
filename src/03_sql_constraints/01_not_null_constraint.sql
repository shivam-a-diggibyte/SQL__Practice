
CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL -- "NOT NULL" constraint - Makes a column mandatory.
);

INSERT INTO Students(StudentID)
VALUES (1); -- Thus this is an invalid entry of data 