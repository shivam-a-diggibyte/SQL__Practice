
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

INSERT INTO Departments
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Salary INT CHECK (Salary > 0),
    DepartmentID INT,

    FOREIGN KEY (DepartmentID)   -- this creates relationship between tables
        REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees
VALUES
(101, 'Rahul', 25, 50000, 1); -- it will work because '1' is present in the linked table

