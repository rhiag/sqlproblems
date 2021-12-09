/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

set @lines =21;
select repeat('* ', @lines:= @lines - 1)
from information_schema.tables;