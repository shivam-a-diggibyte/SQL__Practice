
-- string functions are use to perfom text manipulation
SELECT
    EmployeeName,
    LEN(EmployeeName) AS NameLength -- to get number of characters in the string
FROM EmployeeSales;
GO

SELECT UPPER(EmployeeName) -- to convert to upper case
FROM EmployeeSales;
GO

SELECT LOWER(EmployeeName) -- to convert to lower case
FROM EmployeeSales;
GO

SELECT CONCAT(EmployeeName, ' - ', Department) -- to combine two columns
FROM EmployeeSales;
GO

SELECT LEFT(EmployeeName, 3) -- to get characters from left side
FROM EmployeeSales;
GO

SELECT RIGHT(EmployeeName, 3) -- to get characters from right side
FROM EmployeeSales;
GO

SELECT TRIM(EmployeeName) -- to remove any leading or trailing spaces
FROM EmployeeSales;
GO