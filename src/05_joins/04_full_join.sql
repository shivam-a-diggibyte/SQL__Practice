
SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employees AS e
FULL JOIN Departments AS d
    ON e.DepartmentID = d.DepartmentID;