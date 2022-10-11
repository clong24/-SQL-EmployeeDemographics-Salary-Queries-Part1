To add employee demographics data, we need to create a table with attributes(ID,Firstname,Lastname,Age,Gender) in the database. We also set each column with a unique data type.

--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

To add employee salary data, we need to create a table with attributes(ID,Title,Salary) in the database. We also set each column with a unique data type.

--CREATE TABLE EmployesSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int)

After tables are created, we add data into the table in the order of first step: we have EmployeeID, FirstName, LastName, Age and Gender representatively. 
--INSERT INTO EmployeeDemographics VALUES

--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

We add EmployeeID, Jobtitle and Salary data into the table.

--INSERT INTO EmployesSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

If we want to show the whole table of EmployeeDemographic:

--SELECT * 
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

If we only want to show the first 5 rows in the EmployeeDemographic table, we use "TOP" function, and followed by 5 *.

--SELECT TOP 5 *
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

If we only want to show employee's full name:

--SELECT FirstName, LastName 
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

If we want to show unique value in the column of EmployeeID, we use DISTINCT function. As we have 9 rows, if the result of this query shows 9 IDs, this means there is no dupucates/null, and every employee has their own ID.

--SELECT DISTINCT(EmployeeID)
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

IF we want to show what are the genders among all employees:

--SELECT DISTINCT(Gender)
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

If we want to show the number of rows in LastName column:

--SELECT COUNT(LastName)
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

From the last step, the result is under " NO COLUMN NAME" as it's derived information. If we want to give it a name we use AS function:

--SELECT COUNT(LastName) AS LastNameCount
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

If we want to know the maximun income among all employees, we use MAX function.

--SELECT MAX(Salary) 
--FROM [SQL Tutorial].[dbo].[EmployesSalary]

If we want to know the mininum income among all employees, we use MIN function.

--SELECT MIN(Salary)
--FROM [SQL Tutorial].[dbo].[EmployesSalary]

If we want to know the average income amoing all employees, we use AVG function.

--SELECT AVG(Salary)
--FROM [SQL Tutorial].[dbo].[EmployesSalary]

If we want to know the average age of empolyees, we use AVG function, and follow by Age column.

--SELECT AVG(Age)
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]



