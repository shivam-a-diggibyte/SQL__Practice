
SELECT * -- using "AND" keyword with "WHERE" clause
FROM Employees
WHERE Department = 'IT'
AND Salary > 50000;

SELECT * -- using "OR" keyword with "WHERE" clause
FROM Employees
WHERE Department = 'IT'
OR Department = 'HR';