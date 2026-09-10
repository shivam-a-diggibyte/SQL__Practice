
SELECT  -- semi join return records from the first table when a matching record exists in the second table.
    e.EmployeeID,
    e.EmployeeName,
    e.DepartmentID
FROM Employees AS e
WHERE EXISTS
(
    SELECT 1
    FROM Departments AS d
    WHERE d.DepartmentID = e.DepartmentID
);