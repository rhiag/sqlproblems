/*
Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 

Write an SQL query to find the employees who earn more than their managers.

Return the result table in any order.*/


--self join in order to compare manager salary with emp salary
select E1.name  as Employee from Employee E1,Employee E2
where E1.managerid = E2.id 
and E1.salary > E2.salary