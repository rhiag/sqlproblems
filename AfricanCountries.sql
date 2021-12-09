/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

https://www.hackerrank.com/challenges/african-cities/problem*/

select City.name from City,Country
where City.CountryCode = Country.Code and Continent ="Africa"



 
