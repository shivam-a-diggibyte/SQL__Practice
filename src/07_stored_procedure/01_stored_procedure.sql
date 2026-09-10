-- A stored procedure is a named collection of SQL statements stored in the database.
CREATE PROCEDURE GetEmployeesByDepartment
    @DepartmentID INT
AS
BEGIN
    SELECT
        EmployeeID,
        EmployeeName,
        Age,
        Salary
    FROM Employees
    WHERE DepartmentID = @DepartmentID;
END;

-- now executing the stored procedure
EXEC GetEmployeesByDepartment
    @DepartmentID = 1;