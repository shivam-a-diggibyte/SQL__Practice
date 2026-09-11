
-- runnning total means "Add the current value to everything that came before it".
SELECT
    EmployeeName,
    SaleDate,
    SaleAmount,
    SUM(SaleAmount) OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleDate
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS RunningTotal
FROM EmployeeSales;