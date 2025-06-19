create database excercise;
use excercise;
CREATE TABLE Department (
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(30)
);
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(30),
    DeptId INT,
    FOREIGN KEY (DeptId)
        REFERENCES Department (DeptId)
);
CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(30),
    EmpID INT,
    FOREIGN KEY (EmpID)
        REFERENCES Employee (EmpID)
);

insert into Department values(1,'HR'),
(2,'IT'),
(3,'FINANCE'),
(4,'MARKETING');
select * FROM DEPARTMENT;
insert into Employee values(101,'Alice',1),
(102,'Bob',2),
(103,'Charlie',2),
(104,'David',3);

insert into Project values(201,'Alpha',101),
(202,'Beta',102),
(203,'Gamma',103),
(204,'Delta',104);

select * from employee;
select * from project;
 
/*List employees who are working on more than one project*/
SELECT e.EmpID, e.EmpName, COUNT(p.ProjectID) AS ProjectCount
FROM Employee e
JOIN Project p ON e.EmpID = p.EmpID
GROUP BY e.EmpID, e.EmpName
HAVING count(p.ProjectID) > 1;

/*Show the number of projects handled by each department.*/
SELECT d.DeptName, p.ProjectName
FROM Employee e
JOIN Department d ON e.DeptId = d.DeptId
JOIN Project p ON e.EmpID = p.EmpID;

/*Show the number of employees working in each department.*/
SELECT d.DeptName, COUNT(e.EmpID) AS EmployeeCount
FROM Department d
LEFT JOIN Employee e ON d.DeptId = e.DeptId
GROUP BY d.DeptName;

/*List all employees and their assigned project names (if any), along with department names.*/
SELECT 
    e.EmpID,
    e.EmpName,
    d.DeptName,
    p.ProjectName
FROM Employee e
JOIN Department d ON e.DeptId = d.DeptId
LEFT JOIN Project p ON e.EmpID = p.EmpID;

/*Question: Show all projects and the employee and department names if they exist.*/
SELECT 
    p.ProjectID,
    p.ProjectName,
    e.EmpName,
    d.DeptName
FROM Project p
LEFT JOIN Employee e ON p.EmpID = e.EmpID
LEFT JOIN Department d ON e.DeptId = d.DeptId;

/*uestion: Show project name, employee name, and department name for each valid project.*/
SELECT 
    p.ProjectName,
    e.EmpName,
    d.DeptName
FROM Project p
INNER JOIN Employee e ON p.EmpID = e.EmpID
INNER JOIN Department d ON e.DeptId = d.DeptId;
