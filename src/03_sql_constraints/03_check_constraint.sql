

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Age INT CHECK (Age >= 18) -- "CHECK" applies a condition
    );

INSERT INTO Employees
VALUES (101, 'Rahul', 25); -- this is a valid entry

INSERT INTO Employees
VALUES (102, 'Shivam', 12); -- this is an invalid entry