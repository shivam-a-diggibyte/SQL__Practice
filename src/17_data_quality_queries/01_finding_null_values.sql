-- finding null values 
SELECT *
FROM Employees
WHERE DepartmentID IS NULL;
GO

-- counting nullvalues
SELECT
    COUNT(*) AS NullDepartmentCount
FROM Employees
WHERE DepartmentID IS NULL;