
-- RANK() function, assigns numbering using values 
SELECT
    EmployeeName,
    SaleAmount,
    RANK() OVER
    (
        ORDER BY SaleAmount DESC
    ) AS SalesRank
FROM EmployeeSales;

-- RANK() function using PARTITION BY
SELECT
    EmployeeName,
    SaleAmount,
    RANK() OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleAmount DESC
    ) AS SalesRank
FROM EmployeeSales;