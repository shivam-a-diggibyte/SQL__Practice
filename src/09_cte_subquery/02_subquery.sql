
-- Find employees whose sale amount is greater than the average sale
SELECT *
FROM EmployeeSales
WHERE SaleAmount >
(
    SELECT AVG(SaleAmount)
    FROM EmployeeSales
);