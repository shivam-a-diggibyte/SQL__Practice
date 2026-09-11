
-- check refernetial integriry problems/missing relationships
-- Suppose Employees.DepartmentID should match Departments.DepartmentID.
SELECT e.*
FROM Employees AS e
LEFT JOIN Departments AS d
    ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL
AND e.DepartmentID IS NOT NULL;