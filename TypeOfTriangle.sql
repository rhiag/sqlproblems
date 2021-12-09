/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

-- Check if sum of sides > third side --> yes then triangle else not triangle then check other conditions
select 
case when (A+B) >C and (B+C)>A and (A+B)> B 
    then
        case when A=B and B=C then "Equilateral"
            when A=B or B=C or C=A then "Isosceles"
            else "Scalene"
        end
    else "Not A Triangle"
end
from Triangles