
USE SQL_Training;
GO

SELECT DB_NAME();

CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary INT
);