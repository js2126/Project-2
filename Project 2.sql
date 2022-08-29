CREATE TABLE population(
	Rank_ VARCHAR(3),
    CCA3 CHAR(3),
    Country VARCHAR(255),
    Capital VARCHAR(255),
    Continent VARCHAR(255),
    2022_Population INT(255),
	2020_Population	INT(255),
    2015_Population	 INT(255),
    2010_Population	INT(255),
    2000_Population	INT(255),
    1990_Population	INT(255),
    1980_Population	INT(255),
    1970_Population	INT(255),
    Area_km_2	INT(255),
    Density_km_2	INT(255),
    Growth_rate	DECIMAL(3,2),
    World_Population_Percentage INT(255)
);

SELECT * FROM population;

#count the number of countries with above average population growth by continent from 2020 to 2022
SELECT Continent, COUNT(Country) AS number_of_countries, Growth_rate FROM population
WHERE Growth_rate > (SELECT AVG(Growth_rate) FROM population)
GROUP BY Continent;



