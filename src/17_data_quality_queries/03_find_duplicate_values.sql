
-- check duplicate values
SELECT
    EmployeeID,
    COUNT(*) AS RecordCount
FROM Employees
GROUP BY EmployeeID
HAVING COUNT(*) > 1;