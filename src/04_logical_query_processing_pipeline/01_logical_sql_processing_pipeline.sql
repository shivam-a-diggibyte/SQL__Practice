
CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Salary INT CHECK (Salary > 0),
    DepartmentID INT  
);

INSERT INTO Employee
VALUES
(101, 'Shreya', 23, 40000, 3);

INSERT INTO Employee
VALUES
(102, 'Shivam', 22, 30000, 1);

INSERT INTO Employee
VALUES
(105, 'Niket', 23, 50000, 2);

INSERT INTO Employee
VALUES
(104, 'Surya', 23, 40000, 3);

SELECT * FROM Employee;

SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employee
WHERE Salary > 20000
GROUP BY DepartmentID
HAVING COUNT(*) > 1
ORDER BY EmployeeCount DESC;