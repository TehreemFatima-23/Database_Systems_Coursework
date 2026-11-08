CREATE DATABASE OFFICE;
USE OFFICE;

CREATE TABLE Departments(
	DeptID INT PRIMARY KEY,
	DeptName VARCHAR(50)
);

INSERT INTO Departments
VALUES(1, 'HR'),
	  (2, 'IT'),
	  (3, 'Management');

CREATE TABLE Employees(
	EmpName VARCHAR(50),
	EmpID INT PRIMARY KEY,
	DeptID INT,
	FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Employees
VALUES ('Sara', 101, 1),
	   ('Ali', 102, 2),
	   ('Mahrukh', 103, 3);

SELECT * FROM Departments;
SELECT * FROM Employees;