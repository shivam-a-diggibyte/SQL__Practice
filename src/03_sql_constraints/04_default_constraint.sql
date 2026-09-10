
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Status VARCHAR(20) DEFAULT 'Active' -- "DEFAULT" constraint automaticaaly supplies value when not provided
);

INSERT INTO Employees
(EmployeeID, EmployeeName)
VALUES
(101, 'Rahul'); -- default status will be assigned to it 