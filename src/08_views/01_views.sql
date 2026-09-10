
-- A view is a saved SELECT query that can be queried like a table.
CREATE VIEW EmployeeDetails -- to create a view
AS
SELECT
    e.EmployeeID,
    e.EmployeeName,
    e.Salary,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID;


-- now to see the view 
SELECT *
FROM EmployeeDetails;

-- you can filter the view also 
SELECT *
FROM EmployeeDetails
WHERE Salary > 50000;