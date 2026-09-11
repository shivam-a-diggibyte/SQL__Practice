
--lag() function, allows you to access value fromprevious row
SELECT
    EmployeeName,
    SaleDate,
    SaleAmount,
    LAG(SaleAmount) OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleDate
    ) AS PreviousSale
FROM EmployeeSales;
GO 

-- Example
SELECT
    EmployeeName,
    SaleDate,
    SaleAmount,
    LAG(SaleAmount) OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleDate
    ) AS PreviousSale,
    SaleAmount -
    LAG(SaleAmount) OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleDate
    ) AS Difference
FROM EmployeeSales;