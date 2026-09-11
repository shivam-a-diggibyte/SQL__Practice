
-- create a table
CREATE TABLE EmployeeData(
EmployeeID INT,
EmployeeName CHAR(20),
Email VARCHAR(20)
);
GO 

--	insert values 
INSERT INTO EmployeeData VALUES
(101, 'Rahul'        ,'rahul@gmail.com' ),
(102        , 'Priya'        , 'priya@gmail.com'),
(101        , 'Rahul'        , 'rahul@gmail.com'),
(103        , 'Amit'         , 'amit@gmail.com');

-- finding duplicates
SELECT
    EmployeeID,
    EmployeeName,
    Email,
    COUNT(*) AS DuplicateCount
FROM EmployeeData
GROUP BY
    EmployeeID,
    EmployeeName,
    Email
HAVING COUNT(*) > 1;
