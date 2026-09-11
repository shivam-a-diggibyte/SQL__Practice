USE SQL_Training
GO

CREATE TABLE EmployeeSales
(
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    SaleDate DATE,
    SaleAmount DECIMAL(10,2)
);

INSERT INTO EmployeeSales
(SaleID, EmployeeID, EmployeeName, Department, SaleDate, SaleAmount)
VALUES
(1, 101, 'Rahul', 'IT', '2026-09-01', 5000),
(2, 102, 'Priya', 'HR', '2026-09-01', 3000),
(3, 101, 'Rahul', 'IT', '2026-09-02', 7000),
(4, 103, 'Amit', 'IT', '2026-09-02', 7000),
(5, 102, 'Priya', 'HR', '2026-09-03', 4000),
(6, 101, 'Rahul', 'IT', '2026-09-03', 2000),
(7, 103, 'Amit', 'IT', '2026-09-04', 5000),
(8, 104, 'Sneha', 'Finance', '2026-09-04', 6000),
(9, 102, 'Priya', 'HR', '2026-09-05', 3000),
(10, 104, 'Sneha', 'Finance', '2026-09-05', 4000);

SELECT * FROM EmployeeSales;



