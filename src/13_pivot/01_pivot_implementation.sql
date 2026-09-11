
CREATE TABLE EmployeeStatus
(
    EmployeeID INT,
    Department VARCHAR(50),
    Status VARCHAR(20)
);
GO

INSERT INTO EmployeeStatus
VALUES
(101, 'IT', 'Active'),
(102, 'IT', 'Active'),
(103, 'IT', 'Inactive'),
(104, 'HR', 'Active'),
(105, 'HR', 'Inactive'),
(106, 'HR', 'Active');
GO

-- Pivot Implementation, it changes data from rows to columns
SELECT
    Department,
    [Active],
    [Inactive]
FROM
(
    SELECT Department, Status
    FROM EmployeeStatus
) AS SourceData
PIVOT
(
    COUNT(Status)
    FOR Status IN ([Active], [Inactive])
) AS PivotTable;