
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees AS e
RIGHT JOIN Departments AS d
    ON e.DepartmentID = d.DepartmentID;