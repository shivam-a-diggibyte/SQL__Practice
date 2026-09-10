 
 SELECT
    Employees.EmployeeID,
    Employees.EmployeeName,
    Departments.DepartmentName
FROM Employees
INNER JOIN Departments
    ON Employees.DepartmentID = Departments.DepartmentID;