
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Sales');

SELECT *
FROM Departments;

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Age INT,
    Salary INT,
    DepartmentID INT
);

INSERT INTO Employees
(EmployeeID, EmployeeName, Age, Salary, DepartmentID)
VALUES
(101, 'Rahul', 25, 50000, 1),
(102, 'Priya', 28, 45000, 2),
(103, 'Amit', 24, 55000, 1),
(104, 'Sneha', 30, 60000, 3),
(105, 'Vijay', 26, 52000, NULL),
(106, 'Neha', 27, 48000, 6);

SELECT *
FROM Employees;


