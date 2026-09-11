USE SQL_Training;
GO

-- ROW_NUMBER(), it assigns a unique sequential number to each row
SELECT
    EmployeeName,
    SaleAmount,
    ROW_NUMBER() OVER
    (
        ORDER BY SaleAmount DESC
    ) AS RowNum
FROM EmployeeSales;

-- ROW_NUMBER(), using PARTITION BY
SELECT
    EmployeeName,
    SaleDate,
    SaleAmount,
    ROW_NUMBER() OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleDate
    ) AS SaleNumber
FROM EmployeeSales;