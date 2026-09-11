
-- to find employees whose sales are above average using CTEs
WITH AverageSales AS
(
    SELECT AVG(SaleAmount) AS AvgSale
    FROM EmployeeSales
) -- CTE exist for that particular execution script

SELECT * -- using the CTE created above 
FROM EmployeeSales
WHERE SaleAmount > (SELECT AvgSale FROM AverageSales); 