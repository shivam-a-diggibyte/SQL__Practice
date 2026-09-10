
SELECT -- anti join return records from the first table where a matching record does NOT exist in the second table.
    e.EmployeeID,
    e.EmployeeName,
    e.DepartmentID
FROM Employees AS e
WHERE NOT EXISTS
(
    SELECT 1
    FROM Departments AS d
    WHERE d.DepartmentID = e.DepartmentID
);