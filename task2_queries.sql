CREATE DATABASE tasks1;
USE tasks1;
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(100),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

-- Insert records (with and without NULL values)
INSERT INTO Employees (ID, Name, Age, Department, Salary, JoiningDate)
VALUES (1, 'Alice', 28, 'HR', 35000.00, '2022-03-01');

INSERT INTO Employees (ID, Name, Age, Department, Salary, JoiningDate)
VALUES (2, 'Bob', NULL, 'Finance', NULL, '2022-06-15');

INSERT INTO Employees (ID, Name, Age)
VALUES (3, 'Charlie', 32); -- Department, Salary, JoiningDate will be NULL

INSERT INTO Employees (ID, Name, Age, Department)
VALUES (4, 'David', 30, 'IT');

-- Update queries
UPDATE Employees SET Salary = 40000 WHERE ID = 1 AND Department = 'HR';
UPDATE Employees SET Department = 'IT' WHERE ID = 3 AND Name = 'Charlie';
UPDATE Employees SET Age = 29 WHERE ID = 4 AND Name = 'David';


-- Delete query
DELETE FROM Employees WHERE ID = 2;

