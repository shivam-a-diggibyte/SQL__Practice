
-- QUALIFY is used to filter the result of a window function.
-- However, SQL Server does not currently support a QUALIFY clause.
-- Instead, use a CTE or subquery.

WITH RankedSales AS
(
    SELECT
        EmployeeID,
        EmployeeName,
        SaleDate,
        SaleAmount,
        ROW_NUMBER() OVER
        (
            PARTITION BY EmployeeID
            ORDER BY SaleAmount DESC
        ) AS RowNum
    FROM EmployeeSales
)
SELECT *
FROM RankedSales
WHERE RowNum = 1;