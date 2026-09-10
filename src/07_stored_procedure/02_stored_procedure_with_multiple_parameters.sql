
-- stored procedure with multiple parameters
CREATE PROCEDURE GetEmployeesBySalary
    @MinimumSalary INT
AS
BEGIN
    SELECT
        EmployeeID,
        EmployeeName,
        Salary
    FROM Employees
    WHERE Salary >= @MinimumSalary;
END;

-- now executing the stored procedure
EXEC GetEmployeesBySalary
    @MinimumSalary = 50000;