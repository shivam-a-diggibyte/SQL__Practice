
-- LEAD() Function, it compares the current value to the next/future value 
SELECT
    EmployeeName,
    SaleDate,
    SaleAmount,
    LEAD(SaleAmount) OVER
    (
        PARTITION BY EmployeeID
        ORDER BY SaleDate
    ) AS NextSale
FROM EmployeeSales;