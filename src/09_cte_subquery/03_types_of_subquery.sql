
SELECT * FROM EmployeeSales;

-- scalar subquery
SELECT * FROM EmployeeSales
WHERE SaleAmount >
(
    SELECT AVG(SaleAmount)
    FROM EmployeeSales
);

-- multi-row subquery
SELECT * FROM EmployeeSales
WHERE EmployeeID IN
(
    SELECT EmployeeID
    FROM EmployeeSales
    WHERE Department = 'IT'
);

--correlated subquery
SELECT e1.* FROM EmployeeSales AS e1
WHERE SaleAmount >
(
    SELECT AVG(e2.SaleAmount)
    FROM EmployeeSales AS e2
    WHERE e2.EmployeeID = e1.EmployeeID
);