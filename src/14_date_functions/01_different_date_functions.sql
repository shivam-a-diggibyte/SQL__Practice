
-- DATE functions, are used to perform operations on dates.
SELECT GETDATE(); -- to get current date and time 
GO

SELECT CAST(GETDATE() AS DATE); -- if you only want date 
GO

SELECT DATEADD(DAY, 7, '2026-09-11'); -- to add time to date
GO 
SELECT DATEADD(MONTH, 1, '2026-09-11');
GO

SELECT DATEDIFF(DAY, '2026-09-01', '2026-09-11'); -- find difference between dates
GO

SELECT
    SaleDate,
    YEAR(SaleDate) AS SaleYear -- to extract year from date 
FROM EmployeeSales;
GO

SELECT SaleDate,
    FORMAT(SaleDate, 'dd-MMM-yyyy') AS Formatted -- formats a date as text in a specified pattern.
FROM EmployeeSales;
GO