/*
https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark.
 Ketty doesn't want the NAMES of those students who received a grade lower than 8. 
 The report must be in descending order by grade -- i.e. higher grades are entered first.
  If there is more than one student with the same grade (8-10) assigned to them, order those particular 
  students by their name alphabetically. 
Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.
*/

-- Switch case for name on condition of grade being 8 and above
-- inner join between tables
--join on student marks lying between grades min and grades max

SELECT
CASE WHEN G.Grade >7 THEN S.Name ELSE NULL END,
G.Grade ,
S.Marks
FROM Students S INNER JOIN Grades G
ON S.Marks >= G.Min_Mark AND S.Marks <= G.Max_Mark
ORDER BY Grade DESC,Name,Marks;