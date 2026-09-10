
SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employees AS e
LEFT JOIN Departments AS d
    ON e.DepartmentID = d.DepartmentID;