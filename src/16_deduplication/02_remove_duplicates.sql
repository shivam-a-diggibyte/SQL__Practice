
SELECT * FROM EmployeeData;
GO

-- find duplicates
SELECT
    EmployeeID,
    EmployeeName,
    Email,
    COUNT(*) AS RecordCount
FROM EmployeeData
GROUP BY
    EmployeeID,
    EmployeeName,
    Email
HAVING COUNT(*) > 1;
GO

-- provide sequence number to the duplicate value
WITH DuplicateRecords AS
(
    SELECT
        EmployeeID,
        EmployeeName,
        Email,
        ROW_NUMBER() OVER
        (
            PARTITION BY EmployeeID, EmployeeName, Email
            ORDER BY EmployeeID
        ) AS RowNum
    FROM EmployeeData
)
SELECT *
FROM DuplicateRecords;
GO

-- remove the duplicate value 
WITH DuplicateRecords AS
(
    SELECT
        EmployeeID,
        EmployeeName,
        Email,
        ROW_NUMBER() OVER
        (
            PARTITION BY EmployeeID, EmployeeName, Email
            ORDER BY EmployeeID
        ) AS RowNum
    FROM EmployeeData
)
DELETE FROM DuplicateRecords
WHERE RowNum > 1;
GO
